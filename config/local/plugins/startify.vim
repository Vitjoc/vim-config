autocmd User Startified setlocal cursorline

let g:startify_custom_header = 'startify#pad(startify#fortune#boxed())'

let g:startify_lists = [
			\ { 'type': 'files',     'header': ['   MRU']            },
			\ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
			\ { 'type': 'sessions',  'header': ['   Sessions']       },
			\ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
			\ { 'type': 'commands',  'header': ['   Commands']       },
			\ ]

  let g:startify_files_number        = 8
  let g:startify_relative_path       = 1
  let g:startify_change_to_dir       = 1
  let g:startify_update_oldfiles     = 1
  let g:startify_session_autoload    = 1
  let g:startify_session_persistence = 1

