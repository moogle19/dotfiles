syntax on
set number
set ruler
filetype plugin on

set encoding=utf-8

"Golang Linter
"set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim

" install plugins
call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'ervandew/supertab'
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'fatih/vim-go', { 'branch': 'vim-8.0' }
Plug 'rhysd/vim-go-impl'
Plug 'nsf/gocode'
Plug 'mhinz/vim-signify'
Plug 'kballard/vim-swift'
Plug 'jimenezrick/vimerl'
Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }


call plug#end()

set wrap
set tabstop=8 " set tabstop with to 8
set shiftwidth=8
set softtabstop=8
set noexpandtab
set autoindent
set smartindent
set ignorecase " case-insensitive search
set smartcase " case-sensitive search if any caps
set cursorline " hightlight current line
set incsearch "search during typing
"set hlsearch " highlight all search results
set autoread  " Automatically read fileupdates from disk

let mapleader = ',' " set leader to ,

nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>

" set w!! to sudo write file
cnoremap w!! %!sudo tee > /dev/null %

" show tabs with »
set list listchars=tab:»·,trail:·
set backspace=indent,eol,start

" remove all trailing whitespaces on write
"fun! <SID>StripTrailingWhitespaces()
"    let l = line(".")
"    let c = col(".")
"    %s/\s\+$//e
"    call cursor(l, c)
"endfun
"autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

au FileType make set noexpandtab

" highlight json with javascript
au BufNewFile,BufRead *.json set ft=javascript

"Syntastic
"let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
let g:syntastic_go_checkers = ['golint']
let g:airline_powerline_fonts = 1
:let g:airline_theme='dark'
"let g:Powerline_symbols = 'fancy'
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"

let g:go_fmt_command = "goimports" " use goimports instead of fmt for automatic imports
"let g:go_fmt_command = "gofmt"

"let g:go_highlight_functions = 1
"let g:go_highlight_methods = 1
"let g:go_highlight_structs = 1
"let g:go_highlight_operators = 1
"let g:go_highlight_build_constraints = 1
"let g:go_auto_type_info = 1

" set go specific shortcuts
au FileType go nmap <leader>i <Plug>(go-info)
au FileType go nmap <leader>e <Plug>(go-rename)


set completeopt-=preview
set laststatus=2 " show statusbar always
let g:molokai_original = 1
colorscheme molokai

"color max line length
set colorcolumn=80
"colorscheme smyck

"tagbar
nmap <F8> :TagbarToggle<CR>
