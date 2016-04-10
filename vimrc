" Manage plugins by Vundle (https://github.com/VundleVim/Vundle.vim)
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
Plugin 'VundleVim/Vundle.vim'

" My plugins

" General
" vim defaults
Plugin 'tpope/vim-sensible'

" Navigation
" tree explorer
Plugin 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>

Plugin 'Xuyuanp/nerdtree-git-plugin'
let g:NERDTreeIndicatorMapCustom = {
  \ "Modified"  : "*",
  \ "Staged"    : "+",
  \ "Untracked" : "?",
  \ "Renamed"   : ">",
  \ "Unmerged"  : "=",
  \ "Deleted"   : "x",
  \ "Dirty"     : "X",
  \ "Clean"     : "V",
  \ "Unknown"   : "N"
  \ }

" fuzzy file finder
Plugin 'ctrlpvim/ctrlp.vim'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set wildignore+=*/node_modules/*
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$'
  \ }
" Usage: <c-p>, then
"   <c-d> to switch to filename only search instead of full path
"   <c-j>, <c-k> or the arrow keys to navigate the result list
"   <c-y> to create a new file and its parent directories

Plugin 'easymotion/vim-easymotion'
" Usage: <Leader><Leader>w/b

" ctags
Plugin 'majutsushi/tagbar'
nmap <F8> :TagbarToggle<CR>

" Editing

" editor config
Plugin 'editorconfig/editorconfig-vim'

" snippets
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

" insert or delete brackets, parens, quotes in pair
Plugin 'jiangmiao/auto-pairs'

" comment
Plugin 'scrooloose/nerdcommenter'
" Usage: <Leader>cc/u

" preview colours in source code while editing
Plugin 'ap/vim-css-color'

" Utility
" git wrapper
Plugin 'tpope/vim-fugitive'

" note
Plugin 'vimwiki/vimwiki'
" Usage: <Leader>ww

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
