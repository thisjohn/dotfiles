syntax on

"set modeline
"set modelines=2
"set nobackup
set nocompatible
set autoindent
set smartindent
set cindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
"set bs=2   " Allow backspacing over everything in insert mode
set ruler   " Show the cursor position all the time
set wrap
set hlsearch
set ignorecase
set number
set background=dark   " The other is light
set laststatus=2   " Always show status line

set fileencodings=utf-8,big5,gbk,sjis,euc-jp,euc-kr,utf-bom,iso8859-1
set encoding=utf-8
set termencoding=utf-8

set splitbelow
set splitright

" folder
"set foldmarker={{{,}}}
"set foldmethod=marker
"set foldlevel=0 " Default is diabled
"let php_folding = 1 " Important
"set foldnestmax=3

" map
nnoremap tl gt
nnoremap th gT

" pathogen (https://github.com/tpope/vim-pathogen)
"execute pathogen#infect()
