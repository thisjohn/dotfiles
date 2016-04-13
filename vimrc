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

" Theme
Plugin 'gosukiwi/vim-atom-dark'

" Navigation
" tree explorer
Plugin 'scrooloose/nerdtree'
nmap <F7> :NERDTreeToggle<CR>

Plugin 'Xuyuanp/nerdtree-git-plugin'
let g:NERDTreeIndicatorMapCustom = {
  \ "Modified"  : "*",
  \ "Staged"    : "+",
  \ "Untracked" : "?",
  \ "Renamed"   : ">",
  \ "Unmerged"  : "=",
  \ "Deleted"   : "x",
  \ "Dirty"     : "*",
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

" code completions
Plugin 'ervandew/supertab'

" snippets
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
imap <c-j> <Plug>snipMateNextOrTrigger
smap <c-j> <Plug>snipMateNextOrTrigger

" insert or delete brackets, parens, quotes in pair
Plugin 'jiangmiao/auto-pairs'

" quoting/parenthesizing
Plugin 'tpope/vim-surround'
" Usage:
"   ds[mark] delete
"   cs[mark-old][mark-new] change
"   ysiw[mark] add (inside word)
"   yss[mark] add (sentence)

" comment
Plugin 'scrooloose/nerdcommenter'
" Usage: <Leader>cc/u

" displaying indent levels
Plugin 'nathanaelkane/vim-indent-guides'
" Usage: <Leader>ig

" improve HTML & CSS workflow
Plugin 'mattn/emmet-vim'
" Usage: https://raw.githubusercontent.com/mattn/emmet-vim/master/TUTORIAL
"   <c-y>, expand an abbreviation
"   <c-y>n go to the next edit point
"   <c-y>N go to the previous edit point
"   <c-y>d balance a tag inward
"   <c-y>D balance a tag outward
"   <c-y>k remove a tag

" html5 syntax
Plugin 'othree/html5.vim'

" js/jsx syntax and intentation
Plugin 'othree/yajs.vim'
Plugin 'mxw/vim-jsx'
let g:jsx_ext_required = 0

Plugin 'gavocanov/vim-js-indent'

" jsdoc
Plugin 'heavenshell/vim-jsdoc'
let g:jsdoc_enable_es6 = 1
nmap <c-l> :JsDoc<CR>

" add css3 syntax support to vim's built-in `syntax/css.vim`
Plugin 'hail2u/vim-css3-syntax'

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

set splitbelow
set splitright

" folder
"set foldmarker={{{,}}}
"set foldmethod=marker
"set foldlevel=0 " Default is diabled
"let php_folding = 1 " Important
"set foldnestmax=3

" theme
colorscheme atom-dark-256  " need vim-atom-dark

" map
nnoremap tl gt
nnoremap th gT
