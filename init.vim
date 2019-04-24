" Plugins

set runtimepath+=~/.config/nvim/plugins/repos/github.com/Shougo/dein.vim

call dein#begin("~/.config/nvim/plugins")
call dein#add('Shougo/dein.vim')

" Appearence
	" Vim-Airline
    call dein#add('vim-airline/vim-airline')
    " Vim-Airline Theme
	call dein#add('chrisduerr/vim-undead')
	" Colored braces
	call dein#add('luochen1990/rainbow')

" Programming
    " Rust
	"call dein#add('autozimu/LanguageClient-neovim', {'rev': 'next', 'build': 'bash install.sh'})
	" Golang
	call dein#add('deoplete-plugins/deoplete-go', {'do': 'make'})
	" Rust
	call dein#add('sebastianmarkow/deoplete-rust')
    " Git Diff
    call dein#add('airblade/vim-gitgutter')
    " Comment/Uncomment text
	call dein#add('tpope/vim-commentary')
	" Display Function Signatures
	call dein#add('Shougo/echodoc.vim')
	" Syntax Highlighting for a ton of languages
	call dein#add('sheerun/vim-polyglot')
	" Golang support
	call dein#add('fatih/vim-go', {'do': ':GoUpdateBinaries', 'rev': 'master'})
	" Snippets
    call dein#add('Shougo/neosnippet')
    call dein#add('Shougo/neosnippet-snippets')
	"Close all braces
	call dein#add('Shougo/neopairs.vim')
	" Rust autocompletion
	call dein#add('racer-rust/vim-racer')
	" Rust support
	call dein#add('rust-lang/rust.vim')

	" Usability
	" reopen files at last edit position
    call dein#add('dietsche/vim-lastplace')
    " Mark Trailing Whitespaces
    call dein#add('ntpeters/vim-better-whitespace')
    " Fuzzy Finder And Stuff, used for LanguageClient
	" call dein#add('Shougo/denite.nvim', {'do': ':UpdateRemotePlugins'})
	" File tree
	call dein#add('scrooloose/nerdtree')
	" Autocompletiong
	call dein#add('Shougo/deoplete.nvim')

call dein#end()

" Determine filetype based on name an content and
" use it for plugins and autoindentation
filetype plugin indent on

" Enable syntax highlighting
syntax on

" Install plugins
if dein#check_install()
    call dein#install()
endif

" Set default encoding to utf-8
set encoding=utf-8
scriptencoding utf-8

" Case-insensitive pathname tab completion
set wildignorecase

set tabstop=4 shiftwidth=4 softtabstop=4 noexpandtab autoindent

" Persistent undo
set undodir=~/.config/nvim/.undo//
set backupdir=~/.config/nvim/.backup//
set directory=~/.config/nvim/.swp//
set undofile

" Better searching
set ignorecase smartcase incsearch showmatch hlsearch
nnoremap <C-L> :noh<CR><C-L>

" Show line numbers and never let cursor touch top/bottom
set number scrolloff=5

" Show line and column in lower right corner
set ruler

" Hide -- INSERT -- in cmdline
set noshowmode

" Don't open preview window after completion
set completeopt-=preview

" Wrap text when line is to long to display
set wrap

" Indent source code after braces etc.
set smartindent

" Allow backspacing autoindentation, line breaks and start of insert
set backspace=indent,eol,start

" Reset cursor after quitting vim
au VimLeave * set guicursor=a:hor100

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

" Setup TAB to work for neosnippet and deoplete
function! TabKeyFunc() abort
    if neosnippet#jumpable()
        return "\<Plug>(neosnippet_jump)"
    elseif pumvisible()
        return "\<C-N>"
    else
        return "\<TAB>"
    endif
endfunction
imap <expr><TAB> TabKeyFunc()

" Setup ENTER to prevent new line when completing
function! EnterKeyFunc() abort
    if neosnippet#expandable()
        return "\<Plug>(neosnippet_expand)"
    elseif pumvisible()
        return deoplete#close_popup()
    else
        return "\<ENTER>"
    endif
endfunction
imap <expr><ENTER> EnterKeyFunc()

" Hide 'match 1 of 8' messages
set shortmess=filnxtToOIc

" Yank to system clipboard
set clipboard+=unnamedplus

" Preview regex changes
set inccommand=nosplit

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
" let g:syntastic_enable_signs=1
" let g:syntastic_go_checkers = ['golint']

"" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme='dark'

"" Supertab
" let g:SuperTabDefaultCompletionType = "<C-X><C-O>"

"" vim-go

" Use goimports as `go fmt` command
let g:go_fmt_command = "goimports" " use goimports instead of fmt for automatic imports
"
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
" le:racer_cmd = "/Users/kevin/.cargo/bin/racer"
" let g:deoplete#sources#rust#racer_binary='/Users/kevin/.cargo/bin/racer'
" let g:racer_experimental_completer = 1

" let g:neopairs#enable = 1

" Plugin Configs

	" Rainbow ON!
	let g:rainbow_active = 1

    " Vim-Airline
    function! AirlineInit()
        let g:airline_section_b = airline#section#create([''])
        let g:airline_section_c = airline#section#create([''])
        let g:airline_section_y = airline#section#create([''])
        let g:airline_section_z = airline#section#create(['%l/%L %c'])
    endfunction
    autocmd User AirlineAfterInit call AirlineInit()

    " Airline symbols
    if !exists('g:airline_symbols')
        let g:airline_symbols = {}
    endif

    let g:airline_left_sep = ''
    let g:airline_left_alt_sep = ''
    let g:airline_right_sep = ''
    let g:airline_right_alt_sep = ''

    " Airline tabline
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#left_alt_sep = ''
    let g:airline#extensions#tabline#right_alt_sep = ''
    let g:airline#extensions#tabline#buffers_label = '%f'
    let g:airline#extensions#tabline#show_close_button = 0
    let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

    " Better Whitespace Plugin
    highlight ExtraWhitespace ctermbg=01

    " Echodoc
    let g:echodoc_enable_at_startup = 1

    " Deoplete
    let g:deoplete#enable_at_startup = 1
    let g:deoplete#enable_smart_case = 1

	let g:go_def_mode='gopls'

	call deoplete#custom#option('omni_patterns', {
	\ 'go': '[^. *\t]\.\w*',
	\})

	let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
	let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
