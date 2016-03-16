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

" Directory settings
set tags=.tags;/
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
set undodir=~/.vim/undo

" Vundle settings
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Tool plugins
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'majutsushi/tagbar'
Plugin 'nvie/vim-flake8'
Plugin 'gregsexton/MatchTag'
Plugin 'rking/ag.vim'
Plugin 'davidhalter/jedi-vim'

" Display plugins
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'chriskempson/base16-vim'

" Language plugins
Plugin 'groenewege/vim-less'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'elzr/vim-json'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'kchmck/vim-coffee-script'

call vundle#end()
filetype plugin indent on " Required for Vundle

" Colour settings
set t_Co=256
set background=dark
let base16colorspace=256
colorscheme base16-tomorrow

" Airline settings
let g:airline_theme='base16'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1

" NERDTree settings
let NERDTreeIgnore = ['\.pyc$']

" Syntastic settings
let g:syntastic_mode_map = { "mode": "passive" }
let g:syntastic_python_flake8_args='--ignore=E501'
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint_d'

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
nmap <leader><Tab> :NERDTreeToggle<CR>
nmap <leader>t :TagbarToggle<CR>
nmap <leader>o :CtrlP<CR>
noremap <leader>h :bp<CR>
noremap <leader>l :bn<CR>
noremap <leader>q :bp\|bd #<CR>
nnoremap j gj
nnoremap k gk
nnoremap <leader>w :w<CR>
