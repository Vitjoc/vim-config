" Vim-move
let g:move_map_keys = 0

" Move current line down by one
nmap <A-,> <Plug>MoveLineDown
" vnoremap <Leader>j <Plug>MoveLineDown

" Move current line up by one
nmap <A-.> <Plug>MoveLineUp
" vnoremap <Leader>k <Plug>MoveLineUp

" Move selected block down by one line.
vmap <A-,> <Plug>MoveBlockDown

" Move selected block up by one line.
vmap <A-.> <Plug>MoveBlockUp
