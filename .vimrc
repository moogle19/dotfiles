syntax on
set number
set ruler
filetype plugin on

set encoding=utf-8

"Golang Linter
"set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim

"run plugins
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

set nowrap
set tabstop=8
set shiftwidth=8
set softtabstop=8
set noexpandtab
set autoindent
set smartindent

"set list listchars=tab:»·,trail:·
set backspace=indent,eol,start

fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

au FileType make set noexpandtab

au BufNewFile,BufRead *.json set ft=javascript

"Syntastic
"let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
let g:syntastic_go_checkers = ['go', 'golint']
let g:airline_powerline_fonts = 1
:let g:airline_theme='dark'
"let g:Powerline_symbols = 'fancy'
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
let g:go_fmt_command = "goimports"

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

set completeopt-=preview
set laststatus=2
let g:molokai_original = 1
colorscheme molokai

"color max line length
set colorcolumn=80
"colorscheme smyck
