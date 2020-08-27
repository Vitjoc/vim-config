" Ensure you have installed some decent font to show these
" pretty symbols, then you can enable icon for the kind.
let g:vista#renderer#enable_icon = 1

" How each level is indented and what to prepend.
" This could make the display more compact or more spacious.
" e.g., more compact: ["▸ ", ""]
" Note: this option only works the LSP executives, doesn't work for `:Vista ctags`.
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
