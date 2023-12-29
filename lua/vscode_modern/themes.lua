--- @class CursorTerm
--- @field bg string
--- @field fg string

--- @class CursorLineNr
--- @field bg string
--- @field fg string

--- @class CursorLine
--- @field bg string
--- @field nr CursorLineNr

--- @class Cursor
--- @field bg string
--- @field fg string
--- @field term CursorTerm
--- @field line CursorLine

--- @class Context
--- @field bg string

--- @class Directory
--- @field fg string

--- @class FloatBorder
--- @field bg string
--- @field fg string

--- @class Float
--- @field bg string
--- @field border FloatBorder

--- @class LineNr
--- @field bg string
--- @field fg string

--- @class MatchParen
--- @field bg string

--- @class NonText
--- @field bg string
--- @field fg string

--- @class StatusLineMode
--- @field bg string
--- @field fg string

--- @class StatusLineBranchIcon
--- @field fg string

--- @class StatusLine
--- @field bg string
--- @field fg string
--- @field mode StatusLineMode
--- @field branch_icon StatusLineBranchIcon

--- @class Search
--- @field bg string

--- @class SignColumn
--- @field bg string

--- @class Visual
--- @field bg string

--- @class Whitespace
--- @field bg string
--- @field fg string

--- @class WinSeparator
--- @field fg string

--- @class PmenuSbar
--- @field bg string

--- @class PmenuSel
--- @field bg string
--- @field fg string

--- @class PmenuThumb
--- @field bg string

--- @class Pmenu
--- @field bg string
--- @field fg string
--- @field sbar PmenuSbar
--- @field sel PmenuSel
--- @field thumb PmenuThumb

--- @class IndentGuideActive
--- @field fg string

--- @class IndentGuide
--- @field fg string
--- @field active IndentGuideActive

--- @class Folded
--- @field bg string

--- @class TelescopeMatching
--- @field fg string

--- @class TelescopePreviewBorder
--- @field bg string
--- @field fg string

--- @class TelescopePreviewTitle
--- @field bg string
--- @field fg string

--- @class TelescopePreview
--- @field bg string
--- @field border TelescopePreviewBorder
--- @field title TelescopePreviewTitle

--- @class TelescopePromptBorder
--- @field bg string
--- @field fg string

--- @class TelescopePromptCounter
--- @field fg string

--- @class TelescopePromptTitle
--- @field bg string
--- @field fg string

--- @class TelescopePrompt
--- @field bg string
--- @field fg string
--- @field border TelescopePromptBorder
--- @field counter TelescopePromptCounter
--- @field title TelescopePromptTitle

--- @class TelescopeResultsBorder
--- @field bg string
--- @field fg string

--- @class TelescopeResultsTitle
--- @field bg string
--- @field fg string

--- @class TelescopeResults
--- @field bg string
--- @field border TelescopeResultsBorder
--- @field title TelescopeResultsTitle

--- @class TelescopeSelection
--- @field bg string
--- @field fg string

--- @class Telescope
--- @field bg string
--- @field matching TelescopeMatching
--- @field preview TelescopePreview
--- @field prompt TelescopePrompt
--- @field results TelescopeResults
--- @field selection TelescopeSelection

--- @class Title
--- @field bg string
--- @field fg string

--- @class Ui
--- @field bg string
--- @field bg_darker_01 string
--- @field fg string
--- @field cursor Cursor
--- @field context Cursor
--- @field directory Directory
--- @field float Float
--- @field line_nr LineNr
--- @field match_paren MatchParen
--- @field non_text NonText
--- @field status_line StatusLine
--- @field search Search
--- @field sign_column SignColumn
--- @field visual Visual
--- @field whitespace Whitespace
--- @field win_separator WinSeparator
--- @field pmenu Pmenu
--- @field indent_guide IndentGuide
--- @field folded Folded
--- @field telescope Telescope
--- @field title Title

--- @class Sintax
--- @field comment string
--- @field variable string
--- @field constant string
--- @field string string
--- @field character string
--- @field number string
--- @field boolean string
--- @field identifier string
--- @field punctuation string
--- @field function_name string
--- @field operator string
--- @field keyword string
--- @field keyword_control_flow string
--- @field macro string
--- @field type string
--- @field namespace string
--- @field special_char string
--- @field xml_tag string
--- @field xml_delimiter string
--- @field todo string

--- @class GitSigns
--- @field add string
--- @field change string
--- @field delete string

--- @class GitStatus
--- @field ignored string
--- @field untracked string
--- @field staged string
--- @field deleted string
--- @field modified string

--- @class GitDiff
--- @field add string
--- @field change string
--- @field delete string
--- @field text string

--- @class Git
--- @field signs GitSigns
--- @field status GitStatus
--- @field diff GitDiff

--- @class Diagnostics
--- @field error string
--- @field warn string
--- @field info string
--- @field hint string
--- @field unnecessary string

--- @class References
--- @field write string
--- @field read string
--- @field text string

--- @class Lsp
--- @field diagnostics Diagnostics
--- @field references References

--- @class Theme
--- @field palette Palette
--- @field ui Ui
--- @field sintax Sintax
--- @field git Git
--- @field lsp Lsp

