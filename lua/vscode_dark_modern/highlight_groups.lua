local colors = require("vscode_dark_modern.palette")

local M = {}

--- @overload fun(config: Config)
function M.get(config)
    local diagnostic = {
        error = colors.red_05,
        warn = colors.yellow_03,
        info = colors.blue_08,
        hint = colors.green_05,
        unnecessary = colors.blue_12,
    }

    local git = {
        signs = {
            add = colors.green_01,
            delete = colors.red_06,
            change = colors.blue_01,
        },
        status = {
            ignored = colors.fg_09,
            untracked = colors.green_06,
            staged = colors.green_07,
            deleted = colors.red_02,
            modified = colors.yellow_01,
        },
        diff = {
            add = colors.green_04,
            change = colors.green_03,
            delete = colors.red_01,
            text = colors.green_04,
        },
    }

    return {
        -- Editor

        -- [ "ColorColumn"] = {},
        ["Conceal"] = { bg = colors.bg_11 },
        -- [ "CurSearch"] = {},
        ["Cursor"] = { bg = colors.bg_13, fg = colors.fg_02 },
        ["CursorIM"] = { bg = colors.bg_13, fg = colors.fg_02 },
        -- [ "CursorColumn"] = {},
        ["CursorLine"] = {
            bg = config.transparent_background and colors.none or (config.cursorline and colors.bg_03 or colors.none),
        },
        -- [ "CursorLineFold"] = {},
        ["CursorLineNr"] = {
            bg = config.transparent_background and colors.none or (config.cursorline and colors.bg_03 or colors.none),
            fg = colors.fg_13,
        },
        -- [ "CursorLineSign"] = {},
        ["Directory"] = { fg = colors.yellow_02 },
        ["DiffAdd"] = { bg = git.diff.add },
        ["DiffChange"] = { bg = git.diff.change },
        ["DiffDelete"] = { bg = git.diff.delete },
        ["DiffText"] = { bg = git.diff.text },
        -- [ "EndOfBuffer"] = {},
        ["Error"] = { fg = diagnostic.error },
        ["ErrorMsg"] = { fg = diagnostic.error },
        -- [ "FoldColumn"] = {},
        -- [ "Folded"] = {},
        ["FloatBorder"] = {
            bg = config.transparent_background and colors.none or colors.bg,
            fg = colors.bg_11,
        },
        -- [ "FloatTitle"] = {},
        -- [ "IncSearch"] = {},
        ["lCursor"] = { bg = colors.bg_13, fg = colors.fg_02 },
        ["LineNr"] = {
            bg = config.transparent_background and colors.none or colors.bg,
            fg = colors.fg_07,
        },
        -- [ "LineNrAbove"] = {},
        -- [ "LineNrBelow"] = {},
        -- [ "MatchParen"] = {},
        -- [ "Menu"] = {},
        -- [ "ModeMsg"] = {},
        -- [ "MoreMsg"] = {},
        -- [ "MsgArea"] = {},
        -- [ "MsgSeparator"] = {},
        -- [ "NonText"] = {},
        ["Normal"] = {
            bg = config.transparent_background and colors.none or colors.bg,
            fg = colors.fg,
        },
        ["NormalFloat"] = { bg = config.transparent_background and colors.none or colors.bg },
        -- [ "NormalNC"] = {},
        -- [ "NormalSB"] = {},
        -- [ "Pmenu"] = {},
        -- [ "PmenuExtra"] = {},
        -- [ "PmenuExtraSel"] = {},
        -- [ "PmenuKind"] = {},
        -- [ "PmenuKindSel"] = {},
        -- [ "PmenuSbar"] = {},
        -- [ "PmenuSel"] = {},
        -- [ "PmenuThumb"] = {},
        -- [ "Question"] = {},
        -- [ "QuickFixLine"] = {},
        -- [ "Scrollbar"] = {},
        ["Search"] = { bg = colors.brown_01 },
        ["SignColumn"] = { bg = colors.none },
        -- [ "SignColumnSB"] = {},
        -- [ "SpecialKey"] = {},
        ["SpellBad"] = { sp = colors.red_03, undercurl = true },
        ["SpellCap"] = { sp = colors.yellow_05, undercurl = true },
        ["SpellLocal"] = { sp = colors.blue_10, undercurl = true },
        ["SpellRare"] = { sp = colors.green_05, undercurl = true },
        ["StatusLine"] = { bg = colors.none },
        -- [ "StatusLineNC"] = {},
        -- [ "Substitute"] = {},
        -- [ "TabLine"] = {},
        -- [ "TabLineFill"] = {},
        -- [ "TabLineSel"] = {},
        ["TermCursor"] = { bg = colors.fg_14, fg = colors.bg_01 },
        -- [ "TermCursorNC"] = {},
        ["Title"] = { fg = colors.fg_15 },
        -- [ "Tooltip"] = {},
        -- [ "VertSplit"] = {},
        ["Visual"] = { bg = colors.blue_05 },
        -- [ "VisualNOS"] = {},
        ["WarningMsg"] = { fg = diagnostic.warn },
        -- [ "Whitespace"] = {},
        -- [ "WildMenu"] = {},
        ["WinBar"] = { fg = colors.fg_11 },
        -- [ "WinBarNC"] = {},
        ["WinSeparator"] = { fg = "#080A0E" },

        ------------------------------------------------------------------------------------------

        -- Pmenu

        ["Pmenu"] = { bg = colors.bg_04, fg = colors.fg_14 },
        -- [ "PmenuExtra"] = {},
        -- [ "PmenuExtraSel"] = {},
        -- [ "PmenuKind"] = {},
        -- [ "PmenuKindSel"] = {},
        ["PmenuSbar"] = { bg = colors.bg_04 },
        ["PmenuSel"] = { bg = colors.blue_02, fg = colors.fg_15 },
        ["PmenuThumb"] = { bg = colors.bg_10 },

        ------------------------------------------------------------------------------------------

        -- Sintax

        ["Comment"] = { fg = colors.green_08 },

        ["Variable"] = { fg = colors.blue_14 },
        ["Constant"] = { fg = colors.blue_10 },
        ["String"] = { fg = colors.orange_01 },
        ["Character"] = { fg = colors.red_03 },
        ["Number"] = { fg = colors.green_09 },
        ["Boolean"] = { fg = colors.blue_11 },
        ["Float"] = { fg = colors.green_09 },

        ["Identifier"] = { fg = colors.fg },
        ["Function"] = { fg = colors.yellow_05 },

        ["Statement"] = { fg = colors.purple_02 },
        ["Conditional"] = { fg = colors.purple_02 },
        ["Repeat"] = { fg = colors.purple_02 },
        ["Label"] = { fg = colors.purple_02 },
        ["Operator"] = { fg = colors.fg },
        ["Keyword"] = { fg = colors.blue_11 },
        ["Exception"] = { fg = colors.purple_02 },

        ["PreProc"] = { fg = colors.purple_02 },
        ["Include"] = { fg = colors.purple_02 },
        ["Define"] = { fg = colors.purple_02 },
        ["Macro"] = { fg = colors.blue_11 },
        ["PreCondit"] = { fg = colors.purple_02 },

        ["Type"] = { fg = colors.green_05 },
        ["StorageClass"] = { fg = colors.green_05 },
        ["Structure"] = { fg = colors.green_05 },
        ["Typedef"] = { fg = colors.green_05 },

        ["Special"] = { fg = colors.yellow_04 },
        ["SpecialChar"] = { fg = colors.yellow_04 },
        ["Tag"] = { fg = colors.yellow_04 },
        ["Delimiter"] = { fg = colors.yellow_04 },
        ["SpecialComment"] = { fg = colors.yellow_04 },
        ["Debug"] = { fg = colors.yellow_04 },

        ["Todo"] = { fg = colors.magenta_01 },

        ------------------------------------------------------------------------------------------

        -- nvim-treesitter/nvim-treesitter
        ["@attribute"] = { link = "@type" },
        ["@boolean"] = { fg = colors.blue_11 },
        ["@character"] = { fg = colors.orange_01 },
        ["@character.special"] = { fg = colors.yellow_04 },
        ["@comment"] = { fg = colors.green_08 },
        ["@conditional"] = { fg = colors.purple_02 },
        ["@constant"] = { fg = colors.blue_10 },
        ["@constant.builtin"] = { link = "@keyword" },
        ["@constant.macro"] = { fg = colors.blue_10 },
        ["@constructor"] = { fg = colors.green_05 },
        -- [ "@debug"] = {},
        ["@define"] = { fg = colors.purple_02 },
        ["@exception"] = { fg = colors.purple_02 },
        ["@field"] = { fg = colors.blue_14 },
        ["@float"] = { fg = colors.green_09 },
        ["@function"] = { fg = colors.yellow_05 },
        ["@function.builtin"] = { fg = colors.yellow_05 },
        ["@function.call"] = { fg = colors.yellow_05 },
        ["@function.macro"] = { fg = colors.blue_11 },
        ["@include"] = { fg = colors.purple_02 },
        ["@keyword"] = { fg = colors.blue_11 },
        ["@keyword.return"] = { fg = colors.purple_02 },
        ["@label"] = { fg = colors.purple_02 },
        ["@macro"] = { fg = colors.blue_11 },
        ["@method"] = { fg = colors.yellow_05 },
        ["@namespace"] = { fg = colors.green_05 },
        ["@number"] = { fg = colors.green_09 },
        ["@operator"] = { fg = colors.fg },
        ["@parameter"] = { fg = colors.blue_14 },
        -- [ "@preproc"] = {},
        ["@punctuation"] = { fg = colors.fg },
        ["@property"] = { fg = colors.blue_14 },
        ["@punctuation.delimiter"] = { fg = colors.fg },
        ["@repeat"] = { fg = colors.purple_02 },
        ["@storageclass"] = { fg = colors.blue_11 },
        ["@string"] = { fg = colors.orange_01 },
        ["@string.escape"] = { fg = colors.yellow_04 },
        ["@string.special"] = { fg = colors.yellow_04 },
        ["@tag"] = { fg = colors.blue_11 },
        ["@tag.attribute"] = { link = "@variable" },
        ["@tag.delimiter"] = { fg = colors.fg_05 },
        ["@text.literal"] = { link = "@string" },
        ["@text.reference"] = { link = "@constant" },
        ["@text.title"] = { link = "Title" },
        ["@text.todo"] = { link = "Todo" },
        ["@text.underline"] = { underline = true },
        ["@text.uri"] = { fg = colors.orange_01, underline = true },
        ["@type"] = { fg = colors.green_05 },
        ["@type.builtin"] = { fg = colors.green_05 },
        ["@type.definition"] = { fg = colors.green_05 },
        ["@type.qualifier"] = { fg = colors.blue_11 },
        ["@variable"] = { fg = colors.blue_14 },
        ["@variable.builtin"] = { link = "@variable" },

        -- C#
        ["@include.c_sharp"] = { fg = colors.blue_11 },
        ["@type.builtin.c_sharp"] = { fg = colors.blue_11 },

        -- Go
        ["@keyword.default.go"] = { fg = colors.purple_02 },
        ["@type.builtin.map.go"] = { link = "@keyword" },

        -- Go Mod
        ["@text.uri.gomod"] = { fg = colors.yellow_04, underline = true },

        -- HTML
        ["@constant.html"] = { fg = colors.blue_11 },
        ["@text.html"] = { fg = colors.fg },
        ["@text.title.html"] = { fg = colors.fg },

        -- Java
        ["@function.builtin.super.java"] = { link = "@keyword" },
        ["@include.java"] = { fg = colors.blue_11 },
        ["@variable.builtin.this.java"] = { link = "@keyword" },

        -- JavaScript
        ["@constructor.constructor.javascript"] = { link = "@keyword" },
        ["@keyword.coroutine.await.javascript"] = { fg = colors.purple_02 },
        ["@keyword.default.javascript"] = { fg = colors.purple_02 },
        ["@keyword.export.javascript"] = { fg = colors.purple_02 },
        ["@number.infinity.javascript"] = { link = "@keyword" },
        ["@variable.builtin.this.javascript"] = { link = "@keyword" },
        ["@variable.builtin.super.javascript"] = { link = "@keyword" },

        -- JSON
        ["@label.json"] = { link = "@variable" },

        -- JSON with comments
        ["@label.jsonc"] = { link = "@variable" },

        -- Lua
        ["@constructor.lua"] = { link = "@punctuation" },

        -- Python
        ["@attribute.python"] = { link = "@function" },
        ["@constructor.python"] = { link = "@function" },
        ["@variable.builtin.self.python"] = { link = "@keyword" },

        -- Ruby
        ["@label.ruby"] = { link = "@variable" },

        -- Rust
        ["@constant.builtin.rust"] = { link = "@constant" },
        ["@include.mod.rust"] = { fg = colors.blue_11 },
        ["@include.use.rust"] = { fg = colors.blue_11 },
        ["@keyword.coroutine.await.rust"] = { fg = colors.purple_02 },
        ["@variable.builtin.rust"] = { link = "@keyword" },

        -- TypeScript
        ["@constructor.constructor.typescript"] = { link = "@keyword" },
        ["@constant.builtin.undefined.typescript"] = { link = "@keyword" },
        ["@keyword.coroutine.await.typescript"] = { fg = colors.purple_02 },
        ["@keyword.default.typescript"] = { fg = colors.purple_02 },
        ["@keyword.export.typescript"] = { fg = colors.purple_02 },
        ["@number.infinity.typescript"] = { link = "@keyword" },
        ["@variable.builtin.super.typescript"] = { link = "@keyword" },
        ["@variable.builtin.this.typescript"] = { link = "@keyword" },

        -- TypeScript JSX
        ["@keyword.as.tsx"] = { fg = colors.purple_02 },
        ["@keyword.coroutine.await.tsx"] = { fg = colors.purple_02 },
        ["@keyword.default.tsx"] = { fg = colors.purple_02 },
        ["@keyword.export.tsx"] = { fg = colors.purple_02 },

        -- Semantic Tokens
        ["@lsp.type.annotation"] = { link = "Type" },
        ["@lsp.type.boolean"] = { link = "Boolean" },
        ["@lsp.type.character"] = { link = "Character" },
        ["@lsp.type.class"] = { link = "@lsp" },
        ["@lsp.type.formatSpecifier"] = { link = "Keyword" },
        ["@lsp.type.parameter"] = { link = "Variable" },
        ["@lsp.type.property"] = { link = "Variable" },
        ["@lsp.type.method"] = { link = "Function" },
        ["@lsp.type.number"] = { link = "Number" },
        ["@lsp.type.selfKeyword"] = { link = "Keyword" },
        ["@lsp.type.selfTypeKeyword"] = { link = "Keyword" },
        ["@lsp.type.string"] = { link = "String" },
        ["@lsp.type.variable"] = { link = "Variable" },

        ["@lsp.typemod.boolean.macro"] = { link = "Boolean" },
        ["@lsp.typemod.character.macro"] = { link = "Character" },
        ["@lsp.typemod.class.constructor"] = { link = "Function" },
        ["@lsp.typemod.class.importDeclaration"] = { link = "Type" },
        ["@lsp.typemod.class.readonly"] = { link = "Type" },
        ["@lsp.typemod.enum.declaration"] = { link = "Type" },
        ["@lsp.typemod.enum.public"] = { link = "Type" },
        ["@lsp.typemod.function.declaration"] = { link = "Function" },
        ["@lsp.typemod.function.local"] = { link = "Function" },
        ["@lsp.typemod.function.macro"] = { link = "Function" },
        ["@lsp.typemod.function.readonly"] = { link = "Function" },
        ["@lsp.typemod.generic.macro"] = { link = "Variable" },
        ["@lsp.typemod.method.macro"] = { link = "Function" },
        ["@lsp.typemod.namespace.macro"] = { fg = colors.green_05 },
        ["@lsp.typemod.number.macro"] = { link = "Number" },
        ["@lsp.typemod.parameter.macro"] = { link = "Variable" },
        ["@lsp.typemod.property.macro"] = { link = "Variable" },
        ["@lsp.typemod.string.macro"] = { link = "String" },
        ["@lsp.typemod.struct.macro"] = { link = "Type" },
        ["@lsp.typemod.variable.constant"] = { link = "Constant" },
        ["@lsp.typemod.variable.macro"] = { link = "Variable" },
        ["@lsp.typemod.variable.static"] = { link = "Constant" },

        ["@lsp.mod.controlFlow"] = { fg = colors.purple_02 },
        ["@lsp.mod.macro"] = { link = "Macro" },
        ["@lsp.mod.mutable"] = { underline = true },
        ["@lsp.mod.readonly"] = { link = "Constant" },

        ------------------------------------------------------------------------------------------

        -- nvim-treesitter/nvim-treesitter-context
        ["TreesitterContext"] = { bg = config.transparent_background and colors.bg_09 or colors.bg_04 },
        -- [ "TreesitterContextBottom"] = {},
        ["TreesitterContextLineNumber"] = { bg = config.transparent_background and colors.bg_09 or colors.bg_04 },

        ------------------------------------------------------------------------------------------

        -- nvim-treesitter/playground
        -- [ "nodeAnonymous"]= {},
        ["nodeNumber"] = { link = "@number" },
        -- [ "nodeOp"]= {},
        ["nodeType"] = { link = "@type" },
        ["nodeTag"] = { link = "@variable" },

        ------------------------------------------------------------------------------------------

        -- ibhagwan/fzf-lua
        ["FzfLuaBorder"] = { fg = colors.fg_04 },
        -- [ "FzfLuaCursor"] = {},
        -- [ "FzfLuaCursorLine"] = {},
        -- [ "FzfLuaCursorLineNr"] = {},
        -- [ "FzfLuaHelpBorder"] = {},
        -- [ "FzfLuaHelpNormal"] = {},
        -- [ "FzfLuaNormal"] = {},
        -- [ "FzfLuaScrollBorderEmpty"] = {},
        -- [ "FzfLuaScrollBorderFull"] = {},
        -- [ "FzfLuaScrollFloatEmpty"] = {},
        -- [ "FzfLuaScrollFloatFull"] = {},
        -- [ "FzfLuaSearch"] = {},
        -- [ "FzfLuaTitle"] = {},

        ------------------------------------------------------------------------------------------

        -- nvim-telescope/telescope.nvim
        -- [ "TelescopeBorder"] = {},
        ["TelescopeMatching"] = { fg = colors.blue_06 },
        -- [ "TelescopeMultiIcon"] = {},
        -- [ "TelescopeMultiSelection"] = {},
        -- [ "TelescopeNormal"] = {},

        -- Telescope Preview
        -- [ "TelescopePreviewBlock"] = {},
        ["TelescopePreviewBorder"] = { bg = colors.bg_02, fg = colors.bg_02 },
        -- [ "TelescopePreviewCharDev"] = {},
        -- [ "TelescopePreviewDate"] = {},
        -- [ "TelescopePreviewDirectory"] = {},
        -- [ "TelescopePreviewExecute"] = {},
        -- [ "TelescopePreviewGroup"] = {},
        -- [ "TelescopePreviewHyphen"] = {},
        -- [ "TelescopePreviewLine"] = {},
        -- [ "TelescopePreviewMatch"] = {},
        -- [ "TelescopePreviewMessage"] = {},
        -- [ "TelescopePreviewMessageFillchar"] = {},
        ["TelescopePreviewNormal"] = { bg = colors.bg_02 },
        -- [ "TelescopePreviewPipe"] = {},
        -- [ "TelescopePreviewRead"] = {},
        -- [ "TelescopePreviewSize"] = {},
        -- [ "TelescopePreviewSocket"] = {},
        ["TelescopePreviewTitle"] = { bg = colors.blue_01, fg = colors.fg_15 },
        -- [ "TelescopePreviewUser"] = {},
        -- [ "TelescopePreviewWrite"] = {},

        -- Telescope Prompt
        ["TelescopePromptBorder"] = { bg = colors.bg_06, fg = colors.bg_06 },
        ["TelescopePromptCounter"] = { fg = colors.bg_12 },
        ["TelescopePromptNormal"] = { bg = colors.bg_06, fg = colors.bg_12 },
        -- ["TelescopePromptPrefix"] = {},
        ["TelescopePromptTitle"] = { bg = colors.blue_01, fg = colors.fg_15 },

        -- Telescope Results
        ["TelescopeResultsBorder"] = { bg = colors.bg_04, fg = colors.bg_04 },
        -- ["TelescopeResultsClass"] = {},
        -- ["TelescopeResultsComment"] = {},
        -- ["TelescopeResultsConstant"] = {},
        -- ["TelescopeResultsDiffAdd"] = {},
        -- ["TelescopeResultsDiffChange"] = {},
        -- ["TelescopeResultsDiffDelete"] = {},
        -- ["TelescopeResultsDiffUntracked"] = {},
        -- ["TelescopeResultsField"] = {},
        -- ["TelescopeResultsFunction"] = {},
        -- ["TelescopeResultsIdentifier"] = {},
        -- ["TelescopeResultsLineNr"] = {},
        -- ["TelescopeResultsMethod"] = {},
        ["TelescopeResultsNormal"] = { bg = colors.bg_04 },
        -- ["TelescopeResultsNumber"] = {},
        -- ["TelescopeResultsOperator"] = {},
        -- ["TelescopeResultsSpecialComment"] = {},
        -- ["TelescopeResultsStruct"] = {},
        ["TelescopeResultsTitle"] = { bg = colors.blue_01, fg = colors.fg_15 },
        -- ["TelescopeResultsVariable"] = {},

        -- Telescope Selection
        ["TelescopeSelection"] = { bg = colors.blue_02, fg = colors.fg_15 },
        -- ["TelescopeSelectionCaret"] = {},

        -- Telescope Title
        -- ["TelescopeTitle"] = {},

        ------------------------------------------------------------------------------------------

        -- neovim/nvim-lspconfig

        -- Diagnostics LSP
        ["DiagnosticBorder"] = { bg = colors.bg, fg = colors.fg_04 },
        -- [ "DiagnosticBufnr"] = {},
        ["DiagnosticDeprecated"] = { strikethrough = true },
        ["DiagnosticError"] = { fg = diagnostic.error },
        ["DiagnosticFloatingError"] = { fg = diagnostic.error },
        ["DiagnosticFloatingHint"] = { fg = diagnostic.hint },
        ["DiagnosticFloatingInfo"] = { fg = diagnostic.info },
        -- [ "DiagnosticFloatingOk"] = {},
        ["DiagnosticFloatingWarn"] = { fg = diagnostic.warn },
        -- [ "DiagnosticFname"] = {},
        ["DiagnosticHint"] = { fg = diagnostic.hint },
        ["DiagnosticInfo"] = { fg = diagnostic.info },
        -- [ "DiagnosticNormal"] = {},
        -- [ "DiagnosticOk"] = {},
        -- [ "DiagnosticShowBorder"] = {},
        -- [ "DiagnosticShowNormal"] = {},
        ["DiagnosticSignError"] = { fg = diagnostic.error },
        ["DiagnosticSignHint"] = { fg = diagnostic.hint },
        ["DiagnosticSignInfo"] = { fg = diagnostic.info },
        -- [ "DiagnosticSignOk"] = {},
        ["DiagnosticSignWarn"] = { fg = diagnostic.warn },
        -- [ "DiagnosticSource"] = {},
        -- [ "DiagnosticText"] = {},
        ["DiagnosticUnderlineError"] = { sp = diagnostic.error, undercurl = true },
        ["DiagnosticUnderlineHint"] = { sp = diagnostic.hint, undercurl = true },
        ["DiagnosticUnderlineInfo"] = { sp = diagnostic.info, undercurl = true },
        -- [ "DiagnosticUnderlineOk"] = {},
        ["DiagnosticUnderlineWarn"] = { sp = diagnostic.warn, undercurl = true },
        ["DiagnosticUnnecessary"] = { fg = diagnostic.unnecessary },
        ["DiagnosticVirtualTextError"] = { fg = diagnostic.error },
        ["DiagnosticVirtualTextHint"] = { fg = diagnostic.hint },
        ["DiagnosticVirtualTextInfo"] = { fg = diagnostic.info },
        -- [ "DiagnosticVirtualTextOk"] = {},
        ["DiagnosticVirtualTextWarn"] = { fg = diagnostic.warn },
        ["DiagnosticWarn"] = { fg = diagnostic.warn },

        -- LspInfo
        ["LspInfoBorder"] = { fg = colors.fg_04 },
        -- [ "LspInfoFiletype"] = {},
        -- [ "LspInfoList"] = {},
        -- [ "LspInfoTip"] = {},
        -- [ "LspInfoTitle"] = {},

        -- Codelens
        ["LspCodeLens"] = { fg = colors.fg_10 },
        ["LspCodeLensSeparator"] = { fg = colors.fg_10 },

        ------------------------------------------------------------------------------------------

        -- SmiteshP/nvim-navic
        ["NavicIconsFile"] = { fg = colors.fg_14 },
        ["NavicIconsModule"] = { fg = colors.fg_14 },
        ["NavicIconsNamespace"] = { fg = colors.fg_14 },
        ["NavicIconsPackage"] = { fg = colors.fg_14 },
        ["NavicIconsClass"] = { fg = colors.orange_02 },
        ["NavicIconsMethod"] = { fg = colors.purple_01 },
        ["NavicIconsProperty"] = { fg = colors.blue_13 },
        ["NavicIconsField"] = { fg = colors.blue_13 },
        ["NavicIconsConstructor"] = { fg = colors.purple_01 },
        ["NavicIconsEnum"] = { fg = colors.orange_02 },
        ["NavicIconsInterface"] = { fg = colors.blue_13 },
        ["NavicIconsFunction"] = { fg = colors.purple_01 },
        ["NavicIconsVariable"] = { fg = colors.blue_13 },
        ["NavicIconsConstant"] = { fg = colors.fg_14 },
        ["NavicIconsString"] = { fg = colors.fg_14 },
        ["NavicIconsNumber"] = { fg = colors.fg_14 },
        ["NavicIconsBoolean"] = { fg = colors.fg_14 },
        ["NavicIconsArray"] = { fg = colors.fg_14 },
        ["NavicIconsObject"] = { fg = colors.fg_14 },
        ["NavicIconsKey"] = { fg = colors.fg_14 },
        ["NavicIconsNull"] = { fg = colors.fg_14 },
        ["NavicIconsEnumMember"] = { fg = colors.blue_13 },
        ["NavicIconsStruct"] = { fg = colors.fg_14 },
        ["NavicIconsEvent"] = { fg = colors.fg_14 },
        ["NavicIconsOperator"] = { fg = colors.fg_14 },
        ["NavicIconsTypeParameter"] = { fg = colors.fg_14 },
        ["NavicText"] = { fg = colors.fg_11 },
        ["NavicSeparator"] = { fg = colors.fg_11 },

        ------------------------------------------------------------------------------------------

        -- williamboman/mason.nvim
        ["MasonError"] = { fg = diagnostic.error },
        -- [ "MasonHeader"] = {},
        -- [ "MasonHeaderSecondary"] = {},
        -- [ "MasonHeading"] = {},
        -- [ "MasonHighlight"] = {},
        -- [ "MasonHighlightBlock"] = {},
        -- [ "MasonHighlightBlockBold"] = {},
        -- [ "MasonHighlightBlockBoldSecondary"] = {},
        -- [ "MasonHighlightBlockSecondary"] = {},
        -- [ "MasonHighlightSecondary"] = {},
        -- [ "MasonLink"] = {},
        -- [ "MasonMuted"] = {},
        -- [ "MasonMutedBlock"] = {},
        -- [ "MasonMutedBlockBold"] = {},
        -- [ "MasonNormal"] = {},
        ["MasonWarning"] = { fg = diagnostic.warn },
        -- [ "masonDoc"] = {},
        -- [ "masonPerlComment"] = {},
        -- [ "masonPod"] = {},

        ------------------------------------------------------------------------------------------

        -- folke/trouble.nvim
        ["TroubleCode"] = { fg = colors.blue_07, underline = true },
        ["TroubleCount"] = { bg = colors.bg_09, fg = colors.fg_15 },
        -- [ "TroubleError"] = {},
        ["TroubleFile"] = { fg = colors.fg_14 },
        ["TroubleFoldIcon"] = { fg = colors.fg_12 },
        -- [ "TroubleHint"] = {},
        -- [ "TroubleIndent"] = {},
        -- [ "TroubleInformation"] = {},
        ["TroubleLocation"] = { fg = colors.fg_09 },
        -- [ "TroubleNormal"] = {},
        -- [ "TroubleOther"] = {},
        ["TroublePreview"] = { bg = colors.bg_08 },
        ["TroubleSignError"] = { fg = diagnostic.error },
        ["TroubleSignHint"] = { fg = diagnostic.hint },
        ["TroubleSignInformation"] = { fg = diagnostic.info },
        -- [ "TroubleSignOther"] = {},
        ["TroubleSignWarning"] = { fg = diagnostic.warn },
        ["TroubleSource"] = { fg = colors.fg_09 },
        -- [ "TroubleText"] = {},
        ["TroubleTextError"] = { fg = colors.fg },
        ["TroubleTextHint"] = { fg = colors.fg },
        ["TroubleTextInformation"] = { fg = colors.fg },
        ["TroubleTextWarning"] = { fg = colors.fg },
        -- [ "TroubleWarning"] = {},

        ------------------------------------------------------------------------------------------

        -- Dap
        ["DapBreakpoint"] = { fg = colors.red_04 },
        ["DapStopped"] = { fg = colors.yellow_06 },
        ["DapBreakpointRejected"] = { fg = colors.fg_06 },

        -- DapUI
        ["DapUIScope"] = { fg = colors.fg_14 },
        ["DapUIVariable"] = { link = "Variable" },
        ["DapUIType"] = { link = "Type" },
        ["DapUIValue"] = { fg = colors.fg_06 },
        ["DapUIDecoration"] = { fg = colors.fg_14 },
        ["DapUIBreakpointsPath"] = { fg = colors.fg_14 },
        ["DapUILineNumber"] = { link = "LineNr" },
        ["DapUIStoppedThread"] = { fg = colors.fg_14 },
        ["DapUICurrentFrameName"] = { fg = colors.fg_14 },
        ["DapUISource"] = { fg = colors.fg_14 },
        ["DapUIThread"] = { fg = colors.fg_14 },
        ["DapUIWatchesEmpty"] = { fg = colors.fg_06 },
        ["DapUIWatchesValue"] = { fg = colors.fg_14 },

        ------------------------------------------------------------------------------------------

        -- hrsh7th/nvim-cmp
        ["CmpDoc"] = {
            bg = config.transparent_background and colors.none or colors.bg,
            fg = colors.fg,
        },
        ["CmpDocBorder"] = {
            bg = config.transparent_background and colors.none or colors.bg,
            fg = colors.bg_11,
        },
        -- [ "CmpItemAbbr"] = {},
        -- [ "CmpItemAbbrDefault"] = {},
        ["CmpItemAbbrDeprecated"] = { fg = colors.fg_14, strikethrough = true },
        -- [ "CmpItemAbbrDeprecatedDefault"] = {},
        ["CmpItemAbbrMatch"] = { fg = colors.blue_06 },
        -- [ "CmpItemAbbrMatchDefault"] = {},
        -- [ "CmpItemAbbrMatchFuzzy"] = {},
        -- [ "CmpItemAbbrMatchFuzzyDefault"] = {},
        ["CmpItemKind"] = { fg = colors.fg_14 },
        ["CmpItemKindClass"] = { fg = colors.orange_02 },
        -- [ "CmpItemKindClassDefault"] = {},
        ["CmpItemKindColor"] = { fg = colors.fg },
        -- [ "CmpItemKindColorDefault"] = {},
        ["CmpItemKindConstant"] = { fg = colors.fg_14 },
        -- [ "CmpItemKindConstantDefault"] = {},
        ["CmpItemKindConstructor"] = { fg = colors.purple_01 },
        -- [ "CmpItemKindConstructorDefault"] = {},
        -- [ "CmpItemKindDefault"] = {},
        ["CmpItemKindEnum"] = { fg = colors.orange_02 },
        -- [ "CmpItemKindEnumDefault"] = {},
        ["CmpItemKindEnumMember"] = { fg = colors.blue_13 },
        -- [ "CmpItemKindEnumMemberDefault"] = {},
        ["CmpItemKindEvent"] = { fg = colors.fg_14 },
        -- [ "CmpItemKindEventDefault"] = {},
        ["CmpItemKindField"] = { fg = colors.blue_13 },
        -- [ "CmpItemKindFieldDefault"] = {},
        ["CmpItemKindFile"] = { fg = colors.fg_14 },
        -- [ "CmpItemKindFileDefault"] = {},
        ["CmpItemKindFolder"] = { fg = colors.yellow_02 },
        -- [ "CmpItemKindFolderDefault"] = {},
        ["CmpItemKindFunction"] = { fg = colors.purple_01 },
        -- [ "CmpItemKindFunctionDefault"] = {},
        ["CmpItemKindInterface"] = { fg = colors.blue_13 },
        -- [ "CmpItemKindInterfaceDefault"] = {},
        ["CmpItemKindKeyword"] = { fg = colors.fg_14 },
        -- [ "CmpItemKindKeywordDefault"] = {},
        ["CmpItemKindMethod"] = { fg = colors.purple_01 },
        -- [ "CmpItemKindMethodDefault"] = {},
        ["CmpItemKindModule"] = { fg = colors.fg_14 },
        -- [ "CmpItemKindModuleDefault"] = {},
        ["CmpItemKindOperator"] = { fg = colors.fg_14 },
        -- [ "CmpItemKindOperatorDefault"] = {},
        ["CmpItemKindProperty"] = { fg = colors.blue_13 },
        -- [ "CmpItemKindPropertyDefault"] = {},
        ["CmpItemKindReference"] = { fg = colors.fg_14 },
        -- [ "CmpItemKindReferenceDefault"] = {},
        ["CmpItemKindSnippet"] = { fg = colors.fg_14 },
        -- [ "CmpItemKindSnippetDefault"] = {},
        ["CmpItemKindSnippetFunction"] = { fg = colors.fg_14 },
        ["CmpItemKindSnippetStruct"] = { fg = colors.fg_14 },
        ["CmpItemKindStruct"] = { fg = colors.fg_14 },
        -- [ "CmpItemKindStructDefault"] = {},
        ["CmpItemKindText"] = { fg = colors.fg_14 },
        -- [ "CmpItemKindTextDefault"] = {},
        ["CmpItemKindTypeParameter"] = { fg = colors.fg_14 },
        -- [ "CmpItemKindTypeParameterDefault"] = {},
        ["CmpItemKindUnit"] = { fg = colors.fg_14 },
        -- [ "CmpItemKindUnitDefault"] = {},
        ["CmpItemKindValue"] = { fg = colors.orange_02 },
        -- [ "CmpItemKindValueDefault"] = {},
        ["CmpItemKindVariable"] = { fg = colors.blue_13 },
        -- [ "CmpItemKindVariableDefault"] = {},
        -- [ "CmpItemMenu"] = {},
        -- [ "CmpItemMenuDefault"] = {},
        ["CmpMenu"] = {
            bg = config.transparent_background and colors.none or colors.bg,
            fg = colors.fg,
        },
        ["CmpMenuBorder"] = {
            bg = config.transparent_background and colors.none or colors.bg,
            fg = colors.bg_11,
        },
        ["CmpMenuSel"] = { bg = colors.blue_02, fg = colors.fg_15 },

        ------------------------------------------------------------------------------------------

        -- lewis6991/gitsigns.nvim
        ["GitSignsAdd"] = { fg = git.signs.add },
        -- [ "GitSignsAddInline"] = {},
        -- [ "GitSignsAddLn"] = {},
        -- [ "GitSignsAddPreview"] = {},
        ["GitSignsChange"] = { fg = git.signs.change },
        -- [ "GitSignsChangeInline"] = {},
        -- [ "GitSignsChangeLn"] = {},
        -- [ "GitSignsChangeLnInline"] = {},
        -- [ "GitSignsChangeNr"] = {},
        -- [ "GitSignsChangedelete"] = {},
        -- [ "GitSignsChangedeleteLn"] = {},
        -- [ "GitSignsChangedeleteNr"] = {},
        -- [ "GitSignsCurrentLineBlame"] = {},
        ["GitSignsDelete"] = { fg = git.signs.delete },
        -- [ "GitSignsDelete"] = {},
        -- [ "GitSignsDeleteInline"] = {},
        -- [ "GitSignsDeleteLnInline"] = {},
        -- [ "GitSignsDeleteNr"] = {},
        -- [ "GitSignsDeletePreview"] = {},
        -- [ "GitSignsDeleteVirtLn"] = {},
        -- [ "GitSignsDeleteVirtLnInline"] = {},
        -- [ "GitSignsStagedAdd"] = {},
        -- [ "GitSignsStagedAddLn"] = {},
        -- [ "GitSignsStagedAddNr"] = {},
        -- [ "GitSignsStagedChange"] = {},
        -- [ "GitSignsStagedChangeLn"] = {},
        -- [ "GitSignsStagedChangeNr"] = {},
        -- [ "GitSignsStagedChangedelete"] = {},
        -- [ "GitSignsStagedChangedeleteLn"] = {},
        -- [ "GitSignsStagedChangedeleteNr"] = {},
        -- [ "GitSignsStagedDelete"] = {},
        -- [ "GitSignsStagedDeleteNr"] = {},
        -- [ "GitSignsStagedTopdelete"] = {},
        -- [ "GitSignsStagedTopdeleteNr"] = {},
        -- [ "GitSignsTopdelete"] = {},
        -- [ "GitSignsTopdeleteNr"] = {},
        -- [ "GitSignsUntracked"] = {},
        -- [ "GitSignsUntrackedLn"] = {},
        -- [ "GitSignsUntrackedNr"] = {},

        ------------------------------------------------------------------------------------------

        -- petertriho/nvim-scrollbar
        -- [ "ScrollbarCursor"] = {},
        -- [ "ScrollbarCursorHandler"] = {},
        ["ScrollbarError"] = { fg = diagnostic.error },
        ["ScrollbarErrorHandle"] = { fg = diagnostic.error },
        ["ScrollbarGitAdd"] = { fg = git.signs.add },
        ["ScrollbarGitAddHandle"] = { fg = git.signs.add },
        ["ScrollbarGitChange"] = { fg = git.signs.change },
        ["ScrollbarGitChangeHandle"] = { fg = git.signs.change },
        ["ScrollbarGitDelete"] = { fg = git.signs.delete },
        ["ScrollbarGitDeleteHandle"] = { fg = git.signs.delete },
        -- [ "ScrollbarHandle"] = {},
        ["ScrollbarHint"] = { fg = diagnostic.hint },
        ["ScrollbarHintHandle"] = { fg = diagnostic.hint },
        ["ScrollbarInfo"] = { fg = diagnostic.info },
        ["ScrollbarInfoHandle"] = { fg = diagnostic.info },
        -- [ "ScrollbarMisc"] = {},
        -- [ "ScrollbarMiscHandle"] = {},
        -- [ "ScrollbarSearch"] = {},
        -- [ "ScrollbarSearcHandle"] = {},
        ["ScrollbarWarn"] = { fg = diagnostic.warn },
        ["ScrollbarWarnHandle"] = { fg = diagnostic.warn },

        ------------------------------------------------------------------------------------------

        -- nvim-tree/nvim-tree.lua
        -- [ "NvimTreeBookmark"] = {},
        ["NvimTreeClosedFolderIcon"] = { link = "NvimTreeFolderIcon" },
        -- [ "NvimTreeCursorColumn"] = {},
        ["NvimTreeCursorLine"] = { bg = config.transparent_background and colors.none or colors.bg_05 },
        -- [ "NvimTreeCursorLineNr"] = {},
        -- [ "NvimTreeEmptyFolderName"] = {},
        -- [ "NvimTreeEndOfBuffer"] = {},
        -- [ "NvimTreeExecFile"] = {},
        -- [ "NvimTreeFileDeleted"] = {},
        -- [ "NvimTreeFileDirty"] = {},
        -- [ "NvimTreeFileIgnored"] = {},
        -- [ "NvimTreeFileMerge"] = {},
        -- [ "NvimTreeFileNew"] = {},
        -- [ "NvimTreeFileRenamed"] = {},
        -- [ "NvimTreeFileStaged"] = {},
        ["NvimTreeFolderIcon"] = { fg = colors.yellow_02 },
        ["NvimTreeFolderName"] = { fg = colors.fg },
        ["NvimTreeGitDeleted"] = { fg = git.status.deleted },
        ["NvimTreeGitDirty"] = { fg = git.status.modified },
        ["NvimTreeGitIgnored"] = { fg = git.status.ignored },
        -- [ "NvimTreeGitMerge"] = {},
        ["NvimTreeGitNew"] = { fg = git.status.untracked },
        ["NvimTreeGitRenamed"] = { fg = git.status.untracked },
        ["NvimTreeGitStaged"] = { fg = git.status.staged },
        -- [ "NvimTreeImageFile"] = {},
        ["NvimTreeIndentMarker"] = { fg = colors.fg_03 },
        -- [ "NvimTreeLineNr"] = {},
        -- [ "NvimTreeLiveFilterPrefix"] = {},
        -- [ "NvimTreeLiveFilterValue"] = {},
        ["NvimTreeLspDiagnosticsError"] = { fg = diagnostic.error },
        ["NvimTreeLspDiagnosticsHint"] = { fg = diagnostic.hint },
        ["NvimTreeLspDiagnosticsInformation"] = { fg = diagnostic.info },
        ["NvimTreeLspDiagnosticsWarning"] = { fg = diagnostic.warn },
        ["NvimTreeModifiedFile"] = { fg = colors.fg },
        ["NvimTreeNormal"] = { bg = config.transparent_background and colors.none or colors.bg_01 },
        -- [ "NvimTreeNormalNC"] = {},
        ["NvimTreeOpenedFile"] = { fg = colors.fg },
        ["NvimTreeOpenedFolderIcon"] = { link = "NvimTreeFolderIcon" },
        ["NvimTreeOpenedFolderName"] = { fg = colors.fg },
        -- [ "NvimTreePopup"] = {},
        ["NvimTreeRootFolder"] = { fg = colors.fg_14 },
        -- [ "NvimTreeSignColumn"] = {},
        -- [ "NvimTreeSpecialFile"] = {},
        -- [ "NvimTreeStatusLine"] = {},
        -- [ "NvimTreeStatusLineNC"] = {},
        -- [ "NvimTreeSymlink"] = {},
        ["NvimTreeWinSeparator"] = {
            bg = config.transparent_background and colors.none or colors.bg,
            fg = colors.bg,
        },
        -- [ "NvimTreeWindowPicker"] = {},

        ------------------------------------------------------------------------------------------

        -- akinsho/toggleterm.nvim.git
        -- [ "ToggleTermNormal"] = {},
        ["ToggleTermNormalFloat"] = { bg = colors.bg_02 },
        ["ToggleTermFloatBorder"] = { bg = colors.bg_02, fg = colors.bg_02 },

        ------------------------------------------------------------------------------------------

        -- lukas-reineke/indent-blankline.nvim
        ["IndentBlanklineChar"] = { fg = colors.bg_07, bg = colors.none },
        ["IndentBlanklineContextChar"] = { fg = colors.bg_11, bg = colors.none },
        -- [ "IndentBlanklineContextStart"] = {},
        -- [ "IndentBlanklineSpaceChar"] = {},
        -- [ "IndentBlanklineSpaceCharBlankline"] = {},

        ------------------------------------------------------------------------------------------

        -- goolord/alpha-nvim
        ["AlphaButton"] = { fg = colors.blue_08 },
        ["AlphaHeader"] = { fg = colors.blue_09 },
        ["AlphaShorcut"] = { fg = colors.fg_07 },

        ------------------------------------------------------------------------------------------

        -- folke/lazy.nvim
        ["LazyButton"] = { bg = colors.blue_04 },
        ["LazyButtonActive"] = { bg = colors.green_02 },
        ["LazyComment"] = { fg = colors.fg_07 },
        -- [ "LazyCommitIssue"] = {},
        -- [ "LazyCommitScope"] = {},
        -- [ "LazyCommitType"] = {},
        -- [ "LazyDimmed"] = {},
        -- [ "LazyDir"] = {},
        ["LazyH1"] = { bg = colors.green_02 },
        -- [ "LazyH2"] = {},
        -- [ "LazyNoCond"] = {},
        -- [ "LazyNormal"] = {},
        -- [ "LazyProgressDone"] = {},
        -- [ "LazyProgressTodo"] = {},
        -- [ "LazyProp"] = {},
        -- [ "LazyReasonCmd"] = {},
        -- [ "LazyReasonEvent"] = {},
        -- [ "LazyReasonFt"] = {},
        -- [ "LazyReasonImport"] = {},
        -- [ "LazyReasonKeys"] = {},
        -- [ "LazyReasonPlugin"] = {},
        -- [ "LazyReasonRuntime"] = {},
        -- [ "LazyReasonSource"] = {},
        -- [ "LazyReasonStart"] = {},
        -- [ "LazySpecial"] = {},
        -- [ "LazyTaskError"] = {},
        -- [ "LazyTaskOutput"] = {},
        -- [ "LazyUrl"] = {},
        -- [ "LazyValue"] = {},

        ------------------------------------------------------------------------------------------

        -- lua
        ["luaParenError"] = { link = "Normal" },

        ------------------------------------------------------------------------------------------

        -- xml
        ["xmlAttrib"] = { link = "Variable" },
        ["xmlProcessingDelim"] = { fg = colors.fg_05 },
        ["xmlTag"] = { fg = colors.fg_05 },
        ["xmlTagName"] = { link = "Keyword" },
    }
end

return M
