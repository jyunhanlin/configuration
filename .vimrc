language en_US.UTF-8
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'Raimondi/delimitMate'
Plugin 'mxw/vim-jsx'
Plugin 'othree/yajs.vim'
Plugin 'nathanaelkane/vim-indent-guides'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'

call vundle#end()            " required
filetype plugin indent on    " required

let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
"set foldmethod=syntax
syntax on

let g:jsx_ext_required = 0

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

" These are the tweaks I apply to YCM's config, you don't need them but they might help.
" YCM gives you popups and splits by default that some people might not like, so these should tidy it up a bit for you.
"let g:ycm_add_preview_to_completeopt=0
"let g:ycm_confirm_extra_conf=0
"set completeopt-=preview

set pastetoggle=<F3>

set t_Co=256
set background=dark
set shiftwidth=2
set tabstop=2
set expandtab

set ai
set cursorline
set ruler
set hlsearch
set incsearch
set ru
" set mouse=a

set laststatus=2
let g:airline_powerline_fonts = 1
set backspace=2
"set statusline=%4*%<\%m%<[%f\%r%h%w]\ [%{&ff},%{&fileencoding},%Y]%=\[Position=%l,%v,%p%%]