return {
    --- @param palette Palette
    --- @param config Config
    --- @return Theme
    dark = function(palette, config)
        local background = palette.dark_04
        local statusline_bg = palette.dark_03

        if
            config.custom_dark_background ~= nil
            and type(config.custom_dark_background) == 'string'
        then
            background = config.custom_dark_background
        end

        if
            config.custom_statusline_dark_background ~= nil
            and type(config.custom_statusline_dark_background)
        then
            statusline_bg = config.custom_statusline_dark_background
        end

        return {
            palette = palette,
            ui = {
                bg = background,
                bg_darker_01 = palette.dark_03,
                fg = palette.light_07,
                cursor = {
                    bg = palette.light_03,
                    fg = palette.grey_11,
                    term = {
                        bg = palette.light_07,
                        fg = palette.dark_03,
                    },
                    line = {
                        bg = palette.grey_02,
                        nr = {
                            bg = palette.grey_02,
                            fg = palette.light_06,
                        },
                    },
                },
                context = {
                    bg = palette.grey_03,
                },
                directory = {
                    fg = palette.yellow_04,
                },
                float = {
                    bg = background,
                    border = {
                        bg = background,
                        fg = palette.grey_14,
                    },
                },
                line_nr = {
                    bg = background,
                    fg = palette.grey_17,
                },
                match_paren = {
                    bg = palette.grey_18,
                },
                non_text = {
                    bg = palette.none,
                    fg = palette.grey_07,
                },
                status_line = {
                    bg = statusline_bg,
                    fg = palette.light_07,
                    mode = {
                        bg = palette.blue_06,
                        fg = palette.light_16,
                    },
                    branch_icon = {
                        fg = palette.orange_04,
                    },
                },
                search = {
                    bg = palette.brown_01,
                },
                sign_column = {
                    bg = palette.none,
                },
                visual = {
                    bg = palette.blue_14,
                },
                whitespace = {
                    bg = palette.none,
                    fg = palette.grey_07,
                },
                win_separator = {
                    fg = palette.dark_02,
                },
                pmenu = {
                    bg = palette.grey_04,
                    fg = palette.light_07,
                    sbar = {
                        bg = palette.grey_04,
                    },
                    sel = {
                        bg = palette.blue_08,
                        fg = palette.light_16,
                    },
                    thumb = {
                        bg = palette.grey_12,
                    },
                },
                indent_guide = {
                    fg = palette.grey_07,
                    active = {
                        fg = palette.grey_14,
                    },
                },
                folded = {
                    bg = palette.blue_13,
                },
                title = {
                    bg = palette.blue_10,
                    fg = palette.light_16,
                },
                telescope = {
                    matching = {
                        fg = palette.blue_04,
                    },
                    preview = {
                        bg = palette.grey_01,
                        border = {
                            bg = palette.grey_01,
                            fg = palette.grey_01,
                        },
                        title = {
                            bg = palette.blue_06,
                            fg = palette.light_16,
                        },
                    },
                    prompt = {
                        bg = palette.grey_06,
                        fg = palette.light_01,
                        border = {
                            bg = palette.grey_06,
                            fg = palette.grey_06,
                        },
                        counter = {
                            fg = palette.light_01,
                        },
                        title = {
                            bg = palette.blue_06,
                            fg = palette.light_16,
                        },
                    },
                    results = {
                        bg = palette.grey_04,
                        border = {
                            bg = palette.grey_04,
                            fg = palette.grey_04,
                        },
                        title = {
                            bg = palette.blue_06,
                            fg = palette.light_16,
                        },
                    },
                    selection = {
                        bg = palette.blue_08,
                        fg = palette.light_16,
                    },
                },
            },
            sintax = {
                comment = palette.green_10,
                variable = palette.blue_25,
                constant = palette.blue_20,
                string = palette.orange_01,
                character = palette.red_05,
                number = palette.green_13,
                boolean = palette.blue_21,
                identifier = palette.light_07,
                punctuation = palette.light_07,
                function_name = palette.yellow_07,
                operator = palette.light_07,
                keyword = palette.blue_21,
                keyword_control_flow = palette.purple_03,
                macro = palette.blue_21,
                type = palette.green_08,
                namespace = palette.green_08,
                special_char = palette.yellow_06,
                xml_tag = palette.blue_21,
                xml_delimiter = palette.grey_15,
                todo = palette.magenta_01,
            },
            git = {
                signs = {
                    add = palette.green_04,
                    delete = palette.red_09,
                    change = palette.blue_06,
                },
                status = {
                    ignored = palette.grey_19,
                    untracked = palette.green_11,
                    staged = palette.green_12,
                    deleted = palette.red_04,
                    modified = palette.yellow_08,
                },
                diff = {
                    add = palette.green_07,
                    change = palette.green_06,
                    delete = palette.red_01,
                    text = palette.green_07,
                },
            },
            lsp = {
                diagnostics = {
                    error = palette.red_09,
                    warn = palette.yellow_05,
                    info = palette.blue_18,
                    hint = palette.blue_23,
                    unnecessary = palette.blue_22,
                },
                references = {
                    write = palette.blue_09,
                    read = palette.grey_09,
                    text = palette.grey_09,
                },
            },
        }
    end,

    --- @param palette Palette
    --- @param config Config
    --- @return Theme
    light = function(palette, config)
        local background = palette.light_16

        if
            config.custom_light_background ~= nil
            and type(config.custom_light_background) == 'string'
        then
            background = config.custom_light_background
        end

        return {
            palette = palette,
            ui = {
                bg = background,
                bg_darker_01 = palette.light_13,
                bg_darker_02 = palette.light_15,
                fg = palette.grey_05,
                cursor = {
                    bg = palette.dark_01,
                    fg = palette.light_16,
                    term = {
                        bg = palette.blue_03,
                        fg = palette.light_16,
                    },
                    line = {
                        bg = palette.light_14,
                        nr = {
                            bg = palette.light_14,
                            fg = palette.blue_11,
                        },
                    },
                },
                context = {
                    bg = palette.light_12,
                },
                directory = {
                    fg = palette.yellow_04,
                },
                float = {
                    bg = palette.light_09,
                    border = {
                        bg = palette.light_09,
                        fg = palette.light_09,
                    },
                },
                line_nr = {
                    bg = background,
                    fg = palette.grey_13,
                },
                match_paren = {
                    bg = palette.light_11,
                },
                non_text = {
                    bg = palette.none,
                    fg = palette.light_08,
                },
                status_line = {
                    bg = palette.light_08,
                    fg = palette.grey_05,
                    mode = {
                        bg = palette.blue_06,
                        fg = palette.light_16,
                    },
                    branch_icon = {
                        fg = palette.orange_04,
                    },
                },
                search = {
                    bg = palette.orange_03,
                },
                sign_column = {
                    bg = palette.none,
                },
                visual = {
                    bg = palette.blue_26,
                },
                whitespace = {
                    bg = palette.none,
                    fg = palette.light_08,
                },
                win_separator = {
                    fg = palette.light_10,
                },
                pmenu = {
                    bg = palette.light_09,
                    fg = palette.grey_05,
                    sbar = {
                        bg = palette.light_09,
                    },
                    sel = {
                        bg = palette.light_12,
                        fg = palette.dark_01,
                    },
                    thumb = {
                        bg = palette.light_04,
                    },
                },
                indent_guide = {
                    fg = palette.light_08,
                    active = {
                        fg = palette.grey_14,
                    },
                },
                folded = {
                    bg = palette.blue_27,
                },
                title = {
                    bg = palette.blue_10,
                    fg = palette.light_16,
                },
                telescope = {
                    matching = {
                        fg = palette.blue_04,
                    },
                    preview = {
                        bg = palette.light_09,
                        border = {
                            bg = palette.light_09,
                            fg = palette.light_09,
                        },
                        title = {
                            bg = palette.blue_06,
                            fg = palette.light_16,
                        },
                    },
                    prompt = {
                        bg = palette.light_08,
                        fg = palette.grey_05,
                        border = {
                            bg = palette.light_08,
                            fg = palette.light_08,
                        },
                        counter = {
                            fg = palette.grey_05,
                        },
                        title = {
                            bg = palette.blue_06,
                            fg = palette.light_13,
                        },
                    },
                    results = {
                        bg = palette.light_06,
                        border = {
                            bg = palette.light_06,
                            fg = palette.light_06,
                        },
                        title = {
                            bg = palette.blue_06,
                            fg = palette.light_13,
                        },
                    },
                    selection = {
                        bg = palette.light_12,
                        fg = palette.dark_01,
                    },
                },
            },
            sintax = {
                comment = palette.green_02,
                variable = palette.blue_02,
                constant = palette.blue_05,
                string = palette.red_02,
                character = palette.red_07,
                number = palette.green_03,
                identifier = palette.grey_05,
                punctuation = palette.grey_05,
                function_name = palette.yellow_01,
                operator = palette.dark_01,
                keyword = palette.blue_01,
                keyword_control_flow = palette.purple_01,
                macro = palette.blue_01,
                type = palette.blue_15,
                namespace = palette.blue_15,
                special_char = palette.red_07,
                xml_tag = palette.blue_01,
                xml_delimiter = palette.blue_21,
                todo = palette.magenta_01,
            },
            git = {
                signs = {
                    add = palette.green_04,
                    delete = palette.red_09,
                    change = palette.blue_03,
                },
                status = {
                    ignored = palette.grey_20,
                    untracked = palette.green_01,
                    staged = palette.green_09,
                    deleted = palette.red_03,
                    modified = palette.yellow_02,
                },
                diff = {
                    add = palette.green_14,
                    change = palette.green_15,
                    delete = palette.red_10,
                    text = palette.green_14,
                },
            },
            lsp = {
                diagnostics = {
                    error = palette.red_09,
                    warn = palette.yellow_03,
                    info = palette.blue_12,
                    hint = palette.blue_07,
                    unnecessary = palette.blue_24,
                },
                references = {
                    write = palette.blue_28,
                    read = palette.light_09,
                    text = palette.light_09,
                },
            },
        }
    end,
}
