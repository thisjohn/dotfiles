" Manage plugins by Vundle
set nocompatible             " be iMproved, required
filetype off                 " required

" Set up Vundle
let vundle_readme=expand('~/.vim/bundle/Vundle.vim/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle..."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim
endif

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
" Vundle (https://github.com/VundleVim/Vundle.vim)
Plugin 'VundleVim/Vundle.vim'

" My Plugins
" sensible (https://github.com/tpope/vim-sensible)
Plugin 'tpope/vim-sensible'

" nerdtree (https://github.com/scrooloose/nerdtree)
Plugin 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>

" easymotion (https://github.com/easymotion/vim-easymotion)
" Usage: <Leader><Leader>w/b
Plugin 'easymotion/vim-easymotion'

" tagbar (https://github.com/majutsushi/tagbar)
" Need ctags
Plugin 'majutsushi/tagbar'
nmap <F8> :TagbarToggle<CR>
set tags=./tags;,tags

" snipmate (https://github.com/garbas/vim-snipmate)
" snippets (https://github.com/honza/vim-snippets)
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

" vim-close (https://github.com/Townk/vim-autoclose)
Plugin 'Townk/vim-autoclose'

" vim-css-color (https://github.com/ap/vim-css-color)
Plugin 'ap/vim-css-color'

" vimwiki (https://github.com/vimwiki/vimwiki)
" Usage: <Leader>ww
Plugin 'vimwiki/vimwiki'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Execute vim and run :PluginInstall


" General settings
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
