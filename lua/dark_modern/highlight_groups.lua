local colors = require("dark_modern.palette")
local term_supports_undercurl = require("dark_modern").term_supports_undercurl

local M = {}

--- @overload fun(config: Config)
function M.get(config)
    local diagnostic = {
        error = colors.red_05,
        warn = colors.yellow_03,
        info = colors.blue_09,
        hint = colors.green_05,
        unnecessary = colors.blue_13,
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
        ["Conceal"] = { bg = colors.bg_12 },
        ["Cursor"] = { bg = colors.bg_15, fg = colors.fg_02 },
        ["CursorIM"] = { bg = colors.bg_15, fg = colors.fg_02 },
        ["CursorLine"] = {
            bg = config.transparent_background and colors.none or (config.cursorline and colors.bg_03 or colors.none),
        },
        ["CursorLineNr"] = {
            bg = config.transparent_background and colors.none or (config.cursorline and colors.bg_03 or colors.none),
            fg = colors.fg_13,
        },
        ["Directory"] = { fg = colors.yellow_02 },
        ["diffAdded"] = { fg = git.signs.add },
        ["diffRemoved"] = { fg = git.signs.delete },
        ["DiffAdd"] = { bg = git.diff.add },
        ["DiffChange"] = { bg = git.diff.change },
        ["DiffDelete"] = { bg = git.diff.delete },
        ["DiffText"] = { bg = git.diff.text },
        ["EndOfBuffer"] = { fg = config.custom_background or colors.bg },
        ["Error"] = { fg = diagnostic.error },
        ["ErrorMsg"] = { fg = diagnostic.error },
        ["FoldColumn"] = { bg = config.custom_background or colors.bg, fg = config.custom_background or colors.bg },
        ["Folded"] = { bg = colors.blue_05 },
        ["FloatBorder"] = {
            bg = config.transparent_background and colors.none or (config.custom_background or colors.bg),
            fg = colors.bg_12,
        },
        ["lCursor"] = { bg = colors.bg_15, fg = colors.fg_02 },
        ["LineNr"] = {
            bg = config.transparent_background and colors.none or (config.custom_background or colors.bg),
            fg = colors.fg_07,
        },
        ["MatchParen"] = { bg = colors.bg_13 },
        ["NonText"] = { fg = colors.bg_08, bg = colors.none },
        ["Normal"] = {
            bg = config.transparent_background and colors.none or (config.custom_background or colors.bg),
            fg = colors.fg,
        },
        ["NormalFloat"] = {
            bg = config.transparent_background and colors.none or (config.custom_background or colors.bg),
        },
        ["Search"] = { bg = colors.brown_01 },
        ["SignColumn"] = { bg = colors.none },
        ["SpellBad"] = { sp = colors.red_03, undercurl = config.undercurl and term_supports_undercurl() },
        ["SpellCap"] = { sp = colors.yellow_05, undercurl = config.undercurl and term_supports_undercurl() },
        ["SpellLocal"] = { sp = colors.blue_11, undercurl = config.undercurl and term_supports_undercurl() },
        ["SpellRare"] = { sp = colors.green_05, undercurl = config.undercurl and term_supports_undercurl() },
        ["StatusLine"] = { bg = colors.none },
        ["TermCursor"] = { bg = colors.fg_14, fg = colors.bg_01 },
        ["Title"] = { fg = colors.fg_15 },
        ["Visual"] = { bg = colors.blue_06 },
        ["WarningMsg"] = { fg = diagnostic.warn },
        ["Whitespace"] = { fg = colors.bg_08, bg = colors.none },
        ["WinBar"] = { fg = colors.fg_11 },
        ["WinSeparator"] = {
            fg = config.transparent_background and (config.custom_background or colors.bg) or "#080A0E",
        },

        -- Pmenu
        ["Pmenu"] = { bg = colors.bg_05, fg = colors.fg_14 },
        ["PmenuSbar"] = { bg = colors.bg_05 },
        ["PmenuSel"] = { bg = colors.blue_02, fg = colors.fg_15 },
        ["PmenuThumb"] = { bg = colors.bg_11 },

        -- Sintax
        ["Comment"] = { fg = colors.green_08 },

        ["Variable"] = { fg = colors.blue_15 },
        ["Constant"] = { fg = colors.blue_11 },
        ["String"] = { fg = colors.orange_01 },
        ["Character"] = { fg = colors.red_03 },
        ["Number"] = { fg = colors.green_09 },
        ["Boolean"] = { fg = colors.blue_12, italic = config.italic_keyword },
        ["Float"] = { fg = colors.green_09 },

        ["Identifier"] = { fg = colors.fg },
        ["Function"] = { fg = colors.yellow_05 },

        ["Statement"] = { fg = colors.purple_02, italic = config.italic_keyword },
        ["Conditional"] = { fg = colors.purple_02, italic = config.italic_keyword },
        ["Repeat"] = { fg = colors.purple_02, italic = config.italic_keyword },
        ["Label"] = { fg = colors.purple_02, italic = config.italic_keyword },
        ["Operator"] = { fg = colors.fg },
        ["Keyword"] = { fg = colors.blue_12, italic = config.italic_keyword },
        ["Exception"] = { fg = colors.purple_02, italic = config.italic_keyword },

        ["PreProc"] = { fg = colors.purple_02 },
        ["Include"] = { fg = colors.purple_02, italic = config.italic_keyword },
        ["Define"] = { fg = colors.purple_02 },
        ["Macro"] = { fg = colors.blue_12, italic = config.italic_keyword },
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

        -- nvim-treesitter/nvim-treesitter
        ["@attribute"] = { link = "@type" },
        ["@boolean"] = { fg = colors.blue_12, italic = config.italic_keyword },
        ["@character"] = { fg = colors.orange_01 },
        ["@character.special"] = { fg = colors.yellow_04 },
        ["@comment"] = { fg = colors.green_08 },
        ["@conditional"] = { fg = colors.purple_02, italic = config.italic_keyword },
        ["@constant"] = { fg = colors.blue_11 },
        ["@constant.builtin"] = { link = "@keyword" },
        ["@constant.macro"] = { fg = colors.blue_11 },
        ["@constructor"] = { fg = colors.green_05 },
        ["@define"] = { fg = colors.purple_02 },
        ["@exception"] = { fg = colors.purple_02, italic = config.italic_keyword },
        ["@field"] = { fg = colors.blue_15 },
        ["@float"] = { fg = colors.green_09 },
        ["@function"] = { fg = colors.yellow_05 },
        ["@function.builtin"] = { fg = colors.yellow_05 },
        ["@function.call"] = { fg = colors.yellow_05 },
        ["@function.macro"] = { fg = colors.blue_12 },
        ["@include"] = { fg = colors.purple_02, italic = config.italic_keyword },
        ["@keyword"] = { fg = colors.blue_12, italic = config.italic_keyword },
        ["@keyword.return"] = { fg = colors.purple_02, italic = config.italic_keyword },
        ["@label"] = { fg = colors.purple_02, italic = config.italic_keyword },
        ["@macro"] = { fg = colors.blue_12 },
        ["@method"] = { fg = colors.yellow_05 },
        ["@namespace"] = { fg = colors.green_05 },
        ["@number"] = { fg = colors.green_09 },
        ["@operator"] = { fg = colors.fg },
        ["@parameter"] = { fg = colors.blue_15 },
        ["@punctuation"] = { fg = colors.fg },
        ["@property"] = { fg = colors.blue_15 },
        ["@punctuation.delimiter"] = { fg = colors.fg },
        ["@repeat"] = { fg = colors.purple_02, italic = config.italic_keyword },
        ["@storageclass"] = { fg = colors.blue_12, italic = config.italic_keyword },
        ["@string"] = { fg = colors.orange_01 },
        ["@string.escape"] = { fg = colors.yellow_04 },
        ["@string.special"] = { fg = colors.yellow_04 },
        ["@tag"] = { fg = colors.blue_12 },
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
        ["@type.qualifier"] = { fg = colors.blue_12, italic = config.italic_keyword },
        ["@variable"] = { fg = colors.blue_15 },
        ["@variable.builtin"] = { link = "@variable" },

        -- C#
        ["@type.builtin.c_sharp"] = { fg = colors.blue_12, italic = config.italic_keyword },

        -- Diff
        ["@text.diff.add.diff"] = { fg = git.signs.add },
        ["@text.diff.delete.diff"] = { fg = git.signs.delete },

        -- Go
        ["@keyword.default.go"] = { fg = colors.purple_02 },
        ["@type.builtin.map.go"] = { link = "@keyword" },

        -- Go Checksum File
        ["@attribute.gosum"] = { fg = colors.fg },
        ["@number.gosum"] = { fg = colors.blue_12 },
        ["@string.special.gosum"] = { fg = colors.blue_12 },
        ["@symbol.gosum"] = { fg = colors.orange_01 },

        -- HTML
        ["@constant.html"] = { fg = colors.blue_12 },
        ["@text.html"] = { fg = colors.fg },
        ["@text.title.html"] = { fg = colors.fg },

        -- Java
        ["@function.builtin.super.java"] = { link = "@keyword" },
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
        ["@keyword.with"] = { fg = colors.purple_02 },
        ["@keyword.coroutine.await.python"] = { fg = colors.purple_02 },
        ["@variable.builtin.self.python"] = { link = "@keyword" },

        -- Ruby
        ["@label.ruby"] = { link = "@variable" },

        -- Rust
        ["@constant.builtin.rust"] = { link = "@constant" },
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

        ["@lsp.mod.controlFlow"] = { fg = colors.purple_02, italic = config.italic_keyword },
        ["@lsp.mod.macro"] = { link = "Macro" },
        ["@lsp.mod.mutable"] = { underline = true },
        ["@lsp.mod.readonly"] = { link = "Constant" },

        -- nvim-treesitter/nvim-treesitter-context
        ["TreesitterContext"] = { bg = colors.bg_04 },
        ["TreesitterContextLineNumber"] = { bg = colors.bg_04 },

        -- nvim-treesitter/playground
        ["nodeNumber"] = { link = "@number" },
        ["nodeType"] = { link = "@type" },
        ["nodeTag"] = { link = "@variable" },

        -- kevinhwang91/nvim-ufo
        ["UfoCursorFoldedLine"] = { bg = colors.blue_05 },
        ["UfoFoldedEllipsis"] = { fg = colors.fg_05 },

        -- ibhagwan/fzf-lua
        ["FzfLuaBorder"] = { fg = colors.fg_04 },

        -- nvim-telescope/telescope.nvim
        ["TelescopeMatching"] = { fg = colors.blue_07 },

        ["TelescopeMultiSelection"] = { fg = colors.fg },

        -- Telescope Preview
        ["TelescopePreviewBorder"] = {
            bg = config.transparent_background and colors.none or colors.bg_02,
            fg = config.transparent_background and colors.fg_11 or colors.bg_02,
        },
        ["TelescopePreviewNormal"] = { bg = config.transparent_background and colors.none or colors.bg_02 },
        ["TelescopePreviewTitle"] = {
            bg = config.transparent_background and colors.none or colors.blue_01,
            fg = colors.fg_15,
        },

        -- Telescope Prompt
        ["TelescopePromptBorder"] = {
            bg = config.transparent_background and colors.none or colors.bg_07,
            fg = config.transparent_background and colors.fg_11 or colors.bg_07,
        },
        ["TelescopePromptCounter"] = { fg = colors.bg_14 },
        ["TelescopePromptNormal"] = {
            bg = config.transparent_background and colors.none or colors.bg_07,
            fg = colors.bg_14,
        },
        ["TelescopePromptTitle"] = {
            bg = config.transparent_background and colors.none or colors.blue_01,
            fg = colors.fg_15,
        },

        -- Telescope Results
        ["TelescopeResultsBorder"] = {
            bg = config.transparent_background and colors.none or colors.bg_05,
            fg = config.transparent_background and colors.fg_11 or colors.bg_05,
        },
        ["TelescopeResultsNormal"] = { bg = config.transparent_background and colors.none or colors.bg_05 },
        ["TelescopeResultsTitle"] = {
            bg = config.transparent_background and colors.none or colors.blue_01,
            fg = colors.fg_15,
        },

        -- Telescope Results Diff
        ["TelescopeResultsDiffAdd"] = { fg = git.signs.add },
        ["TelescopeResultsDiffChange"] = { fg = git.signs.change },
        ["TelescopeResultsDiffDelete"] = { fg = git.signs.delete },
        ["TelescopeResultsDiffUntracked"] = { fg = git.status.untracked },

        -- Telescope Selection
        ["TelescopeSelection"] = { bg = colors.blue_02, fg = colors.fg_15 },

        -- neovim/nvim-lspconfig

        -- Diagnostics LSP
        ["DiagnosticBorder"] = { bg = config.custom_background or colors.bg, fg = colors.fg_04 },
        ["DiagnosticDeprecated"] = { strikethrough = true },
        ["DiagnosticError"] = { fg = diagnostic.error },
        ["DiagnosticFloatingError"] = { fg = diagnostic.error },
        ["DiagnosticFloatingHint"] = { fg = diagnostic.hint },
        ["DiagnosticFloatingInfo"] = { fg = diagnostic.info },
        ["DiagnosticFloatingWarn"] = { fg = diagnostic.warn },
        ["DiagnosticHint"] = { fg = diagnostic.hint },
        ["DiagnosticInfo"] = { fg = diagnostic.info },
        ["DiagnosticSignError"] = { fg = diagnostic.error },
        ["DiagnosticSignHint"] = { fg = diagnostic.hint },
        ["DiagnosticSignInfo"] = { fg = diagnostic.info },
        ["DiagnosticSignWarn"] = { fg = diagnostic.warn },
        ["DiagnosticUnderlineError"] = {
            sp = diagnostic.error,
            undercurl = config.undercurl and term_supports_undercurl(),
        },
        ["DiagnosticUnderlineHint"] = {
            sp = diagnostic.hint,
            undercurl = config.undercurl and term_supports_undercurl(),
        },
        ["DiagnosticUnderlineInfo"] = {
            sp = diagnostic.info,
            undercurl = config.undercurl and term_supports_undercurl(),
        },
        ["DiagnosticUnderlineWarn"] = {
            sp = diagnostic.warn,
            undercurl = config.undercurl and term_supports_undercurl(),
        },
        ["DiagnosticUnnecessary"] = { fg = diagnostic.unnecessary },
        ["DiagnosticVirtualTextError"] = { fg = diagnostic.error },
        ["DiagnosticVirtualTextHint"] = { fg = diagnostic.hint },
        ["DiagnosticVirtualTextInfo"] = { fg = diagnostic.info },
        ["DiagnosticVirtualTextWarn"] = { fg = diagnostic.warn },
        ["DiagnosticWarn"] = { fg = diagnostic.warn },

        -- LspInfo
        ["LspInfoBorder"] = { fg = colors.fg_04 },

        -- Codelens
        ["LspCodeLens"] = { fg = colors.fg_10 },
        ["LspCodeLensSeparator"] = { fg = colors.fg_10 },

        -- SmiteshP/nvim-navic
        ["NavicIconsFile"] = { fg = colors.fg_14 },
        ["NavicIconsModule"] = { fg = colors.fg_14 },
        ["NavicIconsNamespace"] = { fg = colors.fg_14 },
        ["NavicIconsPackage"] = { fg = colors.fg_14 },
        ["NavicIconsClass"] = { fg = colors.orange_02 },
        ["NavicIconsMethod"] = { fg = colors.purple_01 },
        ["NavicIconsProperty"] = { fg = colors.blue_14 },
        ["NavicIconsField"] = { fg = colors.blue_14 },
        ["NavicIconsConstructor"] = { fg = colors.purple_01 },
        ["NavicIconsEnum"] = { fg = colors.orange_02 },
        ["NavicIconsInterface"] = { fg = colors.blue_14 },
        ["NavicIconsFunction"] = { fg = colors.purple_01 },
        ["NavicIconsVariable"] = { fg = colors.blue_14 },
        ["NavicIconsConstant"] = { fg = colors.fg_14 },
        ["NavicIconsString"] = { fg = colors.fg_14 },
        ["NavicIconsNumber"] = { fg = colors.fg_14 },
        ["NavicIconsBoolean"] = { fg = colors.fg_14 },
        ["NavicIconsArray"] = { fg = colors.fg_14 },
        ["NavicIconsObject"] = { fg = colors.fg_14 },
        ["NavicIconsKey"] = { fg = colors.fg_14 },
        ["NavicIconsNull"] = { fg = colors.fg_14 },
        ["NavicIconsEnumMember"] = { fg = colors.blue_14 },
        ["NavicIconsStruct"] = { fg = colors.fg_14 },
        ["NavicIconsEvent"] = { fg = colors.fg_14 },
        ["NavicIconsOperator"] = { fg = colors.fg_14 },
        ["NavicIconsTypeParameter"] = { fg = colors.fg_14 },
        ["NavicText"] = { fg = colors.fg_11 },
        ["NavicSeparator"] = { fg = colors.fg_11 },

        -- williamboman/mason.nvim
        ["MasonError"] = { fg = diagnostic.error },
        ["MasonWarning"] = { fg = diagnostic.warn },

        -- folke/trouble.nvim
        ["TroubleCode"] = { fg = colors.blue_08, underline = true },
        ["TroubleCount"] = { bg = colors.bg_10, fg = colors.fg_15 },
        ["TroubleFile"] = { fg = colors.fg_14 },
        ["TroubleFoldIcon"] = { fg = colors.fg_12 },
        ["TroubleLocation"] = { fg = colors.fg_09 },
        ["TroublePreview"] = { bg = colors.bg_09 },
        ["TroubleSignError"] = { fg = diagnostic.error },
        ["TroubleSignHint"] = { fg = diagnostic.hint },
        ["TroubleSignInformation"] = { fg = diagnostic.info },
        ["TroubleSignWarning"] = { fg = diagnostic.warn },
        ["TroubleSource"] = { fg = colors.fg_09 },
        ["TroubleTextError"] = { fg = colors.fg },
        ["TroubleTextHint"] = { fg = colors.fg },
        ["TroubleTextInformation"] = { fg = colors.fg },
        ["TroubleTextWarning"] = { fg = colors.fg },

        -- mfussenegger/nvim-dap
        ["DapBreakpoint"] = { fg = colors.red_04 },
        ["DapStopped"] = { fg = colors.yellow_06 },
        ["DapBreakpointRejected"] = { fg = colors.fg_06 },

        -- rcarriga/nvim-dap-ui
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

        -- hrsh7th/nvim-cmp
        ["CmpDoc"] = {
            bg = config.transparent_background and colors.none or (config.custom_background or colors.bg),
            fg = colors.fg,
        },
        ["CmpDocBorder"] = {
            bg = config.transparent_background and colors.none or (config.custom_background or colors.bg),
            fg = colors.bg_12,
        },
        ["CmpItemAbbrDeprecated"] = { fg = colors.fg_14, strikethrough = true },
        ["CmpItemAbbrMatch"] = { fg = colors.blue_07 },
        ["CmpItemKind"] = { fg = colors.fg_14 },
        ["CmpItemKindClass"] = { fg = colors.orange_02 },
        ["CmpItemKindColor"] = { fg = colors.fg },
        ["CmpItemKindConstant"] = { fg = colors.fg_14 },
        ["CmpItemKindConstructor"] = { fg = colors.purple_01 },
        ["CmpItemKindEnum"] = { fg = colors.orange_02 },
        ["CmpItemKindEnumMember"] = { fg = colors.blue_14 },
        ["CmpItemKindEvent"] = { fg = colors.fg_14 },
        ["CmpItemKindField"] = { fg = colors.blue_14 },
        ["CmpItemKindFile"] = { fg = colors.fg_14 },
        ["CmpItemKindFolder"] = { fg = colors.yellow_02 },
        ["CmpItemKindFunction"] = { fg = colors.purple_01 },
        ["CmpItemKindInterface"] = { fg = colors.blue_14 },
        ["CmpItemKindKeyword"] = { fg = colors.fg_14 },
        ["CmpItemKindMethod"] = { fg = colors.purple_01 },
        ["CmpItemKindModule"] = { fg = colors.fg_14 },
        ["CmpItemKindOperator"] = { fg = colors.fg_14 },
        ["CmpItemKindProperty"] = { fg = colors.blue_14 },
        ["CmpItemKindReference"] = { fg = colors.fg_14 },
        ["CmpItemKindSnippet"] = { fg = colors.fg_14 },
        ["CmpItemKindSnippetFunction"] = { fg = colors.fg_14 },
        ["CmpItemKindSnippetStruct"] = { fg = colors.fg_14 },
        ["CmpItemKindStruct"] = { fg = colors.fg_14 },
        ["CmpItemKindText"] = { fg = colors.fg_14 },
        ["CmpItemKindTypeParameter"] = { fg = colors.fg_14 },
        ["CmpItemKindUnit"] = { fg = colors.fg_14 },
        ["CmpItemKindValue"] = { fg = colors.orange_02 },
        ["CmpItemKindVariable"] = { fg = colors.blue_14 },
        ["CmpMenu"] = {
            bg = config.transparent_background and colors.none or (config.custom_background or colors.bg),
            fg = colors.fg,
        },
        ["CmpMenuBorder"] = {
            bg = config.transparent_background and colors.none or (config.custom_background or colors.bg),
            fg = colors.bg_12,
        },
        ["CmpMenuSel"] = { bg = colors.blue_02, fg = colors.fg_15 },

        -- lewis6991/gitsigns.nvim
        ["GitSignsAdd"] = { fg = git.signs.add },
        ["GitSignsChange"] = { fg = git.signs.change },
        ["GitSignsDelete"] = { fg = git.signs.delete },

        -- petertriho/nvim-scrollbar
        ["ScrollbarError"] = { fg = diagnostic.error },
        ["ScrollbarErrorHandle"] = { fg = diagnostic.error },
        ["ScrollbarGitAdd"] = { fg = git.signs.add },
        ["ScrollbarGitAddHandle"] = { fg = git.signs.add },
        ["ScrollbarGitChange"] = { fg = git.signs.change },
        ["ScrollbarGitChangeHandle"] = { fg = git.signs.change },
        ["ScrollbarGitDelete"] = { fg = git.signs.delete },
        ["ScrollbarGitDeleteHandle"] = { fg = git.signs.delete },
        ["ScrollbarHint"] = { fg = diagnostic.hint },
        ["ScrollbarHintHandle"] = { fg = diagnostic.hint },
        ["ScrollbarInfo"] = { fg = diagnostic.info },
        ["ScrollbarInfoHandle"] = { fg = diagnostic.info },
        ["ScrollbarWarn"] = { fg = diagnostic.warn },
        ["ScrollbarWarnHandle"] = { fg = diagnostic.warn },

        -- nvim-tree/nvim-tree.lua
        ["NvimTreeClosedFolderIcon"] = { link = "NvimTreeFolderIcon" },
        ["NvimTreeCursorLine"] = { bg = config.transparent_background and colors.none or colors.bg_06 },
        ["NvimTreeFolderIcon"] = { fg = colors.yellow_02 },
        ["NvimTreeFolderName"] = { fg = colors.fg },
        ["NvimTreeGitDeleted"] = { fg = git.status.deleted },
        ["NvimTreeGitDirty"] = { fg = git.status.modified },
        ["NvimTreeGitIgnored"] = { fg = git.status.ignored },
        ["NvimTreeGitNew"] = { fg = git.status.untracked },
        ["NvimTreeGitRenamed"] = { fg = git.status.untracked },
        ["NvimTreeGitStaged"] = { fg = git.status.staged },
        ["NvimTreeIndentMarker"] = { fg = colors.fg_03 },
        ["NvimTreeLspDiagnosticsError"] = { fg = diagnostic.error },
        ["NvimTreeLspDiagnosticsHint"] = { fg = diagnostic.hint },
        ["NvimTreeLspDiagnosticsInformation"] = { fg = diagnostic.info },
        ["NvimTreeLspDiagnosticsWarning"] = { fg = diagnostic.warn },
        ["NvimTreeModifiedFile"] = { fg = colors.fg },
        ["NvimTreeNormal"] = {
            bg = config.transparent_background and colors.none
                or (config.nvim_tree_darker and colors.bg_01 or (config.custom_background or colors.bg)),
        },
        ["NvimTreeOpenedFile"] = { fg = colors.fg },
        ["NvimTreeOpenedFolderIcon"] = { link = "NvimTreeFolderIcon" },
        ["NvimTreeOpenedFolderName"] = { fg = colors.fg },
        ["NvimTreeRootFolder"] = { fg = colors.fg_14 },
        ["NvimTreeWinSeparator"] = {
            bg = config.transparent_background and colors.none or (config.custom_background or colors.bg),
            fg = (config.custom_background or colors.bg),
        },

        -- akinsho/toggleterm.nvim
        ["ToggleTermNormalFloat"] = { bg = colors.bg_02 },
        ["ToggleTermFloatBorder"] = { bg = colors.bg_02, fg = colors.bg_02 },

        -- lukas-reineke/indent-blankline.nvim v2
        ["IndentBlanklineChar"] = { fg = colors.bg_08, bg = colors.none },
        ["IndentBlanklineContextChar"] = { fg = colors.bg_12, bg = colors.none },

        -- lukas-reineke/indent-blankline.nvim v3
        ["IblIndent"] = { fg = colors.bg_08, bg = colors.none },
        ["IblScope"] = { fg = colors.bg_12, bg = colors.none },

        -- goolord/alpha-nvim
        ["AlphaButton"] = { fg = colors.blue_09 },
        ["AlphaHeader"] = { fg = colors.blue_10 },
        ["AlphaShorcut"] = { fg = colors.fg_07 },

        -- folke/lazy.nvim
        ["LazyButton"] = { bg = colors.blue_04 },
        ["LazyButtonActive"] = { bg = colors.green_02 },
        ["LazyComment"] = { fg = colors.fg_07 },
        ["LazyH1"] = { bg = colors.green_02 },

        -- lua
        ["luaParenError"] = { link = "Normal" },

        -- xml
        ["xmlAttrib"] = { link = "Variable" },
        ["xmlProcessingDelim"] = { fg = colors.fg_05 },
        ["xmlTag"] = { fg = colors.fg_05 },
        ["xmlTagName"] = { link = "Keyword" },
    }
end

return M
