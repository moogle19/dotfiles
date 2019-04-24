" Color scheme
" colorscheme molokai
" Enable syntax highlighting
syntax on
" Show line numbers
set number
" Show line and column in lower right corner
set ruler
" Determine filetype based on name an content and
" use it for plugins and autoindentation
filetype indent plugin on
" Set default encoding to utf-8
set encoding=utf-8

" install plugins call 
call plug#begin()
" Fuzzy search
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
" File tree
Plug 'scrooloose/nerdtree'
" Syntax highlighting
Plug 'scrooloose/syntastic'
" Tab autocompletion
Plug 'ervandew/supertab' 
" Nicer status line
Plug 'vim-airline/vim-airline'
" Show git changes in vim
Plug 'tpope/vim-fugitive'
" Go support
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries', 'branch': 'master' }
" Go Impl support
Plug 'rhysd/vim-go-impl'
" Go autocompletion
Plug 'mdempsky/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
" Show diffs in vim
Plug 'mhinz/vim-signify'
" Swift support
Plug 'kballard/vim-swift'
" Erlang support
Plug 'jimenezrick/vimerl'
" Elixir support
Plug 'elixir-lang/vim-elixir'
" Run compiler etc. async
Plug 'tpope/vim-dispatch'
" Javascript support
Plug 'pangloss/vim-javascript'
" Plantuml syntax highlighting
Plug 'aklt/plantuml-syntax'
" Toml syntax highlighting
Plug 'cespare/vim-toml'
" Elm support
Plug 'elmcast/elm-vim'
" Rust support
Plug 'rust-lang/rust.vim'
" Rust autocompletion
Plug 'racer-rust/vim-racer'
" Postgres
Plug 'ivalkeen/vim-simpledb'
Plug 'blindFS/vim-taskwarrior'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'sebastianmarkow/deoplete-rust'
Plug 'Shougo/neopairs.vim'
Plug 'cespare/vim-toml'
Plug 'godlygeek/tabular'
Plug 'ntpeters/vim-better-whitespace'
Plug 'elzr/vim-json'
Plug 'ekalinin/Dockerfile.vim'
Plug 'luochen1990/rainbow'
call plug#end()

" Wrap text when line is to long to display
set wrap
" Set tabstop to display as 4 spaces
set tabstop=4
" Set shift width to same as tabstop
set shiftwidth=4
" Set soft-tabstop to same as tabstop
set softtabstop=4
" Do NOT expand tabs to spaces
set noexpandtab

" Use same indentation as line before
set autoindent
" Indent source code after braces etc.
set smartindent
" Allow backspacing autoindentation, line breaks and start of insert
set backspace=indent,eol,start

" Ignore case while searching
set ignorecase
" when using caps, search case-sensitive
set smartcase
" Search text while typing
set incsearch "search during typing
" Highlight search results while searching
set hlsearch

" Underline the current line the cursor is in
set cursorline
" Reload file after running a command, which changes the file
set autoread

" Remove preview window for auto completion
set completeopt-=preview
" Always show statusbar
set laststatus=2

"color max line length
set colorcolumn=80

" Background for macvim
set background=dark

" Disable arrow keys in vim
noremap! <Up> <NOP>
noremap! <Down> <NOP>
noremap! <Left> <NOP>
noremap! <Right> <NOP>
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Set 'leader' key to ','
let mapleader = ','

"" Nerdtree
" Toggle nerdtree
nnoremap <leader>d :NERDTreeToggle<CR>
" Show current file in nerdtree
nnoremap <leader>f :NERDTreeFind<CR>

"" fzf
" Search open buffers
nmap ; :Buffers<CR>
" Search all files
nmap <Leader>t :Files<CR>

" set w!! to sudo write file
cnoremap w!! %!sudo tee > /dev/null %

" Do not expand tabs in makefiles
au FileType make set noexpandtab

" highlight json with javascript
au BufNewFile,BufRead *.json set ft=javascript


"" Syntastic
let g:syntastic_enable_signs=1
let g:syntastic_go_checkers = ['golint']

"" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme='dark'

"" Supertab
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"

"" vim-go

" Use goimports as `go fmt` command
let g:go_fmt_command = "goimports" " use goimports instead of fmt for automatic imports
 
" Hightlight go functions
let g:go_highlight_functions = 1
" Hightlight go methods
let g:go_highlight_methods = 1
" Hightlight go structs
let g:go_highlight_structs = 1
" Hightlight go operators
let g:go_highlight_operators = 1
" Hightlight go build constraints
let g:go_highlight_build_constraints = 1
" Show go errors, command results etc. as quickfix
let g:go_list_type = "quickfix"

" Show information about object under the cursor
au FileType go nmap <leader>i <Plug>(go-info)
" Rename object under the cursor
au FileType go nmap <leader>e <Plug>(go-rename)
" Build go file 
autocmd FileType go nmap <leader>b  <Plug>(go-build)
" Run go file
autocmd FileType go nmap <leader>r  <Plug>(go-run)

" Use spaces for yaml
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

"" rust

" Run rustfmt on save
let g:rustfmt_autosave = 1
" Set path to racer (autocompletion)
le:racer_cmd = "/Users/kevin/.cargo/bin/racer"
let g:deoplete#sources#rust#racer_binary='/Users/kevin/.cargo/bin/racer'
let g:racer_experimental_completer = 1

let g:deoplete#enable_at_startup = 1

let g:rainbow_active = 1
let g:neopairs#enable = 1
call deoplete#custom#source('_', 'converters', ['converter_auto_paren'])
