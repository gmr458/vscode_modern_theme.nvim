local term_supports_undercurl = require('vscode_modern').term_supports_undercurl

local M = {}

--- @overload fun(config: Config, theme: Theme)
function M.get(config, theme)
    local palette = theme.palette

    return {
        -- Editor
        ['Conceal'] = { bg = palette.grey_17 },
        ['Cursor'] = { bg = theme.ui.cursor.bg, fg = theme.ui.cursor.fg },
        ['CursorIM'] = { bg = theme.ui.cursor.bg, fg = theme.ui.cursor.fg },
        ['CursorLine'] = {
            bg = config.transparent_background and palette.none
                or (
                    config.cursorline and theme.ui.cursor.line.bg
                    or palette.none
                ),
        },
        ['CursorLineNr'] = {
            bg = config.transparent_background and palette.none
                or (
                    config.cursorline and theme.ui.cursor.line.nr.bg
                    or palette.none
                ),
            fg = theme.ui.cursor.line.nr.fg,
        },
        ['Directory'] = { fg = theme.ui.directory.fg },
        ['diffAdded'] = { fg = theme.git.signs.add },
        ['diffRemoved'] = { fg = theme.git.signs.delete },
        ['DiffAdd'] = { bg = theme.git.diff.add },
        ['DiffChange'] = { bg = theme.git.diff.change },
        ['DiffDelete'] = { bg = theme.git.diff.delete },
        ['DiffText'] = { bg = theme.git.diff.text },
        ['EndOfBuffer'] = { fg = theme.ui.bg },
        ['ErrorMsg'] = { fg = theme.diagnostics.error },
        ['FoldColumn'] = {
            bg = theme.ui.bg,
            fg = theme.ui.bg,
        },
        ['Folded'] = { bg = theme.ui.folded.bg },
        ['FloatBorder'] = {
            bg = config.transparent_background and palette.none
                or theme.ui.float.border.bg,
            fg = theme.ui.float.border.fg,
        },
        ['lCursor'] = { bg = theme.ui.cursor.bg, fg = theme.ui.cursor.fg },
        ['LineNr'] = {
            bg = config.transparent_background and palette.none
                or theme.ui.line_nr.bg,
            fg = theme.ui.line_nr.fg,
        },
        ['MatchParen'] = { bg = theme.ui.match_paren.bg },
        ['NonText'] = { fg = theme.ui.indent_guide.fg, bg = palette.none },
        ['Normal'] = {
            bg = config.transparent_background and palette.none or theme.ui.bg,
            fg = theme.ui.fg,
        },
        ['NormalFloat'] = {
            bg = config.transparent_background and palette.none
                or theme.ui.float.bg,
        },
        ['Search'] = { bg = theme.ui.search.bg },
        ['SignColumn'] = { bg = palette.none },
        ['SpellBad'] = {
            sp = theme.diagnostics.error,
            undercurl = config.undercurl and term_supports_undercurl(),
        },
        ['SpellCap'] = {
            sp = theme.diagnostics.warn,
            undercurl = config.undercurl and term_supports_undercurl(),
        },
        ['SpellLocal'] = {
            sp = theme.diagnostics.info,
            undercurl = config.undercurl and term_supports_undercurl(),
        },
        ['SpellRare'] = {
            sp = theme.diagnostics.hint,
            undercurl = config.undercurl and term_supports_undercurl(),
        },
        ['StatusLine'] = {
            bg = theme.ui.status_line.bg,
            fg = theme.ui.status_line.fg,
        },
        ['TermCursor'] = {
            bg = theme.ui.cursor.term.bg,
            fg = theme.ui.cursor.term.fg,
        },
        ['Title'] = { fg = palette.light_15 },
        ['Visual'] = { bg = theme.ui.visual.bg },
        ['WarningMsg'] = { fg = theme.diagnostics.warn },
        ['Whitespace'] = { fg = theme.ui.indent_guide.fg, bg = palette.none },
        ['WinBar'] = { fg = palette.light_02 },
        ['WinBarNC'] = { bg = theme.ui.bg },
        ['WinSeparator'] = {
            fg = config.transparent_background and theme.ui.bg
                or theme.ui.win_separator.fg,
        },

        -- Pmenu
        ['Pmenu'] = { bg = theme.ui.pmenu.bg, fg = theme.ui.pmenu.fg },
        ['PmenuSbar'] = { bg = theme.ui.pmenu.sbar.bg },
        ['PmenuSel'] = {
            bg = theme.ui.pmenu.sel.bg,
            fg = theme.ui.pmenu.sel.fg,
        },
        ['PmenuThumb'] = { bg = theme.ui.pmenu.thumb.bg },

        -- Sintax
        ['Comment'] = { fg = theme.sintax.comment },

        ['Variable'] = { fg = theme.sintax.variable },
        ['Constant'] = { fg = theme.sintax.constant },
        ['String'] = { fg = theme.sintax.string },
        ['Character'] = { fg = theme.sintax.character },
        ['Number'] = { fg = theme.sintax.number },
        ['Boolean'] = {
            fg = theme.sintax.keyword,
            italic = config.italic_keyword,
        },
        ['Float'] = { fg = theme.sintax.number },

        ['Identifier'] = { fg = theme.sintax.identifier },
        ['Function'] = { fg = theme.sintax.function_name },

        ['Statement'] = {
            fg = theme.sintax.keyword_control_flow,
            italic = config.italic_keyword,
        },
        ['Conditional'] = {
            fg = theme.sintax.keyword_control_flow,
            italic = config.italic_keyword,
        },
        ['Repeat'] = {
            fg = theme.sintax.keyword_control_flow,
            italic = config.italic_keyword,
        },
        ['Label'] = {
            fg = theme.sintax.keyword_control_flow,
            italic = config.italic_keyword,
        },
        ['Operator'] = { fg = theme.sintax.operator },
        ['Keyword'] = {
            fg = theme.sintax.keyword,
            italic = config.italic_keyword,
        },
        ['Exception'] = {
            fg = theme.sintax.keyword_control_flow,
            italic = config.italic_keyword,
        },

        ['PreProc'] = { fg = theme.sintax.keyword_control_flow },
        ['Include'] = {
            fg = theme.sintax.keyword_control_flow,
            italic = config.italic_keyword,
        },
        ['Define'] = { fg = theme.sintax.keyword_control_flow },
        ['Macro'] = {
            fg = theme.sintax.keyword,
            italic = config.italic_keyword,
        },
        ['PreCondit'] = { fg = theme.sintax.keyword_control_flow },

        ['Type'] = { fg = theme.sintax.type },
        ['StorageClass'] = { fg = theme.sintax.type },
        ['Structure'] = { fg = theme.sintax.type },
        ['Typedef'] = { fg = theme.sintax.type },

        ['Special'] = { fg = theme.sintax.special },
        ['SpecialChar'] = { fg = theme.sintax.special_char },
        ['Tag'] = { fg = theme.sintax.tag },
        ['Delimiter'] = { fg = theme.sintax.delimiter },
        ['SpecialComment'] = { fg = theme.sintax.special_comment },
        ['Debug'] = { fg = theme.sintax.debug },

        ['Underlined'] = { underline = true },

        -- ['Ignore'] = {},

        ['Error'] = { fg = theme.diagnostics.error },

        ['Todo'] = { fg = theme.sintax.todo },

        -- nvim-treesitter/nvim-treesitter
        ['@attribute'] = { link = '@type' },
        ['@boolean'] = { link = 'Boolean' },
        ['@character'] = { link = 'String' },
        ['@character.special'] = { link = 'SpecialChar' },
        ['@comment'] = { link = 'Comment' },
        ['@conditional'] = { link = 'Conditional' },
        ['@constant'] = { link = 'Constant' },
        ['@constant.builtin'] = { link = '@keyword' },
        ['@constant.macro'] = { link = 'Macro' },
        ['@constructor'] = { link = 'Type' },
        ['@define'] = { link = 'Define' },
        ['@exception'] = { link = 'Exception' },
        ['@field'] = { link = 'Variable' },
        ['@float'] = { link = 'Number' },
        ['@function'] = { link = 'Function' },
        ['@function.builtin'] = { link = 'Function' },
        ['@function.call'] = { link = 'Function' },
        ['@function.macro'] = { link = 'Macro' },
        ['@include'] = { link = 'Include' },
        ['@keyword'] = { link = 'Keyword' },
        ['@keyword.return'] = {
            fg = theme.sintax.keyword_control_flow,
            italic = config.italic_keyword,
        },
        ['@label'] = { link = 'Label' },
        ['@macro'] = { link = 'Macro' },
        ['@method'] = { link = 'Function' },
        ['@namespace'] = { fg = theme.sintax.namespace },
        ['@number'] = { link = 'Number' },
        ['@operator'] = { link = 'Operator' },
        ['@parameter'] = { link = 'Variable' },
        ['@punctuation'] = { fg = theme.sintax.punctuation },
        ['@property'] = { link = 'Variable' },
        ['@punctuation.delimiter'] = { fg = theme.sintax.punctuation },
        ['@repeat'] = { link = 'Repeat' },
        ['@storageclass'] = { link = 'StorageClass' },
        ['@string'] = { link = 'String' },
        ['@string.escape'] = { link = 'SpecialChar' },
        ['@string.special'] = { link = 'SpecialChar' },
        ['@tag'] = { fg = theme.sintax.xml_tag },
        ['@tag.attribute'] = { link = 'Variable' },
        ['@tag.delimiter'] = { fg = theme.sintax.xml_delimiter },
        ['@text.literal'] = { link = 'String' },
        ['@text.reference'] = { link = 'Constant' },
        ['@text.title'] = { link = 'Title' },
        ['@text.todo'] = { link = 'Todo' },
        ['@text.underline'] = { link = 'Underlined' },
        ['@text.uri'] = { fg = theme.sintax.string, underline = true },
        ['@type'] = { link = 'Type' },
        ['@type.builtin'] = { link = 'Type' },
        ['@type.definition'] = { link = 'Type' },
        ['@type.qualifier'] = { link = 'Keyword' },
        ['@variable'] = { link = 'Variable' },
        ['@variable.builtin'] = { link = 'Variable' },

        -- C#
        ['@type.builtin.c_sharp'] = { link = 'Keyword' },

        -- Diff
        ['@text.diff.add.diff'] = { fg = theme.git.signs.add },
        ['@text.diff.delete.diff'] = { fg = theme.git.signs.delete },

        -- Go
        ['@keyword.default.go'] = { fg = theme.sintax.keyword_control_flow },
        ['@type.builtin.map.go'] = { link = 'Keyword' },

        -- Go Checksum File
        ['@attribute.gosum'] = { link = 'Identifier' },
        ['@number.gosum'] = { link = 'Keyword' },
        ['@string.special.gosum'] = { link = 'Keyword' },
        ['@symbol.gosum'] = { link = 'String' },

        -- HTML
        ['@constant.html'] = { link = 'Keyword' },
        ['@text.html'] = { link = 'Identifier' },
        ['@text.title.html'] = { link = 'Identifier' },

        -- Java
        ['@function.builtin.super.java'] = { link = 'Keyword' },
        ['@variable.builtin.this.java'] = { link = 'Keyword' },

        -- JavaScript
        ['@constructor.constructor.javascript'] = { link = 'Keyword' },
        ['@keyword.coroutine.await.javascript'] = {
            fg = theme.sintax.keyword_control_flow,
        },
        ['@keyword.default.javascript'] = {
            fg = theme.sintax.keyword_control_flow,
        },
        ['@keyword.export.javascript'] = {
            fg = theme.sintax.keyword_control_flow,
        },
        ['@number.infinity.javascript'] = { link = 'Keyword' },
        ['@variable.builtin.this.javascript'] = { link = 'Keyword' },
        ['@variable.builtin.super.javascript'] = { link = 'Keyword' },

        -- JSON
        ['@label.json'] = { link = 'Variable' },

        -- JSON with comments
        ['@label.jsonc'] = { link = 'Variable' },

        -- Lua
        ['@constructor.lua'] = { link = '@punctuation' },

        -- Python
        ['@attribute.python'] = { link = 'Function' },
        ['@constructor.python'] = { link = 'Function' },
        ['@keyword.with'] = { fg = theme.sintax.keyword_control_flow },
        ['@keyword.coroutine.await.python'] = {
            fg = theme.sintax.keyword_control_flow,
        },
        ['@variable.builtin.self.python'] = { link = 'Keyword' },

        -- Ruby
        ['@label.ruby'] = { link = 'Variable' },

        -- Rust
        ['@constant.builtin.rust'] = { link = 'Constant' },
        ['@keyword.coroutine.await.rust'] = {
            fg = theme.sintax.keyword_control_flow,
        },
        ['@variable.builtin.rust'] = { link = 'Keyword' },

        -- TypeScript
        ['@constructor.constructor.typescript'] = { link = 'Keyword' },
        ['@constant.builtin.undefined.typescript'] = { link = 'Keyword' },
        ['@keyword.coroutine.await.typescript'] = {
            fg = theme.sintax.keyword_control_flow,
        },
        ['@keyword.default.typescript'] = {
            fg = theme.sintax.keyword_control_flow,
        },
        ['@keyword.export.typescript'] = {
            fg = theme.sintax.keyword_control_flow,
        },
        ['@number.infinity.typescript'] = { link = 'Keyword' },
        ['@variable.builtin.super.typescript'] = { link = 'Keyword' },
        ['@variable.builtin.this.typescript'] = { link = 'Keyword' },

        -- TypeScript JSX
        ['@keyword.as.tsx'] = { fg = theme.sintax.keyword_control_flow },
        ['@keyword.coroutine.await.tsx'] = {
            fg = theme.sintax.keyword_control_flow,
        },
        ['@keyword.default.tsx'] = { fg = theme.sintax.keyword_control_flow },
        ['@keyword.export.tsx'] = { fg = theme.sintax.keyword_control_flow },

        -- Semantic Tokens
        ['@lsp.type.annotation'] = { link = 'Type' },
        ['@lsp.type.boolean'] = { link = 'Boolean' },
        ['@lsp.type.character'] = { link = 'Character' },
        ['@lsp.type.class'] = { link = '@lsp' },
        ['@lsp.type.formatSpecifier'] = { link = 'Keyword' },
        ['@lsp.type.parameter'] = { link = 'Variable' },
        ['@lsp.type.property'] = { link = 'Variable' },
        ['@lsp.type.method'] = { link = 'Function' },
        ['@lsp.type.number'] = { link = 'Number' },
        ['@lsp.type.selfKeyword'] = { link = 'Keyword' },
        ['@lsp.type.selfTypeKeyword'] = { link = 'Keyword' },
        ['@lsp.type.string'] = { link = 'String' },
        ['@lsp.type.variable'] = { link = 'Variable' },

        ['@lsp.typemod.boolean.macro'] = { link = 'Boolean' },
        ['@lsp.typemod.character.macro'] = { link = 'Character' },
        ['@lsp.typemod.class.constructor'] = { link = 'Function' },
        ['@lsp.typemod.class.importDeclaration'] = { link = 'Type' },
        ['@lsp.typemod.class.readonly'] = { link = 'Type' },
        ['@lsp.typemod.enum.declaration'] = { link = 'Type' },
        ['@lsp.typemod.enum.public'] = { link = 'Type' },
        ['@lsp.typemod.function.declaration'] = { link = 'Function' },
        ['@lsp.typemod.function.local'] = { link = 'Function' },
        ['@lsp.typemod.function.macro'] = { link = 'Function' },
        ['@lsp.typemod.function.readonly'] = { link = 'Function' },
        ['@lsp.typemod.generic.macro'] = { link = 'Variable' },
        ['@lsp.typemod.method.macro'] = { link = 'Function' },
        ['@lsp.typemod.namespace.macro'] = { link = 'Type' },
        ['@lsp.typemod.number.macro'] = { link = 'Number' },
        ['@lsp.typemod.parameter.macro'] = { link = 'Variable' },
        ['@lsp.typemod.property.macro'] = { link = 'Variable' },
        ['@lsp.typemod.string.macro'] = { link = 'String' },
        ['@lsp.typemod.struct.macro'] = { link = 'Type' },
        ['@lsp.typemod.variable.constant'] = { link = 'Constant' },
        ['@lsp.typemod.variable.macro'] = { link = 'Variable' },
        ['@lsp.typemod.variable.static'] = { link = 'Constant' },

        ['@lsp.mod.controlFlow'] = {
            fg = theme.sintax.keyword_control_flow,
            italic = config.italic_keyword,
        },
        ['@lsp.mod.macro'] = { link = 'Macro' },
        ['@lsp.mod.mutable'] = { link = 'Underlined' },
        ['@lsp.mod.readonly'] = { link = 'Constant' },

        -- nvim-treesitter/nvim-treesitter-context
        ['TreesitterContext'] = { bg = theme.ui.context.bg },
        ['TreesitterContextLineNumber'] = { bg = theme.ui.context.bg },

        -- nvim-treesitter/playground
        ['nodeNumber'] = { link = 'Number' },
        ['nodeType'] = { link = 'Type' },
        ['nodeTag'] = { link = 'Variable' },

        -- kevinhwang91/nvim-ufo
        ['UfoCursorFoldedLine'] = { bg = theme.ui.folded.bg },
        ['UfoFoldedEllipsis'] = { fg = palette.grey_19 },

        -- ibhagwan/fzf-lua
        ['FzfLuaBorder'] = { fg = palette.grey_18 },

        -- nvim-telescope/telescope.nvim
        ['TelescopeMatching'] = { fg = theme.ui.telescope.matching.fg },

        ['TelescopeMultiSelection'] = { fg = theme.ui.fg },

        -- Telescope Preview
        ['TelescopePreviewBorder'] = {
            bg = config.transparent_background and palette.none
                or theme.ui.telescope.preview.border.bg,
            fg = config.transparent_background and palette.light_02
                or theme.ui.telescope.preview.border.fg,
        },
        ['TelescopePreviewNormal'] = {
            bg = config.transparent_background and palette.none
                or theme.ui.telescope.preview.bg,
        },
        ['TelescopePreviewTitle'] = {
            bg = config.transparent_background and palette.none
                or theme.ui.telescope.preview.title.bg,
            fg = theme.ui.telescope.preview.title.fg,
        },

        -- Telescope Prompt
        ['TelescopePromptBorder'] = {
            bg = config.transparent_background and palette.none
                or theme.ui.telescope.prompt.border.bg,
            fg = config.transparent_background and palette.light_02
                or theme.ui.telescope.prompt.border.fg,
        },
        ['TelescopePromptCounter'] = {
            fg = theme.ui.telescope.prompt.counter.fg,
        },
        ['TelescopePromptNormal'] = {
            bg = config.transparent_background and palette.none
                or theme.ui.telescope.prompt.bg,
            fg = theme.ui.telescope.prompt.fg,
        },
        ['TelescopePromptTitle'] = {
            bg = config.transparent_background and palette.none
                or theme.ui.telescope.prompt.title.bg,
            fg = theme.ui.telescope.prompt.title.fg,
        },

        -- Telescope Results
        ['TelescopeResultsBorder'] = {
            bg = config.transparent_background and palette.none
                or theme.ui.telescope.results.border.bg,
            fg = config.transparent_background and palette.light_02
                or theme.ui.telescope.results.border.fg,
        },
        ['TelescopeResultsNormal'] = {
            bg = config.transparent_background and palette.none
                or theme.ui.telescope.results.bg,
        },
        ['TelescopeResultsTitle'] = {
            bg = config.transparent_background and palette.none
                or theme.ui.telescope.results.title.bg,
            fg = theme.ui.telescope.results.title.fg,
        },

        -- Telescope Results Diff
        ['TelescopeResultsDiffAdd'] = { fg = theme.git.signs.add },
        ['TelescopeResultsDiffChange'] = { fg = theme.git.signs.change },
        ['TelescopeResultsDiffDelete'] = { fg = theme.git.signs.delete },
        ['TelescopeResultsDiffUntracked'] = { fg = theme.git.status.untracked },

        -- Telescope Selection
        ['TelescopeSelection'] = {
            bg = theme.ui.telescope.selection.bg,
            fg = theme.ui.telescope.selection.fg,
        },

        -- neovim/nvim-lspconfig

        -- Diagnostics LSP
        ['DiagnosticBorder'] = {
            bg = theme.ui.float.border.bg,
            fg = theme.ui.float.border.fg,
        },
        ['DiagnosticDeprecated'] = { strikethrough = true },
        ['DiagnosticError'] = { fg = theme.diagnostics.error },
        ['DiagnosticFloatingError'] = { fg = theme.diagnostics.error },
        ['DiagnosticFloatingHint'] = { fg = theme.diagnostics.hint },
        ['DiagnosticFloatingInfo'] = { fg = theme.diagnostics.info },
        ['DiagnosticFloatingWarn'] = { fg = theme.diagnostics.warn },
        ['DiagnosticHint'] = { fg = theme.diagnostics.hint },
        ['DiagnosticInfo'] = { fg = theme.diagnostics.info },
        ['DiagnosticSignError'] = { fg = theme.diagnostics.error },
        ['DiagnosticSignHint'] = { fg = theme.diagnostics.hint },
        ['DiagnosticSignInfo'] = { fg = theme.diagnostics.info },
        ['DiagnosticSignWarn'] = { fg = theme.diagnostics.warn },
        ['DiagnosticUnderlineError'] = {
            sp = theme.diagnostics.error,
            undercurl = config.undercurl and term_supports_undercurl(),
        },
        ['DiagnosticUnderlineHint'] = {
            sp = theme.diagnostics.hint,
            undercurl = config.undercurl and term_supports_undercurl(),
        },
        ['DiagnosticUnderlineInfo'] = {
            sp = theme.diagnostics.info,
            undercurl = config.undercurl and term_supports_undercurl(),
        },
        ['DiagnosticUnderlineWarn'] = {
            sp = theme.diagnostics.warn,
            undercurl = config.undercurl and term_supports_undercurl(),
        },
        ['DiagnosticUnnecessary'] = { fg = theme.diagnostics.unnecessary },
        ['DiagnosticVirtualTextError'] = { fg = theme.diagnostics.error },
        ['DiagnosticVirtualTextHint'] = { fg = theme.diagnostics.hint },
        ['DiagnosticVirtualTextInfo'] = { fg = theme.diagnostics.info },
        ['DiagnosticVirtualTextWarn'] = { fg = theme.diagnostics.warn },
        ['DiagnosticWarn'] = { fg = theme.diagnostics.warn },

        -- LspInfo
        ['LspInfoBorder'] = { fg = theme.ui.float.border.fg },

        -- Codelens
        ['LspCodeLens'] = { fg = palette.grey_26 },
        ['LspCodeLensSeparator'] = { fg = palette.grey_26 },

        -- SmiteshP/nvim-navic
        ['NavicIconsFile'] = { fg = theme.ui.fg },
        ['NavicIconsModule'] = { fg = theme.ui.fg },
        ['NavicIconsNamespace'] = { fg = theme.ui.fg },
        ['NavicIconsPackage'] = { fg = theme.ui.fg },
        ['NavicIconsClass'] = { fg = palette.orange_02 },
        ['NavicIconsMethod'] = { fg = palette.purple_01 },
        ['NavicIconsProperty'] = { fg = palette.blue_14 },
        ['NavicIconsField'] = { fg = palette.blue_14 },
        ['NavicIconsConstructor'] = { fg = palette.purple_01 },
        ['NavicIconsEnum'] = { fg = palette.orange_02 },
        ['NavicIconsInterface'] = { fg = palette.blue_14 },
        ['NavicIconsFunction'] = { fg = palette.purple_01 },
        ['NavicIconsVariable'] = { fg = palette.blue_14 },
        ['NavicIconsConstant'] = { fg = theme.ui.fg },
        ['NavicIconsString'] = { fg = theme.ui.fg },
        ['NavicIconsNumber'] = { fg = theme.ui.fg },
        ['NavicIconsBoolean'] = { fg = theme.ui.fg },
        ['NavicIconsArray'] = { fg = theme.ui.fg },
        ['NavicIconsObject'] = { fg = theme.ui.fg },
        ['NavicIconsKey'] = { fg = theme.ui.fg },
        ['NavicIconsNull'] = { fg = theme.ui.fg },
        ['NavicIconsEnumMember'] = { fg = palette.blue_14 },
        ['NavicIconsStruct'] = { fg = theme.ui.fg },
        ['NavicIconsEvent'] = { fg = theme.ui.fg },
        ['NavicIconsOperator'] = { fg = theme.ui.fg },
        ['NavicIconsTypeParameter'] = { fg = theme.ui.fg },
        ['NavicText'] = { fg = palette.light_02 },
        ['NavicSeparator'] = { fg = palette.light_02 },

        -- williamboman/mason.nvim
        ['MasonError'] = { fg = theme.diagnostics.error },
        ['MasonWarning'] = { fg = theme.diagnostics.warn },

        -- folke/trouble.nvim
        ['TroubleCode'] = { fg = palette.blue_08, underline = true },
        ['TroubleCount'] = { bg = palette.grey_11, fg = palette.light_15 },
        ['TroubleFile'] = { fg = theme.ui.fg },
        ['TroubleFoldIcon'] = { fg = palette.light_05 },
        ['TroubleLocation'] = { fg = palette.grey_25 },
        ['TroublePreview'] = { bg = palette.grey_10 },
        ['TroubleSignError'] = { fg = theme.diagnostics.error },
        ['TroubleSignHint'] = { fg = theme.diagnostics.hint },
        ['TroubleSignInformation'] = { fg = theme.diagnostics.info },
        ['TroubleSignWarning'] = { fg = theme.diagnostics.warn },
        ['TroubleSource'] = { fg = palette.grey_25 },
        ['TroubleTextError'] = { fg = theme.ui.fg },
        ['TroubleTextHint'] = { fg = theme.ui.fg },
        ['TroubleTextInformation'] = { fg = theme.ui.fg },
        ['TroubleTextWarning'] = { fg = theme.ui.fg },

        -- mfussenegger/nvim-dap
        ['DapBreakpoint'] = { fg = palette.red_04 },
        ['DapStopped'] = { fg = palette.yellow_06 },
        ['DapBreakpointRejected'] = { fg = palette.grey_20 },

        -- rcarriga/nvim-dap-ui
        ['DapUIScope'] = { fg = theme.ui.fg },
        ['DapUIVariable'] = { link = 'Variable' },
        ['DapUIType'] = { link = 'Type' },
        ['DapUIValue'] = { fg = palette.grey_20 },
        ['DapUIDecoration'] = { fg = theme.ui.fg },
        ['DapUIBreakpointsPath'] = { fg = theme.ui.fg },
        ['DapUILineNumber'] = { link = 'LineNr' },
        ['DapUIStoppedThread'] = { fg = theme.ui.fg },
        ['DapUICurrentFrameName'] = { fg = theme.ui.fg },
        ['DapUISource'] = { fg = theme.ui.fg },
        ['DapUIThread'] = { fg = theme.ui.fg },
        ['DapUIWatchesEmpty'] = { fg = palette.grey_20 },
        ['DapUIWatchesValue'] = { fg = theme.ui.fg },

        -- hrsh7th/nvim-cmp
        ['CmpDoc'] = {
            bg = config.transparent_background and palette.none or theme.ui.bg,
            fg = theme.ui.fg,
        },
        ['CmpDocBorder'] = {
            bg = config.transparent_background and palette.none
                or theme.ui.float.border.bg,
            fg = theme.ui.float.border.fg,
        },
        ['CmpItemAbbrDeprecated'] = {
            fg = theme.ui.fg,
            strikethrough = true,
        },
        ['CmpItemAbbrMatch'] = { fg = palette.blue_07 },
        ['CmpItemKind'] = { fg = theme.ui.fg },
        ['CmpItemKindClass'] = { fg = palette.orange_02 },
        ['CmpItemKindColor'] = { fg = theme.ui.fg },
        ['CmpItemKindConstant'] = { fg = theme.ui.fg },
        ['CmpItemKindConstructor'] = { fg = palette.purple_01 },
        ['CmpItemKindEnum'] = { fg = palette.orange_02 },
        ['CmpItemKindEnumMember'] = { fg = palette.blue_14 },
        ['CmpItemKindEvent'] = { fg = theme.ui.fg },
        ['CmpItemKindField'] = { fg = palette.blue_14 },
        ['CmpItemKindFile'] = { fg = theme.ui.fg },
        ['CmpItemKindFolder'] = { fg = palette.yellow_02 },
        ['CmpItemKindFunction'] = { fg = palette.purple_01 },
        ['CmpItemKindInterface'] = { fg = palette.blue_14 },
        ['CmpItemKindKeyword'] = { fg = theme.ui.fg },
        ['CmpItemKindMethod'] = { fg = palette.purple_01 },
        ['CmpItemKindModule'] = { fg = theme.ui.fg },
        ['CmpItemKindOperator'] = { fg = theme.ui.fg },
        ['CmpItemKindProperty'] = { fg = palette.blue_14 },
        ['CmpItemKindReference'] = { fg = theme.ui.fg },
        ['CmpItemKindSnippet'] = { fg = theme.ui.fg },
        ['CmpItemKindSnippetFunction'] = { fg = theme.ui.fg },
        ['CmpItemKindSnippetStruct'] = { fg = theme.ui.fg },
        ['CmpItemKindStruct'] = { fg = theme.ui.fg },
        ['CmpItemKindText'] = { fg = theme.ui.fg },
        ['CmpItemKindTypeParameter'] = { fg = theme.ui.fg },
        ['CmpItemKindUnit'] = { fg = theme.ui.fg },
        ['CmpItemKindValue'] = { fg = palette.orange_02 },
        ['CmpItemKindVariable'] = { fg = palette.blue_14 },
        ['CmpMenu'] = {
            bg = config.transparent_background and palette.none or theme.ui.bg,
            fg = theme.ui.fg,
        },
        ['CmpMenuBorder'] = {
            bg = config.transparent_background and palette.none
                or theme.ui.float.border.bg,
            fg = theme.ui.float.border.fg,
        },
        ['CmpMenuSel'] = { bg = palette.blue_02, fg = palette.light_15 },

        -- lewis6991/gitsigns.nvim
        ['GitSignsAdd'] = { fg = theme.git.signs.add },
        ['GitSignsChange'] = { fg = theme.git.signs.change },
        ['GitSignsDelete'] = { fg = theme.git.signs.delete },

        -- petertriho/nvim-scrollbar
        ['ScrollbarError'] = { fg = theme.diagnostics.error },
        ['ScrollbarErrorHandle'] = { fg = theme.diagnostics.error },
        ['ScrollbarGitAdd'] = { fg = theme.git.signs.add },
        ['ScrollbarGitAddHandle'] = { fg = theme.git.signs.add },
        ['ScrollbarGitChange'] = { fg = theme.git.signs.change },
        ['ScrollbarGitChangeHandle'] = { fg = theme.git.signs.change },
        ['ScrollbarGitDelete'] = { fg = theme.git.signs.delete },
        ['ScrollbarGitDeleteHandle'] = { fg = theme.git.signs.delete },
        ['ScrollbarHint'] = { fg = theme.diagnostics.hint },
        ['ScrollbarHintHandle'] = { fg = theme.diagnostics.hint },
        ['ScrollbarInfo'] = { fg = theme.diagnostics.info },
        ['ScrollbarInfoHandle'] = { fg = theme.diagnostics.info },
        ['ScrollbarWarn'] = { fg = theme.diagnostics.warn },
        ['ScrollbarWarnHandle'] = { fg = theme.diagnostics.warn },

        -- nvim-tree/nvim-tree.lua
        ['NvimTreeClosedFolderIcon'] = { link = 'NvimTreeFolderIcon' },
        ['NvimTreeCursorLine'] = {
            bg = config.transparent_background and palette.none
                or theme.ui.cursor.line.bg,
        },
        ['NvimTreeFolderIcon'] = { fg = theme.ui.directory.fg },
        ['NvimTreeFolderName'] = { fg = theme.ui.fg },
        ['NvimTreeGitDeleted'] = { fg = theme.git.status.deleted },
        ['NvimTreeGitDirty'] = { fg = theme.git.status.modified },
        ['NvimTreeGitIgnored'] = { fg = theme.git.status.ignored },
        ['NvimTreeGitNew'] = { fg = theme.git.status.untracked },
        ['NvimTreeGitRenamed'] = { fg = theme.git.status.untracked },
        ['NvimTreeGitStaged'] = { fg = theme.git.status.staged },
        ['NvimTreeIndentMarker'] = { fg = theme.ui.indent_guide.fg },
        ['NvimTreeLspDiagnosticsError'] = { fg = theme.diagnostics.error },
        ['NvimTreeLspDiagnosticsHint'] = { fg = theme.diagnostics.hint },
        ['NvimTreeLspDiagnosticsInformation'] = { fg = theme.diagnostics.info },
        ['NvimTreeLspDiagnosticsWarning'] = { fg = theme.diagnostics.warn },
        ['NvimTreeModifiedFile'] = { fg = theme.ui.fg },
        ['NvimTreeNormal'] = {
            bg = config.transparent_background and palette.none
                or (
                    config.nvim_tree_darker and theme.ui.bg_darker_01
                    or theme.ui.bg
                ),
        },
        ['NvimTreeOpenedFile'] = { fg = theme.ui.fg },
        ['NvimTreeOpenedFolderIcon'] = { link = 'NvimTreeFolderIcon' },
        ['NvimTreeOpenedFolderName'] = { fg = theme.ui.fg },
        ['NvimTreeRootFolder'] = { fg = theme.ui.fg },
        ['NvimTreeWinSeparator'] = {
            bg = config.transparent_background and palette.none or theme.ui.bg,
            fg = theme.ui.bg,
        },

        -- akinsho/toggleterm.nvim
        ['ToggleTermNormalFloat'] = { bg = palette.grey_01 },
        ['ToggleTermFloatBorder'] = {
            bg = palette.grey_01,
            fg = palette.grey_01,
        },

        -- lukas-reineke/indent-blankline.nvim v2
        ['IndentBlanklineChar'] = {
            fg = theme.ui.indent_guide.fg,
            bg = palette.none,
        },
        ['IndentBlanklineContextChar'] = {
            fg = theme.ui.indent_guide.active.fg,
            bg = palette.none,
        },

        -- lukas-reineke/indent-blankline.nvim v3
        ['IblIndent'] = { fg = theme.ui.indent_guide.fg, bg = palette.none },
        ['IblScope'] = {
            fg = theme.ui.indent_guide.active.fg,
            bg = palette.none,
        },

        -- goolord/alpha-nvim
        ['AlphaButton'] = { fg = palette.blue_09 },
        ['AlphaHeader'] = { fg = palette.blue_10 },
        ['AlphaShorcut'] = { fg = palette.grey_21 },

        -- folke/lazy.nvim
        ['LazyButton'] = { bg = theme.ui.title.bg, fg = theme.ui.title.fg },
        ['LazyButtonActive'] = { bg = palette.green_02, fg = theme.ui.title.fg },
        ['LazyComment'] = { fg = palette.grey_21 },
        ['LazyH1'] = { bg = palette.green_02, fg = theme.ui.title.fg },
        ['LazySpecial'] = { fg = palette.light_07 },

        -- lua
        ['luaParenError'] = { link = 'Normal' },

        -- xml
        ['xmlAttrib'] = { link = 'Variable' },
        ['xmlProcessingDelim'] = { fg = theme.sintax.xml_delimiter },
        ['xmlTag'] = { fg = theme.sintax.xml_delimiter },
        ['xmlTagName'] = { link = 'Keyword' },

        -- my custom statusline
        StatusLineMode = {
            bg = theme.ui.status_line.mode.bg,
            fg = theme.ui.status_line.mode.fg,
        },
        StatusLineLspError = {
            bg = theme.ui.status_line.bg,
            fg = theme.diagnostics.error,
        },
        StatusLineLspWarn = {
            bg = theme.ui.status_line.bg,
            fg = theme.diagnostics.warn,
        },
        StatusLineLspHint = {
            bg = theme.ui.status_line.bg,
            fg = theme.diagnostics.hint,
        },
        StatusLineLspInfo = {
            bg = theme.ui.status_line.bg,
            fg = theme.diagnostics.info,
        },
        StatusLineLspMessages = {
            bg = theme.ui.status_line.bg,
            fg = theme.diagnostics.info,
        },
        StatusLineGitDiffAdded = {
            bg = theme.ui.status_line.bg,
            fg = theme.git.signs.add,
        },
        StatusLineGitDiffChanged = {
            bg = theme.ui.status_line.bg,
            fg = theme.git.signs.change,
        },
        StatusLineGitDiffRemoved = {
            bg = theme.ui.status_line.bg,
            fg = theme.git.signs.delete,
        },
        StatusLineGitBranchIcon = {
            bg = theme.ui.status_line.bg,
            fg = theme.ui.status_line.branch_icon.fg,
        },
    }
end

return M
