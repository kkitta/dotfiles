filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'slim-template/vim-slim'
Plugin 'cespare/vim-toml'
Plugin 'kchmck/vim-coffee-script'
Plugin 'moby/moby', {'rtp': '/contrib/syntax/vim/'}

call vundle#end()

filetype plugin indent on

syntax on

set hlsearch

set number

set list
set listchars=tab:»\ ,trail:.

let g:is_bash = 1
