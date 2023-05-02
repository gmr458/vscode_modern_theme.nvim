local colors = require("vscode_dark_plus.palette")
local config = require("vscode_dark_plus").config

local M = {}

M.palette = function()
    return {
        bg = config.v2 and colors.bg_02 or "#007acc",
        fg = config.v2 and colors.fg_10 or "#ffffff",
        vi_mode_bg = config.v2 and "#0078d4" or colors.green_02,
        separator = config.v2 and "#2a2a2a" or "#729db3",
    }
end

local diagnostic = {
    error = colors.red_04,
    warn = colors.yellow_03,
    info = colors.blue_08,
    hint = colors.green_06,
}

local git = {
    added = config.v2 and colors.green_01 or colors.green_04,
    deleted = config.v2 and colors.red_05 or colors.red_04,
    changed = colors.v2 and colors.blue_01 or colors.blue_04,
}

M.components = function()
    local components = { active = {}, inactive = {} }

    local vi_mode_utils = require("feline.providers.vi_mode")

    components.active[1] = {
        {
            provider = " ",
            hl = { bg = "vi_mode_bg" },
        },
        {
            provider = "vi_mode",
            hl = function()
                return {
                    name = vi_mode_utils.get_mode_highlight_name(),
                    style = "NONE",
                    bg = "vi_mode_bg",
                }
            end,
            icon = "",
        },
        {
            provider = " ",
            hl = { bg = "vi_mode_bg" },
        },
        {
            provider = function()
                local msg = "LSP inactive"
                local buf_clients = vim.lsp.buf_get_clients()
                if next(buf_clients) == nil then
                    return msg
                end

                local buf_client_names = {}
                for _, client in pairs(buf_clients) do
                    if client.name ~= "null-ls" then
                        table.insert(buf_client_names, client.name)
                    end
                end

                local unique_client_names = vim.fn.uniq(buf_client_names)
                return table.concat(unique_client_names, " ")
            end,
            left_sep = " ",
        },
        {
            provider = function()
                local buf_clients = vim.lsp.buf_get_clients()

                if next(buf_clients) == nil then
                    return ""
                end

                local null_ls_running = false

                for _, client in pairs(buf_clients) do
                    if client.name == "null-ls" then
                        null_ls_running = true
                    end
                end

                if not null_ls_running then
                    return ""
                end

                local filetype = vim.bo.filetype

                local ok, sources = pcall(require, "null-ls.sources")
                if not ok then
                    return ""
                end

                local available_sources = sources.get_available(filetype)

                local sources_registered = {}
                for _, source in ipairs(available_sources) do
                    table.insert(sources_registered, source.name)
                end

                return table.concat(sources_registered, " ")
            end,
            left_sep = " ",
            right_sep = " ",
        },
        {

            provider = "diagnostic_errors",
            icon = " ",
            hl = { fg = diagnostic.error },
            left_sep = " ",
            right_sep = " ",
        },
        {
            provider = "diagnostic_warnings",
            icon = " ",
            hl = { fg = diagnostic.warn },
            left_sep = " ",
            right_sep = " ",
        },
        {
            provider = "diagnostic_hints",
            icon = " ",
            hl = { fg = diagnostic.hint },
            left_sep = " ",
            right_sep = " ",
        },
        {
            provider = "diagnostic_info",
            icon = " ",
            hl = { fg = diagnostic.info },
            left_sep = " ",
            right_sep = " ",
        },
        {
            provider = function()
                local lsp = vim.lsp.util.get_progress_messages()[1]

                if lsp then
                    local msg = lsp.message or ""
                    local percentage = lsp.percentage or 0
                    local title = lsp.title or ""

                    local spinners = { "", "", "" }

                    local success_icon = { "", "", "" }

                    local ms = vim.loop.hrtime() / 1000000
                    local frame = math.floor(ms / 120) % #spinners

                    if percentage >= 70 then
                        return string.format(" %%<%s %s %s (%s%%%%)", success_icon[frame + 1], title, msg, percentage)
                    end

                    return string.format(" %%<%s %s %s (%s%%%%)", spinners[frame + 1], title, msg, percentage)
                end

                return ""
            end,
            hl = { fg = diagnostic.info },
        },
    }
    components.active[2] = {
        {
            provider = "git_diff_added",
            icon = " +",
            hl = { fg = config.v2 and git.added or "fg" },
        },
        {
            provider = "git_diff_changed",
            icon = " ~",
            hl = { fg = config.v2 and git.changed or "fg" },
        },
        {
            provider = "git_diff_removed",
            icon = " -",
            hl = { fg = config.v2 and git.deleted or "fg" },
        },
        {
            provider = "git_branch",
            left_sep = "  ",
            right_sep = { str = " | ", hl = { fg = "separator" } },
        },
        { provider = "line_percentage" },
        {
            provider = function()
                local total_lines = vim.fn.line("$")
                local total_visible_lines = vim.fn.line("w$")

                if total_lines <= total_visible_lines then
                    return ""
                end

                return total_lines .. " lines"
            end,
            left_sep = { str = " | ", hl = { fg = "separator" } },
        },
        {
            provider = { name = "file_info", opts = { file_readonly_icon = " ", file_modified_icon = "" } },
            left_sep = { str = " | ", hl = { fg = "separator" } },
        },
        {
            provider = function()
                local word = vim.bo.expandtab and "spaces" or "tab size"
                return word .. ": " .. ((vim.bo.tabstop ~= "" and vim.bo.tabstop) or vim.o.tabstop)
            end,
            left_sep = { str = " | ", hl = { fg = "separator" } },
        },
        {
            provider = function()
                return ((vim.bo.fenc ~= "" and vim.bo.fenc) or vim.o.enc)
            end,
            left_sep = { str = " | ", hl = { fg = "separator" } },
        },
        {
            provider = function()
                return ((vim.bo.fileformat ~= "" and vim.bo.fileformat) or vim.o.fileformat)
            end,
            left_sep = { str = " | ", hl = { fg = "separator" } },
        },
        {
            provider = { name = "file_type", opts = { case = "lowercase" } },
            left_sep = { str = " | ", hl = { fg = "separator" } },
            right_sep = "  ",
        },
    }
    components.inactive[1] = {
        {
            provider = " ",
            hl = { bg = "vi_mode_bg" },
        },
        {
            provider = "file_type",
            hl = { bg = "vi_mode_bg" },
        },
        {
            provider = " ",
            hl = { bg = "vi_mode_bg" },
            right_sep = { " " },
        },
    }
    components.inactive[2] = {}

    return components
end

return M
