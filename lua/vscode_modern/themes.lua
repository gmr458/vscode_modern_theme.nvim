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
--- @field special string
--- @field special_char string
--- @field tag string
--- @field xml_tag string
--- @field xml_delimiter string
--- @field delimiter string
--- @field special_comment string
--- @field debug string
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

        if
            config.custom_dark_background ~= nil
            and type(config.custom_dark_background) == 'string'
        then
            background = config.custom_dark_background
        end

        return {
            palette = palette,
            ui = {
                bg = background,
                bg_darker_01 = palette.dark_03,
                fg = palette.light_07,
                cursor = {
                    bg = palette.light_03,
                    fg = palette.grey_12,
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
                    bg = palette.grey_04,
                },
                directory = {
                    fg = palette.yellow_02,
                },
                float = {
                    bg = background,
                    border = {
                        bg = background,
                        fg = palette.grey_17,
                    },
                },
                line_nr = {
                    bg = background,
                    fg = palette.grey_21,
                },
                match_paren = {
                    bg = palette.grey_22,
                },
                non_text = {
                    bg = palette.none,
                    fg = palette.grey_09,
                },
                status_line = {
                    bg = palette.dark_03,
                    fg = palette.light_07,
                    mode = {
                        bg = palette.blue_01,
                        fg = palette.light_15,
                    },
                    branch_icon = {
                        fg = palette.orange_03,
                    },
                },
                search = {
                    bg = palette.brown_01,
                },
                sign_column = {
                    bg = palette.none,
                },
                visual = {
                    bg = palette.blue_06,
                },
                whitespace = {
                    bg = palette.none,
                    fg = palette.grey_09,
                },
                win_separator = {
                    fg = palette.dark_02,
                },
                pmenu = {
                    bg = palette.grey_05,
                    fg = palette.light_07,
                    sbar = {
                        bg = palette.grey_05,
                    },
                    sel = {
                        bg = palette.blue_02,
                        fg = palette.light_15,
                    },
                    thumb = {
                        bg = palette.grey_13,
                    },
                },
                indent_guide = {
                    fg = palette.grey_09,
                    active = {
                        fg = palette.grey_17,
                    },
                },
                folded = {
                    bg = palette.blue_05,
                },
                title = {
                    bg = palette.blue_04,
                    fg = palette.light_15,
                },
                telescope = {
                    matching = {
                        fg = palette.blue_27,
                    },
                    preview = {
                        bg = palette.grey_01,
                        border = {
                            bg = palette.grey_01,
                            fg = palette.grey_01,
                        },
                        title = {
                            bg = palette.blue_01,
                            fg = palette.light_15,
                        },
                    },
                    prompt = {
                        bg = palette.grey_08,
                        fg = palette.light_01,
                        border = {
                            bg = palette.grey_08,
                            fg = palette.grey_08,
                        },
                        counter = {
                            fg = palette.light_01,
                        },
                        title = {
                            bg = palette.blue_01,
                            fg = palette.light_15,
                        },
                    },
                    results = {
                        bg = palette.grey_05,
                        border = {
                            bg = palette.grey_05,
                            fg = palette.grey_05,
                        },
                        title = {
                            bg = palette.blue_01,
                            fg = palette.light_15,
                        },
                    },
                    selection = {
                        bg = palette.blue_02,
                        fg = palette.light_15,
                    },
                },
            },
            sintax = {
                comment = palette.green_08,
                variable = palette.blue_15,
                constant = palette.blue_11,
                string = palette.orange_01,
                character = palette.red_03,
                number = palette.green_09,
                boolean = palette.blue_12,
                identifier = palette.light_07,
                punctuation = palette.light_07,
                function_name = palette.yellow_05,
                operator = palette.light_07,
                keyword = palette.blue_12,
                keyword_control_flow = palette.purple_02,
                macro = palette.blue_12,
                type = palette.green_05,
                namespace = palette.green_05,
                special = palette.yellow_04,
                special_char = palette.yellow_04,
                tag = palette.yellow_04,
                xml_tag = palette.blue_12,
                xml_delimiter = palette.grey_19,
                delimiter = palette.yellow_04,
                special_comment = palette.yellow_04,
                debug = palette.yellow_04,
                todo = palette.magenta_01,
            },
            git = {
                signs = {
                    add = palette.green_01,
                    delete = palette.red_06,
                    change = palette.blue_01,
                },
                status = {
                    ignored = palette.grey_23,
                    untracked = palette.green_18,
                    staged = palette.green_19,
                    deleted = palette.red_12,
                    modified = palette.yellow_11,
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
                    error = palette.red_06,
                    warn = palette.yellow_03,
                    info = palette.blue_09,
                    hint = palette.blue_14,
                    unnecessary = palette.blue_13,
                },
                references = {
                    write = palette.blue_29,
                    read = palette.grey_27,
                    text = palette.grey_27,
                },
            },
        }
    end,

    --- @param palette Palette
    --- @param config Config
    --- @return Theme
    light = function(palette, config)
        local background = palette.light_15

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
                bg_darker_02 = palette.light_14,
                fg = palette.grey_07,
                cursor = {
                    bg = palette.dark_01,
                    fg = palette.light_15,
                    term = {
                        bg = palette.blue_22,
                        fg = palette.light_15,
                    },
                    line = {
                        bg = palette.light_xx,
                        nr = {
                            bg = palette.light_xx,
                            fg = palette.blue_23,
                        },
                    },
                },
                context = {
                    bg = palette.light_12,
                },
                directory = {
                    fg = palette.yellow_02,
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
                    fg = palette.grey_16,
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
                    fg = palette.grey_07,
                    mode = {
                        bg = palette.blue_01,
                        fg = palette.light_15,
                    },
                    branch_icon = {
                        fg = palette.orange_03,
                    },
                },
                search = {
                    bg = palette.orange_04,
                },
                sign_column = {
                    bg = palette.none,
                },
                visual = {
                    bg = palette.blue_24,
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
                    fg = palette.grey_07,
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
                        fg = palette.grey_17,
                    },
                },
                folded = {
                    bg = palette.blue_26,
                },
                title = {
                    bg = palette.blue_04,
                    fg = palette.light_15,
                },
                telescope = {
                    matching = {
                        fg = palette.blue_27,
                    },
                    preview = {
                        bg = palette.light_09,
                        border = {
                            bg = palette.light_09,
                            fg = palette.light_09,
                        },
                        title = {
                            bg = palette.blue_01,
                            fg = palette.light_15,
                        },
                    },
                    prompt = {
                        bg = palette.light_08,
                        fg = palette.grey_07,
                        border = {
                            bg = palette.light_08,
                            fg = palette.light_08,
                        },
                        counter = {
                            fg = palette.grey_07,
                        },
                        title = {
                            bg = palette.blue_01,
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
                            bg = palette.blue_01,
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
                comment = palette.green_11,
                variable = palette.blue_19,
                constant = palette.blue_20,
                string = palette.red_07,
                character = palette.red_08,
                number = palette.green_10,
                identifier = palette.grey_07,
                punctuation = palette.grey_07,
                function_name = palette.yellow_07,
                operator = palette.dark_01,
                keyword = palette.blue_17,
                keyword_control_flow = palette.purple_03,
                macro = palette.blue_17,
                type = palette.blue_21,
                namespace = palette.blue_21,
                special = palette.red_08,
                special_char = palette.red_08,
                tag = palette.red_08,
                xml_tag = palette.blue_17,
                xml_delimiter = palette.blue_12,
                delimiter = palette.red_08,
                special_comment = palette.red_08,
                debug = palette.red_08,
                todo = palette.magenta_01,
            },
            git = {
                signs = {
                    add = palette.green_01,
                    delete = palette.red_06,
                    change = palette.blue_22,
                },
                status = {
                    ignored = palette.grey_24,
                    untracked = palette.green_12,
                    staged = palette.green_13,
                    deleted = palette.red_13,
                    modified = palette.yellow_09,
                },
                diff = {
                    add = palette.green_17,
                    change = palette.green_16,
                    delete = palette.red_11,
                    text = palette.green_17,
                },
            },
            lsp = {
                diagnostics = {
                    error = palette.red_06,
                    warn = palette.yellow_10,
                    info = palette.blue_25,
                    hint = palette.blue_28,
                    unnecessary = palette.blue_18,
                },
                references = {
                    write = palette.blue_30,
                    read = palette.light_09,
                    text = palette.light_09,
                },
            },
        }
    end,
}
