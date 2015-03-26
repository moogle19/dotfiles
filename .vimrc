runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
syntax on
set number
set ruler

set encoding=utf-8

set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
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
let g:airline_powerline_fonts = 1
:let g:airline_theme='dark'
"let g:Powerline_symbols = 'fancy'
set laststatus=2
colorscheme smyck

