" General settings

" Force ViM mode (loses backwards compatibility with Vi) 
set nocompatible

" Syntax highlighting               
syntax on

" Enhance command-line completion
set wildmenu

" Allow cursor keys in insert mode
set esckeys

" Allow backspace in insert mode
set backspace=indent,eol,start

" Optimize for fast terminal connections
set ttyfast

" Use UTF-8 without BOM
set encoding=utf-8 nobomb

" Highlight searches
set hlsearch

" Ignore case of searches
set ignorecase

" Unless the search contains uppercase
set smartcase

" Incremental search
set incsearch

" Line numbers
set number

" Auto indent
set ai

" Highlight current line
set cursorline

" Show ruler in footer
set ruler

" No intro message
set shortmess=atI

" Show the current mode
set showmode

" Show the command as it's typed
set showcmd

" Always show status line
set laststatus=2

" Disable error bells
set noerrorbells

" Blink cursor instead of stupid bell
set vb

" Don't reset cursor to start of line when moving around
set nostartofline

" Start scrolling three lines before the horizontal window border
set scrolloff=3

" Turn off warning messages switching between buffers
set hidden

" Don't auto fold on file open
set foldlevelstart=99

" Disable autosave prompt
let g:session_autosave = 'yes'

" Set the delay after hitting escape to 100ms
set ttimeout
set ttimeoutlen=100

" Allow mouse support for those rare cases
set mouse=a

" Allow editing of crontabs (disable backup)
autocmd filetype crontab setlocal nobackup nowritebackup

" Show window split for autocompletion at bottom of screen
set splitbelow

" vim-plug installations
call plug#begin()

" Tool plugins
Plug 'gmarik/Vundle.vim'
Plug 'tpope/vim-fugitive'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'majutsushi/tagbar'
Plug 'neomake/neomake'
Plug 'nvie/vim-flake8'
Plug 'rking/ag.vim'
Plug 'davidhalter/jedi-vim'

" Display plugins
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'chriskempson/base16-vim'

" Language plugins
Plug 'groenewege/vim-less'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'elzr/vim-json'
Plug 'cakebaker/scss-syntax.vim'
Plug 'kchmck/vim-coffee-script'

call plug#end()

" Enable filetype highlighting
filetype plugin indent on

" Colour settings
set t_Co=256
set background=dark
let base16colorspace=256
colorscheme base16-tomorrow

" Neomake settings
autocmd! BufWritePost * Neomake
let g:neomake_highlight_columns = 0
let g:neomake_javascript_enabled_makers = ['eslint_d']
let g:neomake_jsx_enabled_makers = ['eslint_d']
let g:neomake_python_enabled_makers = ['flake8']
let g:neomake_python_flake8_maker = { 'args': ['--ignore=E501'] }

" Airline settings
let g:airline_theme='base16'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1

" NERDTree settings
let NERDTreeIgnore = ['\.pyc$']

" NERDCommenter settings
let g:NERDSpaceDelims = 1

" JSX settings
let g:jsx_ext_required = 0

" CtrlP settings
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
	\ --ignore .git
	\ --ignore .svn
	\ --ignore .hg
	\ --ignore .DS_Store
	\ --ignore "**/*.pyc"
	\ -g ""'

" Keymapping settings
let mapleader = "\<Space>"
imap jj <Esc>
nmap <leader><Tab> :NERDTreeToggle<CR>
nmap <leader>t :TagbarToggle<CR>
nmap <leader>o :NERDTreeFind<CR>
noremap <leader>h :bp<CR>
noremap <leader>l :bn<CR>
noremap <leader>q :bp\|bd #<CR>
nnoremap j gj
nnoremap k gk
nnoremap <leader>w :w<CR>
nnoremap <leader>/ :Ag<space>
