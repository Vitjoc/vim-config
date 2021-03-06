let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

" <Leader>f{char} to move to {char}
map  <Leader><Leader>f <Plug>(easymotion-bd-f)
nmap <Leader><Leader>f <Plug>(easymotion-overwin-f)
map  <A-f> <Plug>(easymotion-bd-f)
nmap <A-f> <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
" nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader><Leader>l <Plug>(easymotion-bd-jk)
nmap <Leader><Leader>l <Plug>(easymotion-overwin-line)
map <A-l> <Plug>(easymotion-bd-jk)
nmap <A-l> <Plug>(easymotion-overwin-line)

" Move to word
map  <A-w> <Plug>(easymotion-bd-w)
nmap <A-w> <Plug>(easymotion-overwin-w)
