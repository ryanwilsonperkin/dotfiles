" General settings

" Set shell for vim usage
set shell=bash

" Force ViM mode (loses backwards compatibility with Vi) 
set nocompatible

" Syntax highlighting               
syntax on

" Enhance command-line completion
set wildmenu

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
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'majutsushi/tagbar'
Plug 'neomake/neomake'
Plug 'nvie/vim-flake8'
Plug 'rking/ag.vim'
Plug 'davidhalter/jedi-vim'
Plug 'prettier/vim-prettier'

" Display plugins
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'chriskempson/base16-vim'

" Language plugins
Plug 'groenewege/vim-less'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'cakebaker/scss-syntax.vim'
Plug 'kchmck/vim-coffee-script'
Plug 'stephpy/vim-yaml'
Plug 'python-mode/python-mode'
Plug 'dag/vim-fish'
Plug 'cespare/vim-toml'
Plug 'chrisbra/csv.vim'
Plug 'leafgarland/typescript-vim'

call plug#end()

" Enable filetype highlighting
filetype plugin indent on

" Colour settings
if $ITERM_PROFILE == 'light'
  colorscheme default
else
  set background=dark
  let base16colorspace=256
  colorscheme base16-tomorrow
endif

" Neomake settings
autocmd! BufWritePost * Neomake
let g:neomake_highlight_columns = 0
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_jsx_enabled_makers = ['eslint']
let g:neomake_python_enabled_makers = ['flake8']

" Python-mode settings
let g:pymode_indent = 1
let g:pymode_folding = 1
let g:pymode_motion = 1
let g:pymode_doc = 1
let g:pymode_doc_bind = 'K'
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'
let g:pymode_breakpoint_cmd = 'import ipdb; ipdb.set_trace()'
let g:pymode_lint = 0
let g:pymode_rope = 0

" Airline settings
if $ITERM_PROFILE == 'light'
  let g:airline_theme='minimalist'
else
  let g:airline_theme='base16'
endif
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1

" Devicons settings
let g:webdevicons_enable_ctrlp = 1

" NERDTree settings
let NERDTreeIgnore = ['\.pyc$']
let NERDTreeMinimalUI=1

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
noremap <leader>[ :lprevious<CR>
noremap <leader>] :lnext<CR>
noremap <leader>\ :lopen<CR>
nnoremap j gj
nnoremap k gk
nnoremap <leader>w :w<CR>
nnoremap <leader>/ :Ag<space>
