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
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Display plugins
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'chriskempson/base16-vim'

" Language plugins
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'cakebaker/scss-syntax.vim'
Plug 'stephpy/vim-yaml'
Plug 'cespare/vim-toml'
Plug 'chrisbra/csv.vim'
Plug 'leafgarland/typescript-vim'

call plug#end()

" Enable filetype highlighting
filetype plugin indent on

" Colour settings
set background=dark
let base16colorspace=256
colorscheme base16-tomorrow

set completeopt=menu,menuone,noselect

" Airline settings
let g:airline_theme='base16'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1

" NERDTree settings
let NERDTreeIgnore = ['\.pyc$']
let NERDTreeMinimalUI=1

" NERDCommenter settings
let g:NERDSpaceDelims = 1

" JSX settings
let g:jsx_ext_required = 0

" Keymapping settings
let mapleader = "\<Space>"
imap jj <Esc>
nmap <leader><Tab> :NERDTreeToggle<CR>
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
nnoremap <leader>f <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>/ <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>? <cmd>lua require('telescope.builtin').grep_string()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

