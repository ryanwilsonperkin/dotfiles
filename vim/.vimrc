" General configuration
" =====================

" Set colorscheme
set background=dark
colorscheme solarized 

" Force ViM mode (loses backwards compatibility with Vi) 
set nocompatible

" Syntax highlighting               
syntax on

" Set 256 bit color mode
set t_Co=256

" Use the OS clipboard if not in tmux session
if "$TMUX" == ""
	set clipboard+=unnamed
endif

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

" Search upwards recursively for a tags folder
set tags=tags;/

" Don't auto fold on file open
set foldlevelstart=99

" Disable autosave prompt
let g:session_autosave = 'yes'

" Set the delay after hitting escape to 100ms
set ttimeout
set ttimeoutlen=100

" Allow mouse support for those rare cases
set mouse=a

" Set backup directory
set backupdir=~/.vim/backups

" Set swapfile directory
set directory=~/.vim/swaps

" Set undo directory
if exists("&undodir")
	set undodir=~/.vim/undo
endif

" Set tags file as .tags
set tags=.tags

" Bundle https://github.com/gmarik/vundle
" ======================================= 
filetype off " Required for Vundle

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

Bundle 'tpope/vim-fugitive'
Bundle 'kien/ctrlp.vim'
Bundle 'jlanzarotta/bufexplorer'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/syntastic'
Bundle 'majutsushi/tagbar'
Bundle 'groenewege/vim-less'
Bundle 'tpope/vim-rake'
Bundle 'mileszs/ack.vim'

filetype plugin indent on " Required for Vundle

" Keymappings
" ===========
let mapleader = ";"

" Toggle NERDTree (;n)
noremap <leader><space> :NERDTreeToggle<CR>

" Toggle code fold ( )
noremap <space> za

" Save a file as root (;W)
noremap <leader>W :w !sudo tee % > /dev/null<CR>

" Switch between buffers quickly
noremap <leader>h :bp<CR>
noremap <leader>l :bn<CR>
noremap <leader>q :bp\|bd #<CR>

" Toggle the tagbar
noremap <leader>t :TagbarToggle<CR>

" Move by visible not literal line
nnoremap j gj
nnoremap k gk
