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
