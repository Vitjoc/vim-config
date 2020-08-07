" UI elements {{{
" ---------------------------------------------------------
set showbreak=↪
set fillchars=vert:│,fold:─
set listchars=tab:\▏\ ,extends:⟫,precedes:⟪,nbsp:␣,trail:·

" icons:  ▏│ ¦ ╎ ┆ ⋮ ⦙ ┊ 
" }}}

" Tabline {{{
" ---
" TabLineFill: Tab pages line, where there are no labels
hi TabLineFill ctermfg=234 ctermbg=236 guifg=#a8a897 guibg=#303030 cterm=NONE gui=NONE
" TabLine: Not-active tab page label
hi TabLine     ctermfg=243 ctermbg=236 guifg=#767676 guibg=#303030 cterm=NONE gui=NONE
" TabLineSel: Active tab page label
hi TabLineSel  ctermfg=241 ctermbg=234 guifg=#1C1C1C guibg=#a8a897 cterm=NONE gui=NONE
" Custom
highlight TabLineSelShade  ctermfg=235 ctermbg=234 guifg=#262626 guibg=#a8a897
highlight TabLineAlt       ctermfg=252 ctermbg=238 guifg=#D0D0D0 guibg=#444444
highlight TabLineAltShade  ctermfg=238 ctermbg=236 guifg=#444444 guibg=#303030

