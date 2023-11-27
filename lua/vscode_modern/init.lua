local M = {}

--- @class Config
--- @field cursorline boolean
--- @field transparent_background boolean
--- @field nvim_tree_darker boolean
--- @field undercurl boolean
--- @field italic_keyword boolean
--- @field custom_dark_background string | nil
--- @field custom_light_background string | nil
M.config = {
    cursorline = false,
    transparent_background = false,
    nvim_tree_darker = false,
    undercurl = true,
    italic_keyword = false,
    custom_dark_background = nil,
    custom_light_background = nil,
}

local compile_path = vim.fn.stdpath 'cache' .. '/vscode_modern'
local path_sep = jit and (jit.os == 'Windows' and '\\' or '/')
    or package.config:sub(1, 1)
local filenames_compiled_colorschemes = { 'dark', 'light' }

--- @overload fun(config: Config)
function M.setup(config)
    M.config = vim.tbl_deep_extend('force', M.config, config or {})
end

function M.load()
    for _, value in ipairs(filenames_compiled_colorschemes) do
        local compiled_path = compile_path .. path_sep .. value

        local f = loadfile(compiled_path)
        if not f then
            local palette = require 'vscode_modern.palette'
            local theme =
                require('vscode_modern.themes')[value](palette, M.config)
            M.compile(M.config, theme, value)
        end
    end

    local compiled_path = compile_path .. path_sep .. vim.o.background

    local f = assert(loadfile(compiled_path), 'Could not load cache')
    f()
end

local function inspect(t)
    local list = {}
    for k, v in pairs(t) do
        local tv = type(v)
        if tv == 'string' then
            table.insert(list, string.format([[%s = "%s"]], k, v))
        elseif tv == 'table' then
            table.insert(list, string.format([[%s = %s]], k, inspect(v)))
        else
            table.insert(list, string.format([[%s = %s]], k, tostring(v)))
        end
    end
    return string.format([[{ %s }]], table.concat(list, ', '))
end

--- @overload fun(config: Config, theme: Theme, filename_compiled_colorscheme: string)
function M.compile(config, theme, filename_compiled_colorscheme)
    local lines = {
        string.format(
            [[
return string.dump(function()
vim.o.termguicolors = true
if vim.g.colors_name then vim.cmd("hi clear") end
vim.g.colors_name = "vscode_modern"
vim.o.background = "%s"
local h = vim.api.nvim_set_hl]],
            filename_compiled_colorscheme
        ),
    }

    if path_sep == '\\' then
        compile_path = compile_path:gsub('/', '\\')
    end

    local hgs = require('vscode_modern.highlight_groups').get(config, theme)
    for group, color in pairs(hgs) do
        table.insert(
            lines,
            string.format([[h(0, "%s", %s)]], group, inspect(color))
        )
    end
    table.insert(lines, 'end, true)')

    if vim.fn.isdirectory(compile_path) == 0 then
        vim.fn.mkdir(compile_path, 'p')
    end

    local f = loadstring(table.concat(lines, '\n'))
    if not f then
        local err_path = (path_sep == '/' and '/tmp' or os.getenv 'TMP')
            .. '/vscode_modern_error.lua'
        print(
            string.format(
                'Dark Modern (error): Open %s for debugging',
                err_path
            )
        )
        local err = io.open(err_path, 'wb')
        if err then
            err:write(table.concat(lines, '\n'))
            err:close()
        end
        dofile(err_path)
        return
    end

    local file = assert(
        io.open(compile_path .. path_sep .. filename_compiled_colorscheme, 'wb'),
        'Permission denied while writing compiled file to '
            .. compile_path
            .. path_sep
            .. filename_compiled_colorscheme
    )
    file:write(f())
    file:close()
end

vim.api.nvim_create_user_command('VSCodeModernCompile', function()
    for _, value in ipairs(filenames_compiled_colorschemes) do
        local palette = require 'vscode_modern.palette'
        local theme = require('vscode_modern.themes')[value](palette, M.config)

        M.compile(M.config, theme, value)
    end

    vim.notify 'vscode_modern colorscheme compiled'
    vim.api.nvim_command 'colorscheme vscode_modern'
end, {})

function M.term_supports_undercurl()
    local term = os.getenv 'TERM'

    local terminals = {
        ['alacritty'] = true,
        ['wezterm'] = true,
        ['foot'] = false,
        ['xterm-256color'] = true,
        ['xterm-kitty'] = true,
    }

    return terminals[term]
end

return M
