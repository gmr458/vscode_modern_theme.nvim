local colors = require("vscode_dark_plus.palette")

local M = {}

local diagnostic = {
    error = colors.red_04,
    warn = colors.yellow_03,
    info = colors.blue_07,
    hint = colors.green_05,
    unnecessary = colors.blue_11,
}

local git = {
    signs = {
        add = colors.green_03,
        delete = colors.red_04,
        change = colors.blue_03,
    },
    status = {
        ignored = colors.fg_05,
        untracked = colors.green_06,
        staged = colors.green_07,
        deleted = colors.red_02,
        modified = colors.yellow_01,
    },
    diff = {
        add = colors.green_04,
        change = colors.green_02,
        delete = colors.red_01,
        text = colors.green_04,
    },
}

function M.set(config)
    -- Editor

    -- vim.api.nvim_set_hl(0, "ColorColumn", {})
    vim.api.nvim_set_hl(0, "Conceal", { bg = colors.bg_12 })
    -- vim.api.nvim_set_hl(0, "CurSearch", {})
    vim.api.nvim_set_hl(0, "Cursor", { bg = colors.bg_14, fg = colors.fg_01 })
    vim.api.nvim_set_hl(0, "CursorIM", { bg = colors.bg_14, fg = colors.fg_01 })
    -- vim.api.nvim_set_hl(0, "CursorColumn", {})
    vim.api.nvim_set_hl(
        0,
        "CursorLine",
        { bg = config.transparent_background and colors.none or (config.cursorline and colors.bg_04 or colors.none) }
    )
    -- vim.api.nvim_set_hl(0, "CursorLineFold", {})
    vim.api.nvim_set_hl(0, "CursorLineNr", {
        bg = config.transparent_background and colors.none or (config.cursorline and colors.bg_04 or colors.none),
        fg = colors.fg_09,
    })
    -- vim.api.nvim_set_hl(0, "CursorLineSign", {})
    vim.api.nvim_set_hl(0, "Directory", { fg = colors.yellow_02 })
    vim.api.nvim_set_hl(0, "DiffAdd", { bg = git.diff.add })
    vim.api.nvim_set_hl(0, "DiffChange", { bg = git.diff.change })
    vim.api.nvim_set_hl(0, "DiffDelete", { bg = git.diff.delete })
    vim.api.nvim_set_hl(0, "DiffText", { bg = git.diff.text })
    -- vim.api.nvim_set_hl(0, "EndOfBuffer", {})
    vim.api.nvim_set_hl(0, "Error", { fg = diagnostic.error })
    vim.api.nvim_set_hl(0, "ErrorMsg", { fg = diagnostic.error })
    -- vim.api.nvim_set_hl(0, "FoldColumn", {})
    -- vim.api.nvim_set_hl(0, "Folded", {})
    vim.api.nvim_set_hl(0, "FloatBorder", {
        bg = config.transparent_background and colors.none or (config.v2 and colors.bg_v2 or colors.bg),
        fg = colors.bg_12,
    })
    -- vim.api.nvim_set_hl(0, "FloatTitle", {})
    -- vim.api.nvim_set_hl(0, "IncSearch", {})
    vim.api.nvim_set_hl(0, "lCursor", { bg = colors.bg_14, fg = colors.fg_01 })
    vim.api.nvim_set_hl(0, "LineNr", {
        bg = config.transparent_background and colors.none or (config.v2 and colors.bg_v2 or colors.bg),
        fg = colors.fg_04,
    })
    -- vim.api.nvim_set_hl(0, "LineNrAbove", {})
    -- vim.api.nvim_set_hl(0, "LineNrBelow", {})
    -- vim.api.nvim_set_hl(0, "MatchParen", {})
    -- vim.api.nvim_set_hl(0, "Menu", {})
    -- vim.api.nvim_set_hl(0, "ModeMsg", {})
    -- vim.api.nvim_set_hl(0, "MoreMsg", {})
    -- vim.api.nvim_set_hl(0, "MsgArea", {})
    -- vim.api.nvim_set_hl(0, "MsgSeparator", {})
    -- vim.api.nvim_set_hl(0, "NonText", {})
    vim.api.nvim_set_hl(0, "Normal", {
        bg = config.transparent_background and colors.none or (config.v2 and colors.bg_v2 or colors.bg),
        fg = config.v2 and colors.fg_v2 or colors.fg,
    })
    vim.api.nvim_set_hl(
        0,
        "NormalFloat",
        { bg = config.transparent_background and colors.none or (config.v2 and colors.bg_v2 or colors.bg) }
    )
    -- vim.api.nvim_set_hl(0, "NormalNC", {})
    -- vim.api.nvim_set_hl(0, "NormalSB", {})
    -- vim.api.nvim_set_hl(0, "Pmenu", {})
    -- vim.api.nvim_set_hl(0, "PmenuExtra", {})
    -- vim.api.nvim_set_hl(0, "PmenuExtraSel", {})
    -- vim.api.nvim_set_hl(0, "PmenuKind", {})
    -- vim.api.nvim_set_hl(0, "PmenuKindSel", {})
    -- vim.api.nvim_set_hl(0, "PmenuSbar", {})
    -- vim.api.nvim_set_hl(0, "PmenuSel", {})
    -- vim.api.nvim_set_hl(0, "PmenuThumb", {})
    -- vim.api.nvim_set_hl(0, "Question", {})
    -- vim.api.nvim_set_hl(0, "QuickFixLine", {})
    -- vim.api.nvim_set_hl(0, "Scrollbar", {})
    vim.api.nvim_set_hl(0, "Search", { bg = colors.brown_01 })
    vim.api.nvim_set_hl(0, "SignColumn", { bg = colors.none })
    -- vim.api.nvim_set_hl(0, "SignColumnSB", {})
    -- vim.api.nvim_set_hl(0, "SpecialKey", {})
    vim.api.nvim_set_hl(0, "SpellBad", { sp = colors.red_03, undercurl = true })
    vim.api.nvim_set_hl(0, "SpellCap", { sp = colors.yellow_05, undercurl = true })
    vim.api.nvim_set_hl(0, "SpellLocal", { sp = colors.blue_09, undercurl = true })
    vim.api.nvim_set_hl(0, "SpellRare", { sp = colors.green_05, undercurl = true })
    vim.api.nvim_set_hl(0, "StatusLine", { bg = colors.none })
    -- vim.api.nvim_set_hl(0, "StatusLineNC", {})
    -- vim.api.nvim_set_hl(0, "Substitute", {})
    -- vim.api.nvim_set_hl(0, "TabLine", {})
    -- vim.api.nvim_set_hl(0, "TabLineFill", {})
    -- vim.api.nvim_set_hl(0, "TabLineSel", {})
    vim.api.nvim_set_hl(0, "TermCursor", { bg = colors.fg_10, fg = config.v2 and colors.bg_02 or colors.bg })
    -- vim.api.nvim_set_hl(0, "TermCursorNC", {})
    vim.api.nvim_set_hl(0, "Title", { fg = colors.fg_11 })
    -- vim.api.nvim_set_hl(0, "Tooltip", {})
    -- vim.api.nvim_set_hl(0, "VertSplit", {})
    vim.api.nvim_set_hl(0, "Visual", { bg = colors.blue_04 })
    -- vim.api.nvim_set_hl(0, "VisualNOS", {})
    vim.api.nvim_set_hl(0, "WarningMsg", { fg = diagnostic.warn })
    -- vim.api.nvim_set_hl(0, "Whitespace", {})
    -- vim.api.nvim_set_hl(0, "WildMenu", {})
    vim.api.nvim_set_hl(0, "WinBar", { fg = colors.fg_07 })
    -- vim.api.nvim_set_hl(0, "WinBarNC", {})
    vim.api.nvim_set_hl(0, "WinSeparator", { fg = colors.bg_03 })

    ------------------------------------------------------------------------------------------

    -- Pmenu

    vim.api.nvim_set_hl(0, "Pmenu", { bg = colors.bg_05, fg = colors.fg_10 })
    -- vim.api.nvim_set_hl(0, "PmenuExtra", {})
    -- vim.api.nvim_set_hl(0, "PmenuExtraSel", {})
    -- vim.api.nvim_set_hl(0, "PmenuKind", {})
    -- vim.api.nvim_set_hl(0, "PmenuKindSel", {})
    vim.api.nvim_set_hl(0, "PmenuSbar", { bg = colors.bg_05 })
    vim.api.nvim_set_hl(0, "PmenuSel", { bg = colors.blue_01, fg = colors.fg_11 })
    vim.api.nvim_set_hl(0, "PmenuThumb", { bg = colors.bg_11 })

    ------------------------------------------------------------------------------------------

    -- Sintax

    vim.api.nvim_set_hl(0, "Comment", { fg = colors.green_08 })

    vim.api.nvim_set_hl(0, "Variable", { fg = colors.blue_13 })
    vim.api.nvim_set_hl(0, "Constant", { fg = colors.blue_09 })
    vim.api.nvim_set_hl(0, "String", { fg = colors.orange_01 })
    vim.api.nvim_set_hl(0, "Character", { fg = colors.red_03 })
    vim.api.nvim_set_hl(0, "Number", { fg = colors.green_09 })
    vim.api.nvim_set_hl(0, "Boolean", { fg = colors.blue_10 })
    vim.api.nvim_set_hl(0, "Float", { fg = colors.green_09 })

    vim.api.nvim_set_hl(0, "Identifier", { fg = config.v2 and colors.fg_v2 or colors.fg })
    vim.api.nvim_set_hl(0, "Function", { fg = colors.yellow_05 })

    vim.api.nvim_set_hl(0, "Statement", { fg = colors.purple_02 })
    vim.api.nvim_set_hl(0, "Conditional", { fg = colors.purple_02 })
    vim.api.nvim_set_hl(0, "Repeat", { fg = colors.purple_02 })
    vim.api.nvim_set_hl(0, "Label", { fg = colors.purple_02 })
    vim.api.nvim_set_hl(0, "Operator", { fg = colors.fg })
    vim.api.nvim_set_hl(0, "Keyword", { fg = colors.blue_10 })
    vim.api.nvim_set_hl(0, "Exception", { fg = colors.purple_02 })

    vim.api.nvim_set_hl(0, "PreProc", { fg = colors.purple_02 })
    vim.api.nvim_set_hl(0, "Include", { fg = colors.purple_02 })
    vim.api.nvim_set_hl(0, "Define", { fg = colors.purple_02 })
    vim.api.nvim_set_hl(0, "Macro", { fg = colors.purple_02 })
    vim.api.nvim_set_hl(0, "PreCondit", { fg = colors.purple_02 })

    vim.api.nvim_set_hl(0, "Type", { fg = colors.green_05 })
    vim.api.nvim_set_hl(0, "StorageClass", { fg = colors.green_05 })
    vim.api.nvim_set_hl(0, "Structure", { fg = colors.green_05 })
    vim.api.nvim_set_hl(0, "Typedef", { fg = colors.green_05 })

    vim.api.nvim_set_hl(0, "Special", { fg = colors.yellow_04 })
    vim.api.nvim_set_hl(0, "SpecialChar", { fg = colors.yellow_04 })
    vim.api.nvim_set_hl(0, "Tag", { fg = colors.yellow_04 })
    vim.api.nvim_set_hl(0, "Delimiter", { fg = colors.yellow_04 })
    vim.api.nvim_set_hl(0, "SpecialComment", { fg = colors.yellow_04 })
    vim.api.nvim_set_hl(0, "Debug", { fg = colors.yellow_04 })

    vim.api.nvim_set_hl(0, "Todo", { fg = colors.magenta_01 })

    ------------------------------------------------------------------------------------------

    -- nvim-treesitter/nvim-treesitter

    vim.api.nvim_set_hl(0, "@boolean", { fg = colors.blue_10 })
    vim.api.nvim_set_hl(0, "@character", { fg = colors.orange_01 })
    vim.api.nvim_set_hl(0, "@character.special", { fg = colors.yellow_04 })
    vim.api.nvim_set_hl(0, "@comment", { fg = colors.green_08 })
    vim.api.nvim_set_hl(0, "@conditional", { fg = colors.purple_02 })
    vim.api.nvim_set_hl(0, "@constant", { fg = colors.blue_09 })
    vim.api.nvim_set_hl(0, "@constant.builtin", { fg = colors.blue_09 })
    vim.api.nvim_set_hl(0, "@constant.macro", { fg = colors.blue_09 })
    vim.api.nvim_set_hl(0, "@constructor", { fg = colors.green_05 })
    -- vim.api.nvim_set_hl(0, "@debug", {})
    vim.api.nvim_set_hl(0, "@define", { fg = colors.purple_02 })
    vim.api.nvim_set_hl(0, "@exception", { fg = colors.purple_02 })
    vim.api.nvim_set_hl(0, "@field", { fg = colors.blue_13 })
    vim.api.nvim_set_hl(0, "@float", { fg = colors.green_09 })
    vim.api.nvim_set_hl(0, "@function", { fg = colors.yellow_05 })
    vim.api.nvim_set_hl(0, "@function.builtin", { fg = colors.yellow_05 })
    vim.api.nvim_set_hl(0, "@function.call", { fg = colors.yellow_05 })
    vim.api.nvim_set_hl(0, "@function.macro", { fg = colors.blue_10 })
    vim.api.nvim_set_hl(0, "@include", { fg = colors.purple_02 })
    vim.api.nvim_set_hl(0, "@keyword", { fg = colors.blue_10 })
    vim.api.nvim_set_hl(0, "@keyword.return", { fg = colors.purple_02 })
    vim.api.nvim_set_hl(0, "@label", { fg = colors.purple_02 })
    vim.api.nvim_set_hl(0, "@macro", { fg = colors.blue_10 })
    vim.api.nvim_set_hl(0, "@method", { fg = colors.yellow_05 })
    vim.api.nvim_set_hl(0, "@namespace", { fg = colors.green_05 })
    vim.api.nvim_set_hl(0, "@number", { fg = colors.green_09 })
    vim.api.nvim_set_hl(0, "@operator", { fg = colors.fg })
    vim.api.nvim_set_hl(0, "@parameter", { fg = colors.blue_13 })
    -- vim.api.nvim_set_hl(0, "@preproc", {})
    vim.api.nvim_set_hl(0, "@punctuation", { fg = colors.fg })
    vim.api.nvim_set_hl(0, "@property", { fg = colors.blue_13 })
    vim.api.nvim_set_hl(0, "@punctuation.delimiter", { fg = colors.fg })
    vim.api.nvim_set_hl(0, "@repeat", { fg = colors.purple_02 })
    vim.api.nvim_set_hl(0, "@storageclass", { fg = colors.blue_10 })
    vim.api.nvim_set_hl(0, "@string", { fg = colors.orange_01 })
    vim.api.nvim_set_hl(0, "@string.escape", { fg = colors.yellow_04 })
    vim.api.nvim_set_hl(0, "@string.special", { fg = colors.yellow_04 })
    vim.api.nvim_set_hl(0, "@tag", { fg = colors.blue_10 })
    vim.api.nvim_set_hl(0, "@tag.attribute", { link = "@variable" })
    vim.api.nvim_set_hl(0, "@tag.delimiter", { fg = colors.fg_03 })
    vim.api.nvim_set_hl(0, "@text.literal", { link = "@string" })
    vim.api.nvim_set_hl(0, "@text.reference", { link = "@constant" })
    vim.api.nvim_set_hl(0, "@text.title", { link = "Title" })
    vim.api.nvim_set_hl(0, "@text.todo", { link = "Todo" })
    vim.api.nvim_set_hl(0, "@text.underline", { underline = true })
    vim.api.nvim_set_hl(0, "@text.uri", { fg = colors.orange_01, underline = true })
    vim.api.nvim_set_hl(0, "@type", { fg = colors.green_05 })
    vim.api.nvim_set_hl(0, "@type.builtin", { fg = colors.green_05 })
    vim.api.nvim_set_hl(0, "@type.definition", { fg = colors.green_05 })
    vim.api.nvim_set_hl(0, "@type.qualifier", { fg = colors.blue_10 })
    vim.api.nvim_set_hl(0, "@variable", { fg = colors.blue_13 })

    -- C#
    vim.api.nvim_set_hl(0, "@include.c_sharp", { fg = colors.blue_10 })
    vim.api.nvim_set_hl(0, "@type.builtin.c_sharp", { fg = colors.blue_10 })

    -- Go
    vim.api.nvim_set_hl(0, "@keyword.default.go", { fg = colors.purple_02 })

    -- Go Mod
    vim.api.nvim_set_hl(0, "@text.uri.gomod", { fg = colors.yellow_04, underline = true })

    -- HTML
    vim.api.nvim_set_hl(0, "@constant.html", { fg = colors.blue_10 })
    vim.api.nvim_set_hl(0, "@text.html", { fg = colors.fg })
    vim.api.nvim_set_hl(0, "@text.title.html", { fg = colors.fg })

    -- Java
    vim.api.nvim_set_hl(0, "@include.java", { fg = colors.blue_10 })
    vim.api.nvim_set_hl(0, "@keyword.operator.java", { fg = colors.purple_02 })
    vim.api.nvim_set_hl(0, "@variable.builtin.java", { fg = colors.blue_10 })

    -- JavaScript
    vim.api.nvim_set_hl(0, "@keyword.export.javascript", { fg = colors.purple_02 })

    -- JSON
    vim.api.nvim_set_hl(0, "@label.json", { link = "@variable" })

    -- JSON with comments
    vim.api.nvim_set_hl(0, "@label.jsonc", { link = "@variable" })

    -- Rust
    vim.api.nvim_set_hl(0, "@include.mod.rust", { fg = colors.blue_10 })
    vim.api.nvim_set_hl(0, "@include.use.rust", { fg = colors.blue_10 })

    -- TypeScript
    vim.api.nvim_set_hl(0, "@keyword.coroutine.await.typescript", { fg = colors.purple_02 })
    vim.api.nvim_set_hl(0, "@keyword.default.typescript", { fg = colors.purple_02 })
    vim.api.nvim_set_hl(0, "@keyword.export.typescript", { fg = colors.purple_02 })

    -- TypeScript JSX
    vim.api.nvim_set_hl(0, "@keyword.as.tsx", { fg = colors.purple_02 })
    vim.api.nvim_set_hl(0, "@keyword.coroutine.await.tsx", { fg = colors.purple_02 })
    vim.api.nvim_set_hl(0, "@keyword.default.tsx", { fg = colors.purple_02 })
    vim.api.nvim_set_hl(0, "@keyword.export.tsx", { fg = colors.purple_02 })

    -- Semantic Tokens
    vim.api.nvim_set_hl(0, "@lsp.type.annotation", { link = "@type" })
    vim.api.nvim_set_hl(0, "@lsp.type.class", { link = "@type" })
    vim.api.nvim_set_hl(0, "@lsp.type.comment", { link = "@comment" })
    vim.api.nvim_set_hl(0, "@lsp.type.decorator", { link = "@function" })
    vim.api.nvim_set_hl(0, "@lsp.type.enum", { link = "@type" })
    vim.api.nvim_set_hl(0, "@lsp.type.enumMember", { link = "@constant" })
    vim.api.nvim_set_hl(0, "@lsp.type.function", { link = "@function" })
    vim.api.nvim_set_hl(0, "@lsp.type.interface", { link = "@type" })
    vim.api.nvim_set_hl(0, "@lsp.type.keyword", { link = "@keyword" })
    vim.api.nvim_set_hl(0, "@lsp.type.macro", { link = "@macro" })
    vim.api.nvim_set_hl(0, "@lsp.type.method", { link = "@method" })
    vim.api.nvim_set_hl(0, "@lsp.type.modifier", { link = "@keyword" })
    vim.api.nvim_set_hl(0, "@lsp.type.namespace", { link = "@namespace" })
    vim.api.nvim_set_hl(0, "@lsp.type.operator", { link = "@operator" })
    vim.api.nvim_set_hl(0, "@lsp.type.parameter", { link = "@parameter" })
    vim.api.nvim_set_hl(0, "@lsp.type.property", { link = "@property" })
    vim.api.nvim_set_hl(0, "@lsp.type.string", { link = "@string" })
    vim.api.nvim_set_hl(0, "@lsp.type.struct", { link = "@struct" })
    vim.api.nvim_set_hl(0, "@lsp.type.type", { link = "@type" })
    vim.api.nvim_set_hl(0, "@lsp.type.typeParameter", { link = "@parameter" })
    vim.api.nvim_set_hl(0, "@lsp.type.variable", { link = "@variable" })

    vim.api.nvim_set_hl(0, "@lsp.typemod.class.declaration", { link = "@type" })
    vim.api.nvim_set_hl(0, "@lsp.typemod.class.public", { link = "@type" })
    vim.api.nvim_set_hl(0, "@lsp.typemod.class.readonly", { link = "@type" })
    vim.api.nvim_set_hl(0, "@lsp.typemod.enum.declaration", { link = "@type" })
    vim.api.nvim_set_hl(0, "@lsp.typemod.enumMember.declaration", { link = "@constant" })
    vim.api.nvim_set_hl(0, "@lsp.typemod.function.declaration", { link = "@function" })
    vim.api.nvim_set_hl(0, "@lsp.typemod.function.readonly", { link = "@function" })
    vim.api.nvim_set_hl(0, "@lsp.typemod.keyword.controlFlow", { fg = colors.purple_02 })
    vim.api.nvim_set_hl(0, "@lsp.typemod.method.declaration", { link = "@function" })
    vim.api.nvim_set_hl(0, "@lsp.typemod.method.public", { link = "@function" })
    vim.api.nvim_set_hl(0, "@lsp.typemod.method.static", { link = "@function" })
    vim.api.nvim_set_hl(0, "@lsp.typemod.namespace.declaration", { link = "@namespace" })
    vim.api.nvim_set_hl(0, "@lsp.typemod.parameter.declaration", { link = "@variable" })
    vim.api.nvim_set_hl(0, "@lsp.typemod.struct.declaration", { link = "@type" })
    vim.api.nvim_set_hl(0, "@lsp.typemod.type.declaration", { link = "@type" })
    vim.api.nvim_set_hl(0, "@lsp.typemod.variable.declaration", { link = "@variable" })
    vim.api.nvim_set_hl(0, "@lsp.typemod.variable.readonly", { link = "@constant" })

    vim.api.nvim_set_hl(0, "@lsp.mod.controlFlow", { fg = colors.purple_02 })
    vim.api.nvim_set_hl(0, "@lsp.mod.declaration", { link = "@variable" })
    vim.api.nvim_set_hl(0, "@lsp.mod.readonly", { link = "@constant" })

    ------------------------------------------------------------------------------------------

    -- nvim-treesitter/nvim-treesitter-context

    vim.api.nvim_set_hl(0, "TreesitterContext", { bg = config.transparent_background and colors.bg_10 or colors.bg_05 })
    -- vim.api.nvim_set_hl(0, "TreesitterContextBottom", {})
    vim.api.nvim_set_hl(
        0,
        "TreesitterContextLineNumber",
        { bg = config.transparent_background and colors.bg_10 or colors.bg_05 }
    )

    ------------------------------------------------------------------------------------------

    -- nvim-treesitter/playground

    -- vim.api.nvim_set_hl(0, "nodeAnonymous", {})
    vim.api.nvim_set_hl(0, "nodeNumber", { link = "@number" })
    -- vim.api.nvim_set_hl(0, "nodeOp", {})
    vim.api.nvim_set_hl(0, "nodeType", { link = "@type" })
    vim.api.nvim_set_hl(0, "nodeTag", { link = "@variable" })

    ------------------------------------------------------------------------------------------

    -- ibhagwan/fzf-lua
    vim.api.nvim_set_hl(0, "FzfLuaBorder", { fg = colors.fg_02 })
    -- vim.api.nvim_set_hl(0, "FzfLuaCursor", {})
    -- vim.api.nvim_set_hl(0, "FzfLuaCursorLine", {})
    -- vim.api.nvim_set_hl(0, "FzfLuaCursorLineNr", {})
    -- vim.api.nvim_set_hl(0, "FzfLuaHelpBorder", {})
    -- vim.api.nvim_set_hl(0, "FzfLuaHelpNormal", {})
    -- vim.api.nvim_set_hl(0, "FzfLuaNormal", {})
    -- vim.api.nvim_set_hl(0, "FzfLuaScrollBorderEmpty", {})
    -- vim.api.nvim_set_hl(0, "FzfLuaScrollBorderFull", {})
    -- vim.api.nvim_set_hl(0, "FzfLuaScrollFloatEmpty", {})
    -- vim.api.nvim_set_hl(0, "FzfLuaScrollFloatFull", {})
    -- vim.api.nvim_set_hl(0, "FzfLuaSearch", {})
    -- vim.api.nvim_set_hl(0, "FzfLuaTitle", {})

    ------------------------------------------------------------------------------------------

    -- nvim-telescope/telescope.nvim

    -- vim.api.nvim_set_hl(0, "TelescopeBorder", {})
    vim.api.nvim_set_hl(0, "TelescopeMatching", { fg = colors.blue_05 })
    -- vim.api.nvim_set_hl(0, "TelescopeMultiIcon", {})
    -- vim.api.nvim_set_hl(0, "TelescopeMultiSelection", {})
    -- vim.api.nvim_set_hl(0, "TelescopeNormal", {})

    -- Telescope Preview
    -- vim.api.nvim_set_hl(0, "TelescopePreviewBlock", {})
    vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { bg = colors.bg_03, fg = colors.bg_03 })
    -- vim.api.nvim_set_hl(0, "TelescopePreviewCharDev", {})
    -- vim.api.nvim_set_hl(0, "TelescopePreviewDate", {})
    -- vim.api.nvim_set_hl(0, "TelescopePreviewDirectory", {})
    -- vim.api.nvim_set_hl(0, "TelescopePreviewExecute", {})
    -- vim.api.nvim_set_hl(0, "TelescopePreviewGroup", {})
    -- vim.api.nvim_set_hl(0, "TelescopePreviewHyphen", {})
    -- vim.api.nvim_set_hl(0, "TelescopePreviewLine", {})
    -- vim.api.nvim_set_hl(0, "TelescopePreviewMatch", {})
    -- vim.api.nvim_set_hl(0, "TelescopePreviewMessage", {})
    -- vim.api.nvim_set_hl(0, "TelescopePreviewMessageFillchar", {})
    vim.api.nvim_set_hl(0, "TelescopePreviewNormal", { bg = colors.bg_03 })
    -- vim.api.nvim_set_hl(0, "TelescopePreviewPipe", {})
    -- vim.api.nvim_set_hl(0, "TelescopePreviewRead", {})
    -- vim.api.nvim_set_hl(0, "TelescopePreviewSize", {})
    -- vim.api.nvim_set_hl(0, "TelescopePreviewSocket", {})
    vim.api.nvim_set_hl(0, "TelescopePreviewTitle", { fg = colors.fg })
    -- vim.api.nvim_set_hl(0, "TelescopePreviewUser", {})
    -- vim.api.nvim_set_hl(0, "TelescopePreviewWrite", {})

    -- Telescope Prompt
    vim.api.nvim_set_hl(0, "TelescopePromptBorder", { bg = colors.bg_07, fg = colors.bg_07 })
    vim.api.nvim_set_hl(0, "TelescopePromptCounter", { fg = colors.bg_13 })
    vim.api.nvim_set_hl(0, "TelescopePromptNormal", { bg = colors.bg_07, fg = colors.bg_13 })
    vim.api.nvim_set_hl(0, "TelescopePromptPrefix", {})
    vim.api.nvim_set_hl(0, "TelescopePromptTitle", { fg = colors.bg_13 })

    -- Telescope Results
    vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { bg = colors.bg_05, fg = colors.bg_05 })
    vim.api.nvim_set_hl(0, "TelescopeResultsClass", {})
    vim.api.nvim_set_hl(0, "TelescopeResultsComment", {})
    vim.api.nvim_set_hl(0, "TelescopeResultsConstant", {})
    vim.api.nvim_set_hl(0, "TelescopeResultsDiffAdd", {})
    vim.api.nvim_set_hl(0, "TelescopeResultsDiffChange", {})
    vim.api.nvim_set_hl(0, "TelescopeResultsDiffDelete", {})
    vim.api.nvim_set_hl(0, "TelescopeResultsDiffUntracked", {})
    vim.api.nvim_set_hl(0, "TelescopeResultsField", {})
    vim.api.nvim_set_hl(0, "TelescopeResultsFunction", {})
    vim.api.nvim_set_hl(0, "TelescopeResultsIdentifier", {})
    vim.api.nvim_set_hl(0, "TelescopeResultsLineNr", {})
    vim.api.nvim_set_hl(0, "TelescopeResultsMethod", {})
    vim.api.nvim_set_hl(0, "TelescopeResultsNormal", { bg = colors.bg_05 })
    vim.api.nvim_set_hl(0, "TelescopeResultsNumber", {})
    vim.api.nvim_set_hl(0, "TelescopeResultsOperator", {})
    vim.api.nvim_set_hl(0, "TelescopeResultsSpecialComment", {})
    vim.api.nvim_set_hl(0, "TelescopeResultsStruct", {})
    vim.api.nvim_set_hl(0, "TelescopeResultsTitle", { fg = colors.fg })
    vim.api.nvim_set_hl(0, "TelescopeResultsVariable", {})

    vim.api.nvim_set_hl(0, "TelescopeSelection", { bg = colors.blue_01, fg = colors.fg_11 })
    vim.api.nvim_set_hl(0, "TelescopeSelectionCaret", {})
    vim.api.nvim_set_hl(0, "TelescopeTitle", {})

    ------------------------------------------------------------------------------------------

    -- neovim/nvim-lspconfig

    -- Diagnostics LSP
    vim.api.nvim_set_hl(0, "DiagnosticBorder", { bg = config.v2 and colors.bg_v2 or colors.bg, fg = colors.fg_02 })
    -- vim.api.nvim_set_hl(0, "DiagnosticBufnr", {})
    vim.api.nvim_set_hl(0, "DiagnosticDeprecated", { strikethrough = true })
    vim.api.nvim_set_hl(0, "DiagnosticError", { fg = diagnostic.error })
    vim.api.nvim_set_hl(0, "DiagnosticFloatingError", { fg = diagnostic.error })
    vim.api.nvim_set_hl(0, "DiagnosticFloatingHint", { fg = diagnostic.hint })
    vim.api.nvim_set_hl(0, "DiagnosticFloatingInfo", { fg = diagnostic.info })
    -- vim.api.nvim_set_hl(0, "DiagnosticFloatingOk", {})
    vim.api.nvim_set_hl(0, "DiagnosticFloatingWarn", { fg = diagnostic.warn })
    -- vim.api.nvim_set_hl(0, "DiagnosticFname", {})
    vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = diagnostic.hint })
    vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = diagnostic.info })
    -- vim.api.nvim_set_hl(0, "DiagnosticNormal", {})
    -- vim.api.nvim_set_hl(0, "DiagnosticOk", {})
    -- vim.api.nvim_set_hl(0, "DiagnosticShowBorder", {})
    -- vim.api.nvim_set_hl(0, "DiagnosticShowNormal", {})
    vim.api.nvim_set_hl(0, "DiagnosticSignError", { fg = diagnostic.error })
    vim.api.nvim_set_hl(0, "DiagnosticSignHint", { fg = diagnostic.hint })
    vim.api.nvim_set_hl(0, "DiagnosticSignInfo", { fg = diagnostic.info })
    -- vim.api.nvim_set_hl(0, "DiagnosticSignOk", {})
    vim.api.nvim_set_hl(0, "DiagnosticSignWarn", { fg = diagnostic.warn })
    -- vim.api.nvim_set_hl(0, "DiagnosticSource", {})
    -- vim.api.nvim_set_hl(0, "DiagnosticText", {})
    vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { sp = diagnostic.error, undercurl = true })
    vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", { sp = diagnostic.hint, undercurl = true })
    vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", { sp = diagnostic.info, undercurl = true })
    -- vim.api.nvim_set_hl(0, "DiagnosticUnderlineOk", {})
    vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", { sp = diagnostic.warn, undercurl = true })
    vim.api.nvim_set_hl(0, "DiagnosticUnnecessary", { fg = diagnostic.unnecessary })
    vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { fg = diagnostic.error })
    vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint", { fg = diagnostic.hint })
    vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo", { fg = diagnostic.info })
    -- vim.api.nvim_set_hl(0, "DiagnosticVirtualTextOk", {})
    vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn", { fg = diagnostic.warn })
    vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = diagnostic.warn })

    -- LspInfo
    vim.api.nvim_set_hl(0, "LspInfoBorder", { fg = colors.fg_02 })
    -- vim.api.nvim_set_hl(0, "LspInfoFiletype", {})
    -- vim.api.nvim_set_hl(0, "LspInfoList", {})
    -- vim.api.nvim_set_hl(0, "LspInfoTip", {})
    -- vim.api.nvim_set_hl(0, "LspInfoTitle", {})

    ------------------------------------------------------------------------------------------

    -- SmiteshP/nvim-navic

    vim.api.nvim_set_hl(0, "NavicIconsFile", { link = "@keyword" })
    vim.api.nvim_set_hl(0, "NavicIconsModule", { link = "@namespace" })
    vim.api.nvim_set_hl(0, "NavicIconsNamespace", { link = "@namespace" })
    vim.api.nvim_set_hl(0, "NavicIconsPackage", { link = "@keyword" })
    vim.api.nvim_set_hl(0, "NavicIconsClass", { link = "@type" })
    vim.api.nvim_set_hl(0, "NavicIconsMethod", { link = "@method" })
    vim.api.nvim_set_hl(0, "NavicIconsProperty", { link = "@property" })
    vim.api.nvim_set_hl(0, "NavicIconsField", { link = "@field" })
    vim.api.nvim_set_hl(0, "NavicIconsConstructor", { link = "@constructor" })
    vim.api.nvim_set_hl(0, "NavicIconsEnum", { link = "@type" })
    vim.api.nvim_set_hl(0, "NavicIconsInterface", { link = "@type" })
    vim.api.nvim_set_hl(0, "NavicIconsFunction", { link = "@function" })
    vim.api.nvim_set_hl(0, "NavicIconsVariable", { link = "@keyword" })
    vim.api.nvim_set_hl(0, "NavicIconsConstant", { link = "@constant" })
    vim.api.nvim_set_hl(0, "NavicIconsString", { link = "@string" })
    vim.api.nvim_set_hl(0, "NavicIconsNumber", { link = "@number" })
    vim.api.nvim_set_hl(0, "NavicIconsBoolean", { link = "@boolean" })
    vim.api.nvim_set_hl(0, "NavicIconsArray", { link = "@keyword" })
    vim.api.nvim_set_hl(0, "NavicIconsObject", { link = "@keyword" })
    vim.api.nvim_set_hl(0, "NavicIconsKey", { link = "@keyword" })
    vim.api.nvim_set_hl(0, "NavicIconsNull", { link = "@keyword" })
    vim.api.nvim_set_hl(0, "NavicIconsEnumMember", { link = "@constant" })
    vim.api.nvim_set_hl(0, "NavicIconsStruct", { link = "@type" })
    vim.api.nvim_set_hl(0, "NavicIconsEvent", { link = "@keyword" })
    vim.api.nvim_set_hl(0, "NavicIconsOperator", { link = "@operator" })
    vim.api.nvim_set_hl(0, "NavicIconsTypeParameter", { link = "@parameter" })
    vim.api.nvim_set_hl(0, "NavicText", { fg = colors.fg_07 })
    vim.api.nvim_set_hl(0, "NavicSeparator", { fg = colors.fg_07 })

    ------------------------------------------------------------------------------------------

    -- williamboman/mason.nvim

    vim.api.nvim_set_hl(0, "MasonError", { fg = diagnostic.error })
    -- vim.api.nvim_set_hl(0, "MasonHeader", {})
    -- vim.api.nvim_set_hl(0, "MasonHeaderSecondary", {})
    -- vim.api.nvim_set_hl(0, "MasonHeading", {})
    -- vim.api.nvim_set_hl(0, "MasonHighlight", {})
    -- vim.api.nvim_set_hl(0, "MasonHighlightBlock", {})
    -- vim.api.nvim_set_hl(0, "MasonHighlightBlockBold", {})
    -- vim.api.nvim_set_hl(0, "MasonHighlightBlockBoldSecondary", {})
    -- vim.api.nvim_set_hl(0, "MasonHighlightBlockSecondary", {})
    -- vim.api.nvim_set_hl(0, "MasonHighlightSecondary", {})
    -- vim.api.nvim_set_hl(0, "MasonLink", {})
    -- vim.api.nvim_set_hl(0, "MasonMuted", {})
    -- vim.api.nvim_set_hl(0, "MasonMutedBlock", {})
    -- vim.api.nvim_set_hl(0, "MasonMutedBlockBold", {})
    -- vim.api.nvim_set_hl(0, "MasonNormal", {})
    vim.api.nvim_set_hl(0, "MasonWarning", { fg = diagnostic.warn })
    -- vim.api.nvim_set_hl(0, "masonDoc", {})
    -- vim.api.nvim_set_hl(0, "masonPerlComment", {})
    -- vim.api.nvim_set_hl(0, "masonPod", {})

    ------------------------------------------------------------------------------------------

    -- folke/trouble.nvim

    vim.api.nvim_set_hl(0, "TroubleCode", { fg = colors.blue_06, underline = true })
    vim.api.nvim_set_hl(0, "TroubleCount", { bg = colors.bg_10, fg = colors.fg_11 })
    -- vim.api.nvim_set_hl(0, "TroubleError", {})
    vim.api.nvim_set_hl(0, "TroubleFile", { fg = colors.fg_10 })
    vim.api.nvim_set_hl(0, "TroubleFoldIcon", { fg = colors.fg_08 })
    -- vim.api.nvim_set_hl(0, "TroubleHint", {})
    -- vim.api.nvim_set_hl(0, "TroubleIndent", {})
    -- vim.api.nvim_set_hl(0, "TroubleInformation", {})
    vim.api.nvim_set_hl(0, "TroubleLocation", { fg = colors.fg_06 })
    -- vim.api.nvim_set_hl(0, "TroubleNormal", {})
    -- vim.api.nvim_set_hl(0, "TroubleOther", {})
    vim.api.nvim_set_hl(0, "TroublePreview", { bg = colors.bg_09 })
    vim.api.nvim_set_hl(0, "TroubleSignError", { fg = diagnostic.error })
    vim.api.nvim_set_hl(0, "TroubleSignHint", { fg = diagnostic.hint })
    vim.api.nvim_set_hl(0, "TroubleSignInformation", { fg = diagnostic.info })
    -- vim.api.nvim_set_hl(0, "TroubleSignOther", {})
    vim.api.nvim_set_hl(0, "TroubleSignWarning", { fg = diagnostic.warn })
    vim.api.nvim_set_hl(0, "TroubleSource", { fg = colors.fg_06 })
    -- vim.api.nvim_set_hl(0, "TroubleText", {})
    vim.api.nvim_set_hl(0, "TroubleTextError", { fg = config.v2 and colors.fg_v2 or colors.fg })
    vim.api.nvim_set_hl(0, "TroubleTextHint", { fg = config.v2 and colors.fg_v2 or colors.fg })
    vim.api.nvim_set_hl(0, "TroubleTextInformation", { fg = config.v2 and colors.fg_v2 or colors.fg })
    vim.api.nvim_set_hl(0, "TroubleTextWarning", { fg = config.v2 and colors.fg_v2 or colors.fg })
    -- vim.api.nvim_set_hl(0, "TroubleWarning", {})

    ------------------------------------------------------------------------------------------

    -- hrsh7th/nvim-cmp

    vim.api.nvim_set_hl(0, "CmpDoc", {
        bg = config.transparent_background and colors.none or (config.v2 and colors.bg_v2 or colors.bg),
        fg = colors.fg,
    })
    vim.api.nvim_set_hl(0, "CmpDocBorder", {
        bg = config.transparent_background and colors.none or (config.v2 and colors.bg_v2 or colors.bg),
        fg = colors.bg_12,
    })
    -- vim.api.nvim_set_hl(0, "CmpItemAbbr", {})
    -- vim.api.nvim_set_hl(0, "CmpItemAbbrDefault", {})
    vim.api.nvim_set_hl(0, "CmpItemAbbrDeprecated", { fg = colors.fg_10, strikethrough = true })
    -- vim.api.nvim_set_hl(0, "CmpItemAbbrDeprecatedDefault", {})
    vim.api.nvim_set_hl(0, "CmpItemAbbrMatch", { fg = colors.blue_05 })
    -- vim.api.nvim_set_hl(0, "CmpItemAbbrMatchDefault", {})
    -- vim.api.nvim_set_hl(0, "CmpItemAbbrMatchFuzzy", {})
    -- vim.api.nvim_set_hl(0, "CmpItemAbbrMatchFuzzyDefault", {})
    vim.api.nvim_set_hl(0, "CmpItemKind", { fg = colors.fg_10 })
    vim.api.nvim_set_hl(0, "CmpItemKindClass", { fg = colors.orange_02 })
    -- vim.api.nvim_set_hl(0, "CmpItemKindClassDefault", {})
    vim.api.nvim_set_hl(0, "CmpItemKindColor", { fg = colors.fg })
    -- vim.api.nvim_set_hl(0, "CmpItemKindColorDefault", {})
    vim.api.nvim_set_hl(0, "CmpItemKindConstant", { fg = colors.fg_10 })
    -- vim.api.nvim_set_hl(0, "CmpItemKindConstantDefault", {})
    vim.api.nvim_set_hl(0, "CmpItemKindConstructor", { fg = colors.purple_01 })
    -- vim.api.nvim_set_hl(0, "CmpItemKindConstructorDefault", {})
    -- vim.api.nvim_set_hl(0, "CmpItemKindDefault", {})
    vim.api.nvim_set_hl(0, "CmpItemKindEnum", { fg = colors.orange_02 })
    -- vim.api.nvim_set_hl(0, "CmpItemKindEnumDefault", {})
    vim.api.nvim_set_hl(0, "CmpItemKindEnumMember", { fg = colors.blue_12 })
    -- vim.api.nvim_set_hl(0, "CmpItemKindEnumMemberDefault", {})
    vim.api.nvim_set_hl(0, "CmpItemKindEvent", { fg = colors.fg_10 })
    -- vim.api.nvim_set_hl(0, "CmpItemKindEventDefault", {})
    vim.api.nvim_set_hl(0, "CmpItemKindField", { fg = colors.blue_12 })
    -- vim.api.nvim_set_hl(0, "CmpItemKindFieldDefault", {})
    vim.api.nvim_set_hl(0, "CmpItemKindFile", { fg = colors.fg_10 })
    -- vim.api.nvim_set_hl(0, "CmpItemKindFileDefault", {})
    vim.api.nvim_set_hl(0, "CmpItemKindFolder", { fg = colors.yellow_02 })
    -- vim.api.nvim_set_hl(0, "CmpItemKindFolderDefault", {})
    vim.api.nvim_set_hl(0, "CmpItemKindFunction", { fg = colors.purple_01 })
    -- vim.api.nvim_set_hl(0, "CmpItemKindFunctionDefault", {})
    vim.api.nvim_set_hl(0, "CmpItemKindInterface", { fg = colors.blue_12 })
    -- vim.api.nvim_set_hl(0, "CmpItemKindInterfaceDefault", {})
    vim.api.nvim_set_hl(0, "CmpItemKindKeyword", { fg = colors.fg_10 })
    -- vim.api.nvim_set_hl(0, "CmpItemKindKeywordDefault", {})
    vim.api.nvim_set_hl(0, "CmpItemKindMethod", { fg = colors.purple_01 })
    -- vim.api.nvim_set_hl(0, "CmpItemKindMethodDefault", {})
    vim.api.nvim_set_hl(0, "CmpItemKindModule", { fg = colors.fg_10 })
    -- vim.api.nvim_set_hl(0, "CmpItemKindModuleDefault", {})
    vim.api.nvim_set_hl(0, "CmpItemKindOperator", { fg = colors.fg_10 })
    -- vim.api.nvim_set_hl(0, "CmpItemKindOperatorDefault", {})
    vim.api.nvim_set_hl(0, "CmpItemKindProperty", { fg = colors.blue_12 })
    -- vim.api.nvim_set_hl(0, "CmpItemKindPropertyDefault", {})
    vim.api.nvim_set_hl(0, "CmpItemKindReference", { fg = colors.fg_10 })
    -- vim.api.nvim_set_hl(0, "CmpItemKindReferenceDefault", {})
    vim.api.nvim_set_hl(0, "CmpItemKindSnippet", { fg = colors.fg_10 })
    -- vim.api.nvim_set_hl(0, "CmpItemKindSnippetDefault", {})
    vim.api.nvim_set_hl(0, "CmpItemKindSnippetFunction", { fg = colors.fg_10 })
    vim.api.nvim_set_hl(0, "CmpItemKindSnippetStruct", { fg = colors.fg_10 })
    vim.api.nvim_set_hl(0, "CmpItemKindStruct", { fg = colors.fg_10 })
    -- vim.api.nvim_set_hl(0, "CmpItemKindStructDefault", {})
    vim.api.nvim_set_hl(0, "CmpItemKindText", { fg = colors.fg_10 })
    -- vim.api.nvim_set_hl(0, "CmpItemKindTextDefault", {})
    vim.api.nvim_set_hl(0, "CmpItemKindTypeParameter", { fg = colors.fg_10 })
    -- vim.api.nvim_set_hl(0, "CmpItemKindTypeParameterDefault", {})
    vim.api.nvim_set_hl(0, "CmpItemKindUnit", { fg = colors.fg_10 })
    -- vim.api.nvim_set_hl(0, "CmpItemKindUnitDefault", {})
    vim.api.nvim_set_hl(0, "CmpItemKindValue", { fg = colors.orange_02 })
    -- vim.api.nvim_set_hl(0, "CmpItemKindValueDefault", {})
    vim.api.nvim_set_hl(0, "CmpItemKindVariable", { fg = colors.blue_12 })
    -- vim.api.nvim_set_hl(0, "CmpItemKindVariableDefault", {})
    -- vim.api.nvim_set_hl(0, "CmpItemMenu", {})
    -- vim.api.nvim_set_hl(0, "CmpItemMenuDefault", {})
    vim.api.nvim_set_hl(0, "CmpMenu", {
        bg = config.transparent_background and colors.none or (config.v2 and colors.bg_v2 or colors.bg),
        fg = colors.fg,
    })
    vim.api.nvim_set_hl(0, "CmpMenuBorder", {
        bg = config.transparent_background and colors.none or (config.v2 and colors.bg_v2 or colors.bg),
        fg = colors.bg_12,
    })
    vim.api.nvim_set_hl(0, "CmpMenuSel", { bg = colors.blue_01, fg = colors.fg_11 })

    ------------------------------------------------------------------------------------------

    -- lewis6991/gitsigns.nvim

    vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = git.signs.add })
    -- vim.api.nvim_set_hl(0, "GitSignsAddInline", {})
    -- vim.api.nvim_set_hl(0, "GitSignsAddLn", {})
    -- vim.api.nvim_set_hl(0, "GitSignsAddPreview", {})
    vim.api.nvim_set_hl(0, "GitSignsChange", { fg = git.signs.change })
    -- vim.api.nvim_set_hl(0, "GitSignsChangeInline", {})
    -- vim.api.nvim_set_hl(0, "GitSignsChangeLn", {})
    -- vim.api.nvim_set_hl(0, "GitSignsChangeLnInline", {})
    -- vim.api.nvim_set_hl(0, "GitSignsChangeNr", {})
    -- vim.api.nvim_set_hl(0, "GitSignsChangedelete", {})
    -- vim.api.nvim_set_hl(0, "GitSignsChangedeleteLn", {})
    -- vim.api.nvim_set_hl(0, "GitSignsChangedeleteNr", {})
    -- vim.api.nvim_set_hl(0, "GitSignsCurrentLineBlame", {})
    vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = git.signs.delete })
    -- vim.api.nvim_set_hl(0, "GitSignsDelete", {})
    -- vim.api.nvim_set_hl(0, "GitSignsDeleteInline", {})
    -- vim.api.nvim_set_hl(0, "GitSignsDeleteLnInline", {})
    -- vim.api.nvim_set_hl(0, "GitSignsDeleteNr", {})
    -- vim.api.nvim_set_hl(0, "GitSignsDeletePreview", {})
    -- vim.api.nvim_set_hl(0, "GitSignsDeleteVirtLn", {})
    -- vim.api.nvim_set_hl(0, "GitSignsDeleteVirtLnInline", {})
    -- vim.api.nvim_set_hl(0, "GitSignsStagedAdd", {})
    -- vim.api.nvim_set_hl(0, "GitSignsStagedAddLn", {})
    -- vim.api.nvim_set_hl(0, "GitSignsStagedAddNr", {})
    -- vim.api.nvim_set_hl(0, "GitSignsStagedChange", {})
    -- vim.api.nvim_set_hl(0, "GitSignsStagedChangeLn", {})
    -- vim.api.nvim_set_hl(0, "GitSignsStagedChangeNr", {})
    -- vim.api.nvim_set_hl(0, "GitSignsStagedChangedelete", {})
    -- vim.api.nvim_set_hl(0, "GitSignsStagedChangedeleteLn", {})
    -- vim.api.nvim_set_hl(0, "GitSignsStagedChangedeleteNr", {})
    -- vim.api.nvim_set_hl(0, "GitSignsStagedDelete", {})
    -- vim.api.nvim_set_hl(0, "GitSignsStagedDeleteNr", {})
    -- vim.api.nvim_set_hl(0, "GitSignsStagedTopdelete", {})
    -- vim.api.nvim_set_hl(0, "GitSignsStagedTopdeleteNr", {})
    -- vim.api.nvim_set_hl(0, "GitSignsTopdelete", {})
    -- vim.api.nvim_set_hl(0, "GitSignsTopdeleteNr", {})
    -- vim.api.nvim_set_hl(0, "GitSignsUntracked", {})
    -- vim.api.nvim_set_hl(0, "GitSignsUntrackedLn", {})
    -- vim.api.nvim_set_hl(0, "GitSignsUntrackedNr", {})

    ------------------------------------------------------------------------------------------

    -- petertriho/nvim-scrollbar

    -- vim.api.nvim_set_hl(0, "ScrollbarCursor", {})
    -- vim.api.nvim_set_hl(0, "ScrollbarCursorHandler", {})
    vim.api.nvim_set_hl(0, "ScrollbarError", { fg = diagnostic.error })
    vim.api.nvim_set_hl(0, "ScrollbarErrorHandle", { fg = diagnostic.error })
    vim.api.nvim_set_hl(0, "ScrollbarGitAdd", { fg = git.signs.add })
    vim.api.nvim_set_hl(0, "ScrollbarGitAddHandle", { fg = git.signs.add })
    vim.api.nvim_set_hl(0, "ScrollbarGitChange", { fg = git.signs.change })
    vim.api.nvim_set_hl(0, "ScrollbarGitChangeHandle", { fg = git.signs.change })
    vim.api.nvim_set_hl(0, "ScrollbarGitDelete", { fg = git.signs.delete })
    vim.api.nvim_set_hl(0, "ScrollbarGitDeleteHandle", { fg = git.signs.delete })
    -- vim.api.nvim_set_hl(0, "ScrollbarHandle", {})
    vim.api.nvim_set_hl(0, "ScrollbarHint", { fg = diagnostic.hint })
    vim.api.nvim_set_hl(0, "ScrollbarHintHandle", { fg = diagnostic.hint })
    vim.api.nvim_set_hl(0, "ScrollbarInfo", { fg = diagnostic.info })
    vim.api.nvim_set_hl(0, "ScrollbarInfoHandle", { fg = diagnostic.info })
    -- vim.api.nvim_set_hl(0, "ScrollbarMisc", {})
    -- vim.api.nvim_set_hl(0, "ScrollbarMiscHandle", {})
    -- vim.api.nvim_set_hl(0, "ScrollbarSearch", {})
    -- vim.api.nvim_set_hl(0, "ScrollbarSearcHandle", {})
    vim.api.nvim_set_hl(0, "ScrollbarWarn", { fg = diagnostic.warn })
    vim.api.nvim_set_hl(0, "ScrollbarWarnHandle", { fg = diagnostic.warn })

    ------------------------------------------------------------------------------------------

    -- nvim-tree/nvim-tree.lua

    -- vim.api.nvim_set_hl(0, "NvimTreeBookmark", {})
    vim.api.nvim_set_hl(0, "NvimTreeClosedFolderIcon", { link = "NvimTreeFolderIcon" })
    -- vim.api.nvim_set_hl(0, "NvimTreeCursorColumn", {})
    vim.api.nvim_set_hl(0, "NvimTreeCursorLine", { bg = config.transparent_background and colors.none or colors.bg_06 })
    -- vim.api.nvim_set_hl(0, "NvimTreeCursorLineNr", {})
    -- vim.api.nvim_set_hl(0, "NvimTreeEmptyFolderName", {})
    -- vim.api.nvim_set_hl(0, "NvimTreeEndOfBuffer", {})
    -- vim.api.nvim_set_hl(0, "NvimTreeExecFile", {})
    -- vim.api.nvim_set_hl(0, "NvimTreeFileDeleted", {})
    -- vim.api.nvim_set_hl(0, "NvimTreeFileDirty", {})
    -- vim.api.nvim_set_hl(0, "NvimTreeFileIgnored", {})
    -- vim.api.nvim_set_hl(0, "NvimTreeFileMerge", {})
    -- vim.api.nvim_set_hl(0, "NvimTreeFileNew", {})
    -- vim.api.nvim_set_hl(0, "NvimTreeFileRenamed", {})
    -- vim.api.nvim_set_hl(0, "NvimTreeFileStaged", {})
    vim.api.nvim_set_hl(0, "NvimTreeFolderIcon", { fg = colors.yellow_02 })
    vim.api.nvim_set_hl(0, "NvimTreeFolderName", { fg = config.v2 and colors.fg_v2 or colors.fg })
    vim.api.nvim_set_hl(0, "NvimTreeGitDeleted", { fg = git.status.deleted })
    vim.api.nvim_set_hl(0, "NvimTreeGitDirty", { fg = git.status.modified })
    vim.api.nvim_set_hl(0, "NvimTreeGitIgnored", { fg = git.status.ignored })
    -- vim.api.nvim_set_hl(0, "NvimTreeGitMerge", {})
    vim.api.nvim_set_hl(0, "NvimTreeGitNew", { fg = git.status.untracked })
    vim.api.nvim_set_hl(0, "NvimTreeGitRenamed", { fg = git.status.untracked })
    vim.api.nvim_set_hl(0, "NvimTreeGitStaged", { fg = git.status.staged })
    -- vim.api.nvim_set_hl(0, "NvimTreeImageFile", {})
    -- vim.api.nvim_set_hl(0, "NvimTreeIndentMarker", {})
    -- vim.api.nvim_set_hl(0, "NvimTreeLineNr", {})
    -- vim.api.nvim_set_hl(0, "NvimTreeLiveFilterPrefix", {})
    -- vim.api.nvim_set_hl(0, "NvimTreeLiveFilterValue", {})
    vim.api.nvim_set_hl(0, "NvimTreeLspDiagnosticsError", { fg = diagnostic.error })
    vim.api.nvim_set_hl(0, "NvimTreeLspDiagnosticsHint", { fg = diagnostic.hint })
    vim.api.nvim_set_hl(0, "NvimTreeLspDiagnosticsInformation", { fg = diagnostic.info })
    vim.api.nvim_set_hl(0, "NvimTreeLspDiagnosticsWarning", { fg = diagnostic.warn })
    vim.api.nvim_set_hl(0, "NvimTreeModifiedFile", { fg = config.v2 and colors.fg_v2 or colors.fg })
    vim.api.nvim_set_hl(
        0,
        "NvimTreeNormal",
        { bg = config.transparent_background and colors.none or (config.v2 and colors.bg_02 or colors.bg_03) }
    )
    -- vim.api.nvim_set_hl(0, "NvimTreeNormalNC", {})
    vim.api.nvim_set_hl(0, "NvimTreeOpenedFile", { fg = config.v2 and colors.fg_v2 or colors.fg })
    vim.api.nvim_set_hl(0, "NvimTreeOpenedFolderIcon", { link = "NvimTreeFolderIcon" })
    vim.api.nvim_set_hl(0, "NvimTreeOpenedFolderName", { fg = colors.fg })
    -- vim.api.nvim_set_hl(0, "NvimTreePopup", {})
    vim.api.nvim_set_hl(0, "NvimTreeRootFolder", { fg = colors.fg_10 })
    -- vim.api.nvim_set_hl(0, "NvimTreeSignColumn", {})
    -- vim.api.nvim_set_hl(0, "NvimTreeSpecialFile", {})
    -- vim.api.nvim_set_hl(0, "NvimTreeStatusLine", {})
    -- vim.api.nvim_set_hl(0, "NvimTreeStatusLineNC", {})
    -- vim.api.nvim_set_hl(0, "NvimTreeSymlink", {})
    vim.api.nvim_set_hl(0, "NvimTreeWinSeparator", {
        bg = config.transparent_background and colors.none or (config.v2 and colors.bg_v2 or colors.bg),
        fg = config.v2 and colors.bg_v2 or colors.bg,
    })
    -- vim.api.nvim_set_hl(0, "NvimTreeWindowPicker", {})

    ------------------------------------------------------------------------------------------

    -- HiPhish/nvim-ts-rainbow2

    vim.api.nvim_set_hl(0, "TSRainbowBlue", { fg = "#179fff" })
    -- vim.api.nvim_set_hl(0, "TSRainbowCyan", {})
    -- vim.api.nvim_set_hl(0, "TSRainbowGreen", {})
    -- vim.api.nvim_set_hl(0, "TSRainbowOrange", {})
    -- vim.api.nvim_set_hl(0, "TSRainbowRed", {})
    vim.api.nvim_set_hl(0, "TSRainbowViolet", { fg = "#da70d6" })
    vim.api.nvim_set_hl(0, "TSRainbowYellow", { fg = "#ffd700" })

    ------------------------------------------------------------------------------------------

    -- lukas-reineke/indent-blankline.nvim

    vim.api.nvim_set_hl(0, "IndentBlanklineChar", { fg = colors.bg_08, bg = colors.none })
    vim.api.nvim_set_hl(0, "IndentBlanklineContextChar", { fg = colors.bg_12, bg = colors.none })
    -- vim.api.nvim_set_hl(0, "IndentBlanklineContextStart", {})
    -- vim.api.nvim_set_hl(0, "IndentBlanklineSpaceChar", {})
    -- vim.api.nvim_set_hl(0, "IndentBlanklineSpaceCharBlankline", {})

    ------------------------------------------------------------------------------------------

    -- goolord/alpha-nvim

    vim.api.nvim_set_hl(0, "AlphaButton", { fg = colors.blue_07 })
    vim.api.nvim_set_hl(0, "AlphaHeader", { fg = colors.blue_08 })
    vim.api.nvim_set_hl(0, "AlphaShorcut", { fg = colors.fg_04 })

    ------------------------------------------------------------------------------------------

    -- folke/lazy.nvim

    vim.api.nvim_set_hl(0, "LazyButton", { bg = colors.blue_02 })
    vim.api.nvim_set_hl(0, "LazyButtonActive", { bg = colors.green_01 })
    vim.api.nvim_set_hl(0, "LazyComment", { fg = colors.fg_04 })
    -- vim.api.nvim_set_hl(0, "LazyCommitIssue", {})
    -- vim.api.nvim_set_hl(0, "LazyCommitScope", {})
    -- vim.api.nvim_set_hl(0, "LazyCommitType", {})
    -- vim.api.nvim_set_hl(0, "LazyDimmed", {})
    -- vim.api.nvim_set_hl(0, "LazyDir", {})
    vim.api.nvim_set_hl(0, "LazyH1", { bg = colors.green_01 })
    -- vim.api.nvim_set_hl(0, "LazyH2", {})
    -- vim.api.nvim_set_hl(0, "LazyNoCond", {})
    -- vim.api.nvim_set_hl(0, "LazyNormal", {})
    -- vim.api.nvim_set_hl(0, "LazyProgressDone", {})
    -- vim.api.nvim_set_hl(0, "LazyProgressTodo", {})
    -- vim.api.nvim_set_hl(0, "LazyProp", {})
    -- vim.api.nvim_set_hl(0, "LazyReasonCmd", {})
    -- vim.api.nvim_set_hl(0, "LazyReasonEvent", {})
    -- vim.api.nvim_set_hl(0, "LazyReasonFt", {})
    -- vim.api.nvim_set_hl(0, "LazyReasonImport", {})
    -- vim.api.nvim_set_hl(0, "LazyReasonKeys", {})
    -- vim.api.nvim_set_hl(0, "LazyReasonPlugin", {})
    -- vim.api.nvim_set_hl(0, "LazyReasonRuntime", {})
    -- vim.api.nvim_set_hl(0, "LazyReasonSource", {})
    -- vim.api.nvim_set_hl(0, "LazyReasonStart", {})
    -- vim.api.nvim_set_hl(0, "LazySpecial", {})
    -- vim.api.nvim_set_hl(0, "LazyTaskError", {})
    -- vim.api.nvim_set_hl(0, "LazyTaskOutput", {})
    -- vim.api.nvim_set_hl(0, "LazyUrl", {})
    -- vim.api.nvim_set_hl(0, "LazyValue", {})

    ------------------------------------------------------------------------------------------

    -- lua

    vim.api.nvim_set_hl(0, "luaParenError", { link = "Normal" })

    -- xml
    vim.api.nvim_set_hl(0, "xmlAttrib", { link = "Variable" })
    vim.api.nvim_set_hl(0, "xmlProcessingDelim", { link = "Keyword" })
    vim.api.nvim_set_hl(0, "xmlProcessingDelim", { fg = colors.fg_03 })
    vim.api.nvim_set_hl(0, "xmlTag", { fg = colors.fg_03 })
    vim.api.nvim_set_hl(0, "xmlTagName", { link = "Keyword" })
end

return M
