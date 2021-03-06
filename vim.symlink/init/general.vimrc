" Map the leader key to space
nnoremap <SPACE> <Nop>
let mapleader = ' '

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

syntax on

set autoindent
set smartindent
set shiftwidth=2 " number of spaces when shift indenting
set tabstop=2 " number of visual spaces per tab
set softtabstop=2 " number of spaces in tab when editing
set expandtab " tab to spaces
set relativenumber " show relative line numbers
set number " show current line number
set showmatch " highlight matching [{()}]
set incsearch " search as characters are entered
set hlsearch " highlight matches

set ruler
set showcmd
set noshowmode
set hidden

" clear search highlighting by hitting return
nnoremap <silent> <CR> :noh<CR><CR>
