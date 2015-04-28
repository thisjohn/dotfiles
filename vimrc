" pathogen (https://github.com/tpope/vim-pathogen)
execute pathogen#infect()

" sensible (https://github.com/tpope/vim-sensible)

" nerdtree (https://github.com/scrooloose/nerdtree)
map <C-n> :NERDTreeToggle<CR>

set tabstop=4
set shiftwidth=4
set expandtab
set hlsearch
set ignorecase
set number
set background=dark " ("dark"|"light")

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
