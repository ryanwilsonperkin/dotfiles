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

" LSP settings
lua << EOF
require'lspconfig'.sorbet.setup{}
EOF

set completeopt=menu,menuone,noselect

lua << EOF
  -- Setup nvim-cmp.
  local cmp = require'cmp'

  cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
        -- require'snippy'.expand_snippet(args.body) -- For `snippy` users.
      end,
    },
    mapping = {
      ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
      ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
      ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
      ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
      ['<C-e>'] = cmp.mapping({
        i = cmp.mapping.abort(),
        c = cmp.mapping.close(),
      }),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
    },
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' }, -- For vsnip users.
      -- { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    })
  })

  -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline('/', {
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

  -- Setup lspconfig.
  local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  require('lspconfig')['<YOUR_LSP_SERVER>'].setup {
    capabilities = capabilities
  }
EOF


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
