--- @meta

--- @alias ColorschemeFlavor "gruvbox" | "monokai" | "kanagawa"
--- @alias GruvboxContrast "low" | "high"
--- @alias GruvboxTheme "dark" | "light"
--- @alias GruvboxAccent "red" | "orange" | "yellow" | "green" | "cyan" | "blue" | "magenta"
--- @alias HighlightTable table<string, vim.api.keyset.highlight>

--- @class FlavorBaseRamp
--- @field base_00 string
--- @field base_01 string
--- @field base_02 string
--- @field base_03 string
--- @field base_04 string
--- @field base_05 string
--- @field base_06 string
--- @field base_07 string
--- @field base_08 string
--- @field base_09 string
--- @field base_10 string
--- @field base_11 string
--- @field base_12 string
--- @field base_13 string
--- @field base_14 string
--- @field base_15 string

--- @class FlavorAccents
--- @field red string
--- @field orange string
--- @field yellow string
--- @field green string
--- @field cyan string
--- @field blue string
--- @field magenta string
--- @field bg_red string
--- @field bg_orange string
--- @field bg_yellow string
--- @field bg_green string
--- @field bg_cyan string
--- @field bg_blue string
--- @field bg_magenta string

--- @class FlavorSpec
--- @field base FlavorBaseRamp | table<GruvboxTheme, FlavorBaseRamp>
--- @field accents table<GruvboxTheme, FlavorAccents | table<GruvboxContrast | "default", FlavorAccents>>

--- @class GruvboxPalette : FlavorBaseRamp, FlavorAccents

--- @class MarkdownDocstring
--- @field python? boolean

--- @class Extend
--- @field todotxt? boolean

--- @class GruvboxConfig
--- @field flavor? ColorschemeFlavor
--- @field transparent? boolean
--- @field italic_comments? boolean
--- @field italic_functions? boolean
--- @field contrast? GruvboxContrast
--- @field theme? GruvboxTheme
--- @field accent? GruvboxAccent
--- @field semantic_highlights? boolean
--- @field terminal_colors? boolean
--- @field markdown_docstring? MarkdownDocstring
--- @field extend? Extend
--- @field overrides? HighlightTable -- accepts hex colors or links