" Statusline {{{
let s:stl  = " %7*%{&paste ? '=' : ''}%*"         " Paste symbol
let s:stl .= "%4*%{&readonly ? '' : '#'}%*"       " Modifide symbol
let s:stl .= "%6*%{badge#mode('⚠ ', 'Z')}"        " Read-only symbol
let s:stl .= '%*%n'                               " Buffer number
let s:stl .= "%6*%{badge#modified('+')}%0*"       " Write symbol
let s:stl .= ' %1*%{badge#filename()}%*'          " Filename
let s:stl .= ' %<'                                " Truncate here
let s:stl .= '%( %{badge#branch()} %)'           " Git branch name
" let s:stl .= "%4*%(%{badge#trails('⤐ %s')} %)"   " Whitespace
let s:stl .= '%(%{badge#syntax()} %)%*'           " syntax check
let s:stl .= '%='                                 " Align to right
let s:stl .= '%{badge#format()} %4*%*'           " File format
let s:stl .= '%( %{&fenc} %)'                     " File encoding
let s:stl .= '%4*%*%( %{&ft} %)'                 " File type
let s:stl .= '%3*%2* %l/%2c%4p%% '               " Line and column
let s:stl .= '%{badge#indexing()}%*'              " Indexing tags indicator

" Non-active Statusline {{{
let s:stl_nc = " %{badge#mode('⚠ ', 'Z')}%n"   " Readonly & buffer
let s:stl_nc .= "%6*%{badge#modified('+')}%*"  " Write symbol
let s:stl_nc .= ' %{badge#filename()}'         " Relative supername
let s:stl_nc .= '%='                           " Align to right
let s:stl_nc .= '%{&ft} '                      " File type
" }}}

" Highlights: Statusline {{{
" highlight StatusLine   ctermfg=236 ctermbg=248 guifg=#30302c guibg=#a8a897
highlight StatusLine guifg=#a8a897 guibg=#4e4e43 ctermfg=248 ctermbg=239
highlight StatusLineNC ctermfg=236 ctermbg=242 guifg=#30302c guibg=#666656

" Filepath color
" highlight User1 guifg=#D7D7BC guibg=#30302c ctermfg=251 ctermbg=236
highlight User1 guifg=#a8a897 guibg=#4e4e43 ctermfg=248 ctermbg=239
" Line and column information
" highlight User2 guifg=#a8a897 guibg=#4e4e43 ctermfg=248 ctermbg=239
highlight User2 guifg=#a8a897 guibg=#4e4e43 ctermfg=248 ctermbg=239
" Line and column corner arrow
highlight User3 guifg=#4e4e43 guibg=#30302c ctermfg=239 ctermbg=236
highlight User3 guifg=#a8a897 guibg=#4e4e43 ctermfg=248 ctermbg=239
" Buffer # symbol and whitespace or syntax errors
highlight User4 guifg=#666656 guibg=#30302c ctermfg=242 ctermbg=236
highlight User4 guifg=#a8a897 guibg=#4e4e43 ctermfg=248 ctermbg=239
" Write symbol
highlight User6 guifg=#cf6a4c guibg=#30302c ctermfg=167 ctermbg=236
highlight User6 guifg=#cf6a4c guibg=#4e4e43 ctermfg=248 ctermbg=239
" Paste symbol
highlight User7 guifg=#99ad6a guibg=#30302c ctermfg=107 ctermbg=236
highlight User7 guifg=#99ad6a guibg=#4e4e43 ctermfg=248 ctermbg=239
" Syntax and whitespace
highlight User8 guifg=#ffb964 guibg=#30302c ctermfg=215 ctermbg=236
highlight User8 guifg=#ffb964 guibg=#4e4e43 ctermfg=248 ctermbg=239
" }}}

let s:disable_statusline =
	\ 'denite\|defx\|tagbar\|nerdtree\|undotree\|diff\|peekaboo\|sidemenu'

" Toggle Statusline {{{
augroup statusline
	autocmd!
	autocmd FileType,WinEnter,BufWinEnter,BufReadPost *
		\ if &filetype !~? s:disable_statusline
		\ | let &l:statusline = s:stl
		\ | endif
	autocmd WinLeave *
		\ if &filetype !~? s:disable_statusline
		\ | let &l:statusline = s:stl_nc
		\ | endif
augroup END "}}}

" }}}

" Highlights: General GUI {{{
" ---------------------------------------------------------
" highlight! Error  term=NONE cterm=NONE
" highlight! link WarningMsg  Comment
" highlight! link pythonSpaceError  NONE
" highlight! link pythonIndentError NONE
" highlight! link mkdLineBreak      NONE
" highlight! link ExtraWhitespace  SpellBad
" highlight! WarningMsg ctermfg=100 guifg=#CCC566
" }}}

" highlight ParenMatch  ctermbg=236 guibg=#30302c
" highlight CursorWord0 ctermbg=236 guibg=#30302c
" highlight CursorWord1 ctermbg=236 guibg=#30302c

" Plugin: Defx icons and highlights {{{
" ---------------------------------------------------------
" let g:defx_git#indicators = {
"	\ 'Modified'  : '•',
"	\ 'Staged'    : '✚',
"	\ 'Untracked' : 'ᵁ',
"	\ 'Renamed'   : '≫',
"	\ 'Unmerged'  : '≠',
"	\ 'Ignored'   : 'ⁱ',
"	\ 'Deleted'   : '✖',
"	\ 'Unknown'   : '⁇'
"	\ }
" 
" highlight Defx_filename_3_Modified  ctermfg=1  guifg=#D370A3
" highlight Defx_filename_3_Staged    ctermfg=10 guifg=#A3D572
" highlight Defx_filename_3_Ignored   ctermfg=8  guifg=#404660
" highlight def link Defx_filename_3_Untracked Comment
" highlight def link Defx_filename_3_Unknown Comment
" highlight def link Defx_filename_3_Renamed Title
" highlight def link Defx_filename_3_Unmerged Label
" highlight Defx_git_Deleted   ctermfg=13 guifg=#b294bb
"
" " Plugin: vim-operator-flashy {{{
" " ---------------------------------------------------------
" highlight! link Flashy DiffText
" " }}}
" 
" " Plugin: vim-bookmarks {{{
" let g:bookmark_sign = '⚐'
" highlight! BookmarkSign            ctermfg=12 guifg=#4EA9D7
" highlight! BookmarkAnnotationSign  ctermfg=11 guifg=#EACF49
" " }}}
" 
" " Plugin: vim-choosewin {{{
" " ---------------------------------------------------------
" let g:choosewin_label = 'SDFJKLZXCV'
" let g:choosewin_overlay_enable = 1
" let g:choosewin_statusline_replace = 1
" let g:choosewin_overlay_clear_multibyte = 0
" let g:choosewin_blink_on_land = 0
" 
" let g:choosewin_color_label = {
"	\ 'cterm': [ 236, 2 ], 'gui': [ '#555555', '#000000' ] }
" let g:choosewin_color_label_current = {
"	\ 'cterm': [ 234, 220 ], 'gui': [ '#333333', '#000000' ] }
" let g:choosewin_color_other = {
"	\ 'cterm': [ 235, 235 ], 'gui': [ '#333333' ] }
" let g:choosewin_color_overlay = {
"	\ 'cterm': [ 2, 10 ], 'gui': [ '#88A2A4' ] }
" let g:choosewin_color_overlay_current = {
"	\ 'cterm': [ 72, 64 ], 'gui': [ '#7BB292' ] }
" " }}}
" 
hi link CocErrorSign WarningMsg
hi link CocWarningSign Number
hi link CocInfoSign Type


" Plugin: denite {{{
" ---------------------------------------------------------
highlight! clear WildMenu
" highlight! link WildMenu CursorLinectermfg=12 guifg=#4EA9D7
highlight! WildMenu guifg=#073642 guibg=#657b83
highlight! link deniteSelectedLine Type
" highlight! link deniteMatchedChar Search
" highlight! link deniteMatchedChar WarningMsg
" highlight! link deniteMatchedRange Underlined
" highlight! link deniteMatchedRange WarningMsg
highlight! link deniteMode Comment
highlight! link deniteSource_QuickfixPosition qfLineNr
" }}}


"
" Plugin: denite {{{
" ---
" highlight! clear WildMenu
" highlight! WildMenu ctermbg=97 guibg=#82395F
" " highlight! WildMenu ctermbg=97 guibg=#88A2A4
" highlight! link deniteSelectedLine Statement
" " highlight! link deniteMatchedChar Function
" highlight! link deniteMatchedChar Number
" highlight! link deniteMatchedRange WarningMsg
" " highlight! link deniteMatchedRange Underlined
" highlight! link deniteMode Comment
" highlight! link deniteSource_QuickfixPosition qfLineNr
" highlight! link deniteSource__LocationListPosition qfLineNr
" highlight! link deniteSource__LocationListError Constant
" highlight! link deniteSource__LocationListWarning PreProc
" " }}}

" Try to hide vertical spit and end of buffer symbol
" hi VertSplit gui=NONE guifg=#17252c guibg=#17252c
" hi EndOfBuffer ctermbg=NONE ctermfg=NONE guibg=#17252c guifg=#17252c
" hi EndOfBuffer guibg=bg

" not display a ~ for blank lines
hi NonText guifg=bg
