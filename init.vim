call plug#begin()
Plug 'w0rp/ale'
Plug 'scrooloose/nerdtree'
Plug 'fisadev/vim-isort'
Plug 'mxw/vim-jsx'
Plug 'kien/ctrlp.vim'
call plug#end()

colorscheme koehler

set syntax=on
set colorcolumn=80
set tabstop=2
set nowrap

let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s'
let g:ale_completion_enabled = 1
let g:ale_javascript_jshint_executable = 'jshint'
let g:ale_javascript_jshint_use_global = 0


