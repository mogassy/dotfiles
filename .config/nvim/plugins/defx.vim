" もし作成してなかったら ~/.defxsessions を作成する
" そして defx を開く際にセッションファイルを指定する
"
let g:defx_sessions_file = $HOME . '/.defxsessions'

if getftype(g:defx_sessions_file) != "file"
  call writefile(["{}"], g:defx_sessions_file)
  echo "Created .defxsessions file to home directory."
endif

nnoremap <expr><silent> sz ":Defx " . "-columns=git:indent:icons:filename "
  \ . "-session-file=" . g:defx_sessions_file . " "
  \ . "-show-ignored-files "
  \ . "-toggle -split=vertical -winwidth=30 -direction=topleft<CR>"

nnoremap <expr><silent> sZ ":Defx " . "-columns=git:indent:icons:filename:type:size:time "
  \ . "-session-file=" . g:defx_sessions_file . " "
  \ . "-show-ignored-files "
  \ . "-toggle -split=horizontal -winheight=20 -direction=botright<CR>"

autocmd FileType defx call s:defx_my_settings()
autocmd FileType defx set nonumber
autocmd FileType defx set signcolumn=no
function! s:defx_my_settings() abort
  " Define mappings
  " nnoremap <silent><buffer><expr> <CR> defx#do_action('open')
  nnoremap <silent><buffer><expr> <CR> defx#do_action('drop')
  nnoremap <silent><buffer><expr> cc
  \ defx#do_action('copy')
  nnoremap <silent><buffer><expr> m
  \ defx#do_action('move')
  nnoremap <silent><buffer><expr> p
  \ defx#do_action('paste')
  nnoremap <silent><buffer><expr> l
  \ defx#do_action('drop')
  nnoremap <silent><buffer><expr> t
  \ defx#do_action('open_or_close_tree')
  nnoremap <silent><buffer><expr> T
  \ defx#do_action('open_tree_recursive')
  nnoremap <silent><buffer><expr> w
  \ defx#do_action('add_session')
  nnoremap <silent><buffer><expr> E
  \ defx#do_action('open', 'vsplit')
  nnoremap <silent><buffer><expr> P
  \ defx#do_action('open', 'pedit')
  nnoremap <silent><buffer><expr> K
  \ defx#do_action('new_directory')
  nnoremap <silent><buffer><expr> N
  \ defx#do_action('new_file')
  nnoremap <silent><buffer><expr> M
  \ defx#do_action('new_multiple_files')
  nnoremap <silent><buffer><expr> C
  \ defx#do_action('toggle_columns',
  \                'mark:filename:type:size:time')
  nnoremap <silent><buffer><expr> S
  \ defx#do_action('toggle_sort', 'time')
  " nnoremap <silent><buffer><expr> dd
  " \ defx#do_action('remove_trash')
  nnoremap <silent><buffer><expr> r
  \ defx#do_action('rename')
  nnoremap <silent><buffer><expr> !
  \ defx#do_action('execute_command')
  nnoremap <silent><buffer><expr> x
  \ defx#do_action('execute_system')
  nnoremap <silent><buffer><expr> yy
  \ defx#do_action('yank_path')
  nnoremap <silent><buffer><expr> .
  \ defx#do_action('toggle_ignored_files')
  nnoremap <silent><buffer><expr> ;
  \ defx#do_action('repeat')
  nnoremap <silent><buffer><expr> h
  \ defx#do_action('cd', ['..'])
  nnoremap <silent><buffer><expr> ~
  \ defx#do_action('cd')
  nnoremap <silent><buffer><expr> q
  \ defx#do_action('quit')
  nnoremap <silent><buffer><expr> <Space>
  \ defx#do_action('toggle_select') . 'j'
  nnoremap <silent><buffer><expr> *
  \ defx#do_action('toggle_select_all')
  nnoremap <silent><buffer><expr> j
  \ line('.') == line('$') ? 'gg' : 'j'
  nnoremap <silent><buffer><expr> k
  \ line('.') == 1 ? 'G' : 'k'
  nnoremap <silent><buffer><expr> <C-l>
  \ defx#do_action('redraw')
  nnoremap <silent><buffer><expr> <C-g>
  \ defx#do_action('print')
  nnoremap <silent><buffer><expr> cd
  \ defx#do_action('change_vim_cwd')
endfunction
call defx#custom#column('mark', {
      \ 'readonly_icon': '✗',
      \ 'selected_icon': '✓',
      \ })
