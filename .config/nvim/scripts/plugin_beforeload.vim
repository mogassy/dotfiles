" vim:fdm=marker:fmr=§§,■■

" Package を load する前に予め設定する変数値など．

let g:python3_host_prog = '/usr/local/bin/python3'

" §§1 Plugin settings for lambdalisue/fern.vim

let g:fern#disable_default_mappings = 1
let g:fern#default_hidden = 1

let g:loaded_netrw             = 1
let g:loaded_netrwPlugin       = 1
let g:loaded_netrwSettings     = 1
let g:loaded_netrwFileHandlers = 1

" §§1 Plugin settings for lervag/vimtex

let g:tex_flavor = "latex"

" §§1 Plugin settings for liuchengxu/vista.vim

let g:vista_default_executive = 'coc'

" §§1 Plugin settings for thinca/vim-splash

let g:splash#path = $HOME . "/.config/nvim/scripts/resource/monaqa.txt"

" §§1 Plugin settings for barbar.nvim
" NOTE: This variable doesn't exist before barbar runs. Create it before
"       setting any option.

" DUMMY highlight for avoiding error in barbar.nvim. This is overrided by gruvbit after
" hi! Special guifg=NONE guibg=NONE gui=NONE cterm=NONE

let bufferline = {}

" Sets the maximum padding width with which to surround each tab
let bufferline.maximum_padding = 0

" §§1 Plugin settings for mattn/vim-sonictemplate

let g:sonictemplate_vim_template_dir = [
\ '$HOME/.config/nvim/scripts/template',
\]

" §§1 Plugin settings for vim-python/python-syntax
"
let g:python_highlight_all = 1

" §§1 Plugin settings for plasticboy/vim-markdown

let g:vim_markdown_new_list_item_indent = 2
