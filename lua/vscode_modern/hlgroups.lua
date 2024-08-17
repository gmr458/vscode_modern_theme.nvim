local M = {}

--- @param config VSCodeModernConfig
--- @param theme VSCodeModernThemeDark | VSCodeModernThemeLight
--- @return table
function M.get(config, theme)
    local palette = theme.palette

    return {
        -- Editor
        ['Conceal'] = { bg = palette.grey_15 },
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
        ['ErrorMsg'] = { fg = theme.lsp.diagnostics.error },
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
            sp = theme.lsp.diagnostics.error,
            undercurl = config.undercurl,
        },
        ['SpellCap'] = {
            sp = theme.lsp.diagnostics.warn,
            undercurl = config.undercurl,
        },
        ['SpellLocal'] = {
            sp = theme.lsp.diagnostics.info,
            undercurl = config.undercurl,
        },
        ['SpellRare'] = {
            sp = theme.lsp.diagnostics.hint,
            undercurl = config.undercurl,
        },
        ['StatusLine'] = {
            bg = theme.ui.status_line.bg,
            fg = theme.ui.status_line.fg,
        },
        ['StatusLineNC'] = {
            bg = theme.ui.status_line.bg,
            fg = theme.ui.status_line.fg,
        },
        ['TermCursor'] = {
            bg = theme.ui.cursor.term.bg,
            fg = theme.ui.cursor.term.fg,
        },
        ['Title'] = { fg = palette.light_17 },
        ['Visual'] = { bg = theme.ui.visual.bg },
        ['WarningMsg'] = { fg = theme.lsp.diagnostics.warn },
        ['Whitespace'] = { fg = theme.ui.indent_guide.fg, bg = palette.none },
        ['WinBar'] = { fg = palette.light_02 },
        ['WinBarNC'] = {
            bg = config.transparent_background and palette.none or theme.ui.bg,
        },
        ['WinSeparator'] = { fg = theme.ui.win_separator.fg },

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

        -- ['Special'] = {},
        ['SpecialChar'] = { fg = theme.sintax.special_char },
        -- ['Tag'] = {},
        -- ['Delimiter'] = {},
        -- ['SpecialComment'] = {},
        -- ['Debug'] = {},

        ['Underlined'] = { underline = true },

        -- ['Ignore'] = {},

        ['Error'] = { fg = theme.lsp.diagnostics.error },

        ['Todo'] = { fg = theme.sintax.todo },

        -- nvim-treesitter/nvim-treesitter
        ['@attribute'] = { link = '@type' },
        ['@boolean'] = { link = 'Boolean' },
        ['@character'] = { link = 'String' },
        ['@character.special'] = { link = 'SpecialChar' },
        ['@comment'] = { link = 'Comment' },
        ['@comment.error'] = { fg = theme.lsp.diagnostics.error },
        ['@comment.warning'] = { fg = theme.lsp.diagnostics.warn },
        ['@comment.hint'] = { fg = theme.lsp.diagnostics.hint },
        ['@comment.info'] = { fg = theme.lsp.diagnostics.info },
        ['@comment.todo'] = { link = 'Label' },
        ['@keyword.conditional'] = { link = 'Conditional' },
        ['@constant'] = { link = 'Constant' },
        ['@constant.builtin'] = { link = '@keyword' },
        ['@constant.macro'] = { link = 'Macro' },
        ['@constructor'] = { link = 'Type' },
        ['@keyword.directive'] = { link = 'Define' },
        ['@keyword.exception'] = { link = 'Exception' },
        ['@variable.member'] = { link = 'Variable' },
        ['@number.float'] = { link = 'Number' },
        ['@function'] = { link = 'Function' },
        ['@function.builtin'] = { link = 'Function' },
        ['@function.call'] = { link = 'Function' },
        ['@function.macro'] = { link = 'Macro' },
        ['@function.method'] = { link = 'Function' },
        ['@function.method.call'] = { link = 'Function' },
        ['@keyword.import'] = { link = 'Include' },
        ['@keyword'] = { link = 'Keyword' },
        ['@keyword.return'] = {
            fg = theme.sintax.keyword_control_flow,
            italic = config.italic_keyword,
        },
        ['@label'] = { link = 'Label' },
        ['@macro'] = { link = 'Macro' },
        ['@module'] = { fg = theme.sintax.namespace },
        ['@number'] = { link = 'Number' },
        ['@operator'] = { link = 'Operator' },
        ['@variable.parameter'] = { link = 'Variable' },
        ['@punctuation'] = { fg = theme.sintax.punctuation },
        ['@property'] = { link = 'Variable' },
        ['@punctuation.delimiter'] = { fg = theme.sintax.punctuation },
        ['@keyword.repeat'] = { link = 'Repeat' },
        ['@keyword.storage'] = { link = 'StorageClass' },
        ['@string'] = { link = 'String' },
        ['@string.escape'] = { link = 'SpecialChar' },
        ['@markup.link.label'] = { link = 'String' },
        ['@markup.link.url'] = {
            fg = theme.sintax.identifier,
            underline = true,
        },
        ['@string.special.url'] = { fg = theme.sintax.string, underline = true },
        ['@tag'] = { fg = theme.sintax.xml_tag },
        ['@tag.attribute'] = { link = 'Variable' },
        ['@tag.delimiter'] = { fg = theme.sintax.xml_delimiter },
        ['@type'] = { link = 'Type' },
        ['@type.builtin'] = { link = 'Type' },
        ['@type.definition'] = { link = 'Type' },
        ['@type.qualifier'] = { link = 'Keyword' },
        ['@variable'] = { link = 'Variable' },
        ['@variable.builtin'] = { link = 'Variable' },
        ['@diff.plus'] = { fg = theme.git.signs.add },
        ['@diff.minus'] = { fg = theme.git.signs.delete },
        ['@diff.delta'] = { fg = theme.git.signs.change },

        -- C#
        ['@type.builtin.c_sharp'] = { link = 'Keyword' },

        -- Go
        ['@keyword.break.go'] = { fg = theme.sintax.keyword_control_flow },
        ['@keyword.continue.go'] = { fg = theme.sintax.keyword_control_flow },
        ['@keyword.default.go'] = { fg = theme.sintax.keyword_control_flow },
        ['@keyword.coroutine.go.go'] = {
            fg = theme.sintax.keyword_control_flow,
        },
        ['@keyword.goto.go'] = { fg = theme.sintax.keyword_control_flow },
        ['@type.builtin.map.go'] = { link = 'Keyword' },
        ['@keyword.select.go'] = { fg = theme.sintax.keyword_control_flow },

        -- Go Checksum File
        ['@attribute.gosum'] = { link = 'Identifier' },
        ['@number.gosum'] = { link = 'Keyword' },
        ['@string.special.gosum'] = { link = 'Keyword' },
        ['@string.special.symbol.gosum'] = { link = 'String' },

        -- HTML
        ['@constant.html'] = { link = 'Keyword' },

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

        -- Markdown
        ['@label.markdown'] = { link = 'Identifier' },
        ['@markup.heading.1.markdown'] = { link = 'Keyword' },
        ['@markup.heading.1.marker.markdown'] = { link = 'Keyword' },
        ['@markup.heading.2.markdown'] = { link = 'Keyword' },
        ['@markup.heading.2.marker.markdown'] = { link = 'Keyword' },
        ['@markup.heading.3.markdown'] = { link = 'Keyword' },
        ['@markup.heading.3.marker.markdown'] = { link = 'Keyword' },
        ['@markup.heading.4.markdown'] = { link = 'Keyword' },
        ['@markup.heading.4.marker.markdown'] = { link = 'Keyword' },
        ['@markup.heading.5.markdown'] = { link = 'Keyword' },
        ['@markup.heading.5.marker.markdown'] = { link = 'Keyword' },
        ['@markup.heading.6.markdown'] = { link = 'Keyword' },
        ['@markup.heading.6.marker.markdown'] = { link = 'Keyword' },

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
        ['@lsp.type.module'] = { fg = theme.sintax.namespace },
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
        ['UfoFoldedEllipsis'] = { fg = palette.grey_16 },

        -- ibhagwan/fzf-lua
        ['FzfLuaBorder'] = { fg = theme.ui.float.border.fg },

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
        ['DiagnosticError'] = { fg = theme.lsp.diagnostics.error },
        ['DiagnosticFloatingError'] = { fg = theme.lsp.diagnostics.error },
        ['DiagnosticFloatingHint'] = { fg = theme.lsp.diagnostics.hint },
        ['DiagnosticFloatingInfo'] = { fg = theme.lsp.diagnostics.info },
        ['DiagnosticFloatingWarn'] = { fg = theme.lsp.diagnostics.warn },
        ['DiagnosticHint'] = { fg = theme.lsp.diagnostics.hint },
        ['DiagnosticInfo'] = { fg = theme.lsp.diagnostics.info },
        ['DiagnosticSignError'] = { fg = theme.lsp.diagnostics.error },
        ['DiagnosticSignHint'] = { fg = theme.lsp.diagnostics.hint },
        ['DiagnosticSignInfo'] = { fg = theme.lsp.diagnostics.info },
        ['DiagnosticSignWarn'] = { fg = theme.lsp.diagnostics.warn },
        ['DiagnosticUnderlineError'] = {
            sp = theme.lsp.diagnostics.error,
            undercurl = config.undercurl,
        },
        ['DiagnosticUnderlineHint'] = {
            sp = theme.lsp.diagnostics.hint,
            undercurl = config.undercurl,
        },
        ['DiagnosticUnderlineInfo'] = {
            sp = theme.lsp.diagnostics.info,
            undercurl = config.undercurl,
        },
        ['DiagnosticUnderlineWarn'] = {
            sp = theme.lsp.diagnostics.warn,
            undercurl = config.undercurl,
        },
        ['DiagnosticUnnecessary'] = { fg = theme.lsp.diagnostics.unnecessary },
        ['DiagnosticVirtualTextError'] = { fg = theme.lsp.diagnostics.error },
        ['DiagnosticVirtualTextHint'] = { fg = theme.lsp.diagnostics.hint },
        ['DiagnosticVirtualTextInfo'] = { fg = theme.lsp.diagnostics.info },
        ['DiagnosticVirtualTextWarn'] = { fg = theme.lsp.diagnostics.warn },
        ['DiagnosticWarn'] = { fg = theme.lsp.diagnostics.warn },

        -- LspInfo
        ['LspInfoBorder'] = { fg = theme.ui.float.border.fg },

        -- Codelens
        ['LspCodeLens'] = { fg = palette.grey_25 },
        ['LspCodeLensSeparator'] = { fg = palette.grey_25 },

        -- References
        ['LspReferenceWrite'] = { bg = theme.lsp.references.write },
        ['LspReferenceRead'] = { bg = theme.lsp.references.read },
        ['LspReferenceText'] = { bg = theme.lsp.references.text },

        -- Inlay Hints
        ['LspInlayHint'] = {
            bg = theme.lsp.inlay_hint.bg,
            fg = theme.lsp.inlay_hint.fg,
        },

        -- SmiteshP/nvim-navic
        ['NavicIconsFile'] = { fg = theme.ui.fg },
        ['NavicIconsModule'] = { fg = theme.ui.fg },
        ['NavicIconsNamespace'] = { fg = theme.ui.fg },
        ['NavicIconsPackage'] = { fg = theme.ui.fg },
        ['NavicIconsClass'] = { fg = palette.orange_02 },
        ['NavicIconsMethod'] = { fg = palette.purple_02 },
        ['NavicIconsProperty'] = { fg = palette.blue_23 },
        ['NavicIconsField'] = { fg = palette.blue_23 },
        ['NavicIconsConstructor'] = { fg = palette.purple_02 },
        ['NavicIconsEnum'] = { fg = palette.orange_02 },
        ['NavicIconsInterface'] = { fg = palette.blue_23 },
        ['NavicIconsFunction'] = { fg = palette.purple_02 },
        ['NavicIconsVariable'] = { fg = palette.blue_23 },
        ['NavicIconsConstant'] = { fg = theme.ui.fg },
        ['NavicIconsString'] = { fg = theme.ui.fg },
        ['NavicIconsNumber'] = { fg = theme.ui.fg },
        ['NavicIconsBoolean'] = { fg = theme.ui.fg },
        ['NavicIconsArray'] = { fg = theme.ui.fg },
        ['NavicIconsObject'] = { fg = theme.ui.fg },
        ['NavicIconsKey'] = { fg = theme.ui.fg },
        ['NavicIconsNull'] = { fg = theme.ui.fg },
        ['NavicIconsEnumMember'] = { fg = palette.blue_23 },
        ['NavicIconsStruct'] = { fg = theme.ui.fg },
        ['NavicIconsEvent'] = { fg = theme.ui.fg },
        ['NavicIconsOperator'] = { fg = theme.ui.fg },
        ['NavicIconsTypeParameter'] = { fg = theme.ui.fg },
        ['NavicText'] = { fg = palette.light_02 },
        ['NavicSeparator'] = { fg = palette.light_02 },

        -- williamboman/mason.nvim
        ['MasonError'] = { fg = theme.lsp.diagnostics.error },
        ['MasonWarning'] = { fg = theme.lsp.diagnostics.warn },

        -- folke/trouble.nvim
        ['TroubleCode'] = { fg = palette.blue_17, underline = true },
        ['TroubleCount'] = { bg = palette.grey_11, fg = palette.light_17 },
        ['TroubleFile'] = { fg = theme.ui.fg },
        ['TroubleFoldIcon'] = { fg = palette.light_05 },
        ['TroubleLocation'] = { fg = palette.grey_24 },
        ['TroublePreview'] = { bg = palette.grey_09 },
        ['TroubleSignError'] = { fg = theme.lsp.diagnostics.error },
        ['TroubleSignHint'] = { fg = theme.lsp.diagnostics.hint },
        ['TroubleSignInformation'] = { fg = theme.lsp.diagnostics.info },
        ['TroubleSignWarning'] = { fg = theme.lsp.diagnostics.warn },
        ['TroubleSource'] = { fg = palette.grey_24 },
        ['TroubleTextError'] = { fg = theme.ui.fg },
        ['TroubleTextHint'] = { fg = theme.ui.fg },
        ['TroubleTextInformation'] = { fg = theme.ui.fg },
        ['TroubleTextWarning'] = { fg = theme.ui.fg },

        -- mfussenegger/nvim-dap
        ['DapBreakpoint'] = { fg = palette.red_06 },
        ['DapStopped'] = { fg = palette.yellow_09 },
        ['DapBreakpointRejected'] = { fg = palette.grey_25 },

        -- rcarriga/nvim-dap-ui
        ['DapUIScope'] = { fg = theme.ui.fg },
        ['DapUIVariable'] = { link = 'Variable' },
        ['DapUIType'] = { link = 'Type' },
        ['DapUIValue'] = { fg = palette.grey_25 },
        ['DapUIDecoration'] = { fg = theme.ui.fg },
        ['DapUIBreakpointsPath'] = { fg = theme.ui.fg },
        ['DapUILineNumber'] = { link = 'LineNr' },
        ['DapUIStoppedThread'] = { fg = theme.ui.fg },
        ['DapUICurrentFrameName'] = { fg = theme.ui.fg },
        ['DapUISource'] = { fg = theme.ui.fg },
        ['DapUIThread'] = { fg = theme.ui.fg },
        ['DapUIWatchesEmpty'] = { fg = palette.grey_25 },
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
        ['CmpItemAbbrMatch'] = { fg = palette.blue_16 },
        ['CmpItemKind'] = { fg = theme.ui.fg },
        ['CmpItemKindClass'] = { fg = palette.orange_02 },
        ['CmpItemKindColor'] = { fg = theme.ui.fg },
        ['CmpItemKindConstant'] = { fg = theme.ui.fg },
        ['CmpItemKindConstructor'] = { fg = palette.purple_02 },
        ['CmpItemKindEnum'] = { fg = palette.orange_02 },
        ['CmpItemKindEnumMember'] = { fg = palette.blue_23 },
        ['CmpItemKindEvent'] = { fg = theme.ui.fg },
        ['CmpItemKindField'] = { fg = palette.blue_23 },
        ['CmpItemKindFile'] = { fg = theme.ui.fg },
        ['CmpItemKindFolder'] = { fg = palette.yellow_04 },
        ['CmpItemKindFunction'] = { fg = palette.purple_02 },
        ['CmpItemKindInterface'] = { fg = palette.blue_23 },
        ['CmpItemKindKeyword'] = { fg = theme.ui.fg },
        ['CmpItemKindMethod'] = { fg = palette.purple_02 },
        ['CmpItemKindModule'] = { fg = theme.ui.fg },
        ['CmpItemKindOperator'] = { fg = theme.ui.fg },
        ['CmpItemKindProperty'] = { fg = palette.blue_23 },
        ['CmpItemKindReference'] = { fg = theme.ui.fg },
        ['CmpItemKindSnippet'] = { fg = theme.ui.fg },
        ['CmpItemKindSnippetFunction'] = { fg = theme.ui.fg },
        ['CmpItemKindSnippetStruct'] = { fg = theme.ui.fg },
        ['CmpItemKindStruct'] = { fg = theme.ui.fg },
        ['CmpItemKindText'] = { fg = theme.ui.fg },
        ['CmpItemKindTypeParameter'] = { fg = theme.ui.fg },
        ['CmpItemKindUnit'] = { fg = theme.ui.fg },
        ['CmpItemKindValue'] = { fg = palette.orange_02 },
        ['CmpItemKindVariable'] = { fg = palette.blue_23 },
        ['CmpMenu'] = {
            bg = config.transparent_background and palette.none or theme.ui.bg,
            fg = theme.ui.fg,
        },
        ['CmpMenuBorder'] = {
            bg = config.transparent_background and palette.none
                or theme.ui.float.border.bg,
            fg = theme.ui.float.border.fg,
        },
        ['CmpMenuSel'] = { bg = palette.blue_08, fg = palette.light_17 },

        -- lewis6991/gitsigns.nvim
        ['GitSignsAdd'] = { fg = theme.git.signs.add },
        ['GitSignsChange'] = { fg = theme.git.signs.change },
        ['GitSignsDelete'] = { fg = theme.git.signs.delete },

        -- petertriho/nvim-scrollbar
        ['ScrollbarError'] = { fg = theme.lsp.diagnostics.error },
        ['ScrollbarErrorHandle'] = { fg = theme.lsp.diagnostics.error },
        ['ScrollbarGitAdd'] = { fg = theme.git.signs.add },
        ['ScrollbarGitAddHandle'] = { fg = theme.git.signs.add },
        ['ScrollbarGitChange'] = { fg = theme.git.signs.change },
        ['ScrollbarGitChangeHandle'] = { fg = theme.git.signs.change },
        ['ScrollbarGitDelete'] = { fg = theme.git.signs.delete },
        ['ScrollbarGitDeleteHandle'] = { fg = theme.git.signs.delete },
        ['ScrollbarHint'] = { fg = theme.lsp.diagnostics.hint },
        ['ScrollbarHintHandle'] = { fg = theme.lsp.diagnostics.hint },
        ['ScrollbarInfo'] = { fg = theme.lsp.diagnostics.info },
        ['ScrollbarInfoHandle'] = { fg = theme.lsp.diagnostics.info },
        ['ScrollbarWarn'] = { fg = theme.lsp.diagnostics.warn },
        ['ScrollbarWarnHandle'] = { fg = theme.lsp.diagnostics.warn },

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
        ['NvimTreeLspDiagnosticsError'] = { fg = theme.lsp.diagnostics.error },
        ['NvimTreeLspDiagnosticsHint'] = { fg = theme.lsp.diagnostics.hint },
        ['NvimTreeLspDiagnosticsInformation'] = {
            fg = theme.lsp.diagnostics.info,
        },
        ['NvimTreeLspDiagnosticsWarning'] = { fg = theme.lsp.diagnostics.warn },
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
            fg = config.transparent_background and theme.ui.win_separator.fg
                or (
                    config.nvim_tree_darker and theme.ui.bg
                    or theme.ui.win_separator.fg
                ),
        },

        -- nvim-neotest/neotest
        ['NeotestFailed'] = { fg = theme.neotest.process.error },
        ['NeotestPassed'] = { fg = theme.neotest.process.success },
        ['NeotestRunning'] = { fg = theme.neotest.process.run },
        ['NeotestSkipped'] = { fg = theme.neotest.process.skip },
        ['NeotestFile'] = { fg = theme.neotest.ui.file },
        ['NeotestNamespace'] = { fg = theme.neotest.ui.namespace },
        ['NeotestDir'] = { fg = theme.neotest.ui.dir },
        ['NeotestFocused'] = {
            fg = theme.neotest.process.focus,
            bold = true,
            underline = true,
        },
        ['NeotestAdapterName'] = { fg = theme.neotest.ui.adapter },
        ['NeotestIndent'] = { fg = theme.neotest.ui.indent },
        ['NeotestExpandMarker'] = { fg = theme.neotest.ui.marker },
        ['NeotestWinSelect'] = { fg = theme.neotest.ui.select, bold = true },
        ['NeotestTest'] = { fg = theme.neotest.ui.test },

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
        ['AlphaButton'] = { fg = palette.blue_18 },
        ['AlphaHeader'] = { fg = palette.blue_19 },
        ['AlphaShorcut'] = { fg = palette.grey_18 },

        -- folke/lazy.nvim
        ['LazyButton'] = { bg = theme.ui.title.bg, fg = theme.ui.title.fg },
        ['LazyButtonActive'] = { bg = palette.green_05, fg = theme.ui.title.fg },
        ['LazyComment'] = { fg = palette.grey_18 },
        ['LazyH1'] = { bg = palette.green_05, fg = theme.ui.title.fg },
        ['LazySpecial'] = { fg = palette.light_07 },

        -- lua
        ['luaParenError'] = { link = 'Normal' },

        -- xml
        ['xmlAttrib'] = { link = 'Variable' },
        ['xmlProcessingDelim'] = { fg = theme.sintax.xml_delimiter },
        ['xmlTag'] = { fg = theme.sintax.xml_delimiter },
        ['xmlTagName'] = { link = 'Keyword' },

        -- my custom statusline
        ['StatusLineMode'] = {
            bg = theme.ui.status_line.mode.bg,
            fg = theme.ui.status_line.mode.fg,
        },
        ['StatusLineMedium'] = {
            bg = theme.ui.status_line.medium.bg,
            fg = theme.ui.status_line.medium.fg,
        },
        ['StatusLineNeovimLogo'] = {
            bg = theme.ui.status_line.mode.bg,
            fg = theme.ui.status_line.mode.fg,
        },

        ['StatusLineLspError'] = {
            bg = theme.ui.status_line.medium.bg,
            fg = theme.lsp.diagnostics.error,
        },
        ['StatusLineLspWarn'] = {
            bg = theme.ui.status_line.medium.bg,
            fg = theme.lsp.diagnostics.warn,
        },
        ['StatusLineLspHint'] = {
            bg = theme.ui.status_line.medium.bg,
            fg = theme.lsp.diagnostics.hint,
        },
        ['StatusLineLspInfo'] = {
            bg = theme.ui.status_line.medium.bg,
            fg = theme.lsp.diagnostics.info,
        },
        ['StatusLineLspMessages'] = {
            bg = theme.ui.status_line.bg,
            fg = theme.lsp.diagnostics.info,
        },
        ['StatusLineLspActive'] = {
            bg = theme.ui.status_line.medium.bg,
            fg = theme.ui.status_line.icon.lsp.active.fg,
        },
        ['StatusLineLspInactive'] = {
            bg = theme.ui.status_line.medium.bg,
            fg = theme.lsp.diagnostics.error,
        },
        ['StatusLineGitDiffAdded'] = {
            bg = theme.ui.status_line.medium.bg,
            fg = theme.git.signs.add,
        },
        ['StatusLineGitDiffChanged'] = {
            bg = theme.ui.status_line.medium.bg,
            fg = theme.git.signs.change,
        },
        ['StatusLineGitDiffRemoved'] = {
            bg = theme.ui.status_line.medium.bg,
            fg = theme.git.signs.delete,
        },
        ['StatusLineGitBranchIcon'] = {
            bg = theme.ui.status_line.medium.bg,
            fg = theme.ui.status_line.icon.branch.fg,
        },
        ['StatusLineUnsavedFileIcon'] = {
            bg = theme.ui.status_line.medium.bg,
            fg = theme.lsp.diagnostics.warn,
        },
        ['WinBarUnsavedSymbol'] = {
            bg = theme.ui.bg,
            fg = theme.lsp.diagnostics.warn,
        },

        -- github.com/echasnovski/mini.indentscope
        ['MiniIndentscopeSymbol'] = { fg = theme.ui.indent_guide.active.fg },
    }
end

return M
