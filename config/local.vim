inoremap fd <ESC>

colorscheme one
let g:airline_theme='solarized'

source $VIM_PATH/config/local/ui.vim
source $VIM_PATH/config/local/plugins/coc.vim
source $VIM_PATH/config/local/plugins/airline.vim
source $VIM_PATH/config/local/plugins/camelcasemotion.vim
source $VIM_PATH/config/local/plugins/easymotion.vim
source $VIM_PATH/config/local/plugins/vim_move.vim
source $VIM_PATH/config/local/plugins/translator.vim
source $VIM_PATH/config/local/plugins/closetag.vim
source $VIM_PATH/config/local/plugins/startify.vim


" Drag current line/s vertically and auto-indent
" nnoremap <Leader>k :m-2<CR>==
" nnoremap <Leader>j :m+<CR>==
" vnoremap <Leader>k :m'<-2<CR>gv=gv
" vnoremap <Leader>j :m'>+<CR>gv=gv

"set to 0 if you want to enable it later via :RainbowToggle
let g:rainbow_active = 1

let g:tagalong_verbose = 1

let g:tagalong_filetypes = [
	\'html', 'xml', 'jsx', 'eruby', 'ejs', 'eco', 'php', 'htmldjango',
	\'javascriptreact', 'typescriptreact', 'js', 'ts', 'javascript', 'typescript']


" vim-devicons
let g:webdevicons_enable = 1
let g:webdevicons_enable_denite = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_unite = 1
let g:webdevicons_enable_vimfiler = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
let g:webdevicons_enable_ctrlp = 1
let g:webdevicons_enable_flagship_statusline = 1
let g:WebDevIconsUnicodeDecorateFileNodes = 1
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:DevIconsEnableFolderPatternMatching = 1
let g:DevIconsEnableFolderExtensionPatternMatching = 1

" Set floating window not to be slightly transparent
set winbl=0

" Don't dispay mode in command line (airilne already shows it)
set noshowmode

" Call method on window enter
augroup WindowManagement
  autocmd!
  autocmd WinEnter * call Handle_Win_Enter()

augroup END

" Change highlight group of preview window when open
function! Handle_Win_Enter()
  if &previewwindow
    setlocal winhighlight=Normal:MarkdownError
  endif
endfunction

" Start new line from any cursor position in insert-mode
inoremap <C-l> <C-o>o
