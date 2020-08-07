let g:translator_target_lang = 'ru'
let g:translator_default_engines = ['google']

" Echo translation in the cmdline
nmap <silent> <Leader>tr <Plug>Translate
vmap <silent> <Leader>tr <Plug>TranslateV
" Display translation in a window
nmap <silent> <Leader>tt <Plug>TranslateW
vmap <silent> <Leader>tt <Plug>TranslateWV
" Replace the text with translation
nmap <silent> <Leader>rt <Plug>TranslateR
vmap <silent> <Leader>rt <Plug>TranslateRV
" Translate the text in clipboard
nmap <silent> <Leader>xx <Plug>TranslateX
