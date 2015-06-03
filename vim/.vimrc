" General configuration
" =====================

" Force ViM mode (loses backwards compatibility with Vi) 
set nocompatible

" Syntax highlighting               
syntax on

" Set 256 bit color mode
set t_Co=256

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
set tags=.tags;/

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

" Bundle https://github.com/gmarik/vundle
" ======================================= 
filetype off " Required for Vundle

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage itself.
Plugin 'gmarik/Vundle.vim'

" Plugins
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'majutsushi/tagbar'
Plugin 'groenewege/vim-less'
Plugin 'tpope/vim-rake'
Plugin 'mileszs/ack.vim'
Plugin 'vim-scripts/closetag.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'nvie/vim-flake8'
Plugin 'kchmck/vim-coffee-script'
Plugin 'elzr/vim-json'
Plugin 'bling/vim-airline'

" Colour schemes
Plugin 'altercation/vim-colors-solarized'

call vundle#end()
filetype plugin indent on " Required for Vundle

" Set colour scheme
set background=dark
colorscheme solarized

" Enable airline customization
let g:airline_powerline_fonts=1

" NERDTree customization
let NERDTreeIgnore = ['\.pyc$']

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
