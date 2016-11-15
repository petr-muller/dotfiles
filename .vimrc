set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set shell=/bin/bash
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Bundle 'wakatime/vim-wakatime'
Plugin 'bling/vim-airline'
Plugin 'luochen1990/rainbow'
Plugin 'tpope/vim-fugitive'
Plugin 'noahfrederick/vim-skeleton'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'mfukar/robotframework-vim'
Plugin 'scrooloose/nerdtree'
call vundle#end()            " required
filetype plugin indent on    " required

syntax on
filetype indent on
set shiftwidth=2
set expandtab
set tabstop=2
set background=dark

:map <f2> :wa<cr>
:map <f3> :cp<cr>
:map <f4> :cn<cr>
:map <f5> :wN<cr>
:map <f6> :wn<cr>
:map <f7> <c-w>h
:map <f8> <c-w>l
:map <f9> :wa<cr>:make<cr>
:map <f10> :cl<cr><cr>
:map <f12> :wqa<cr>
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
inoremap jj <Esc>
:highlight RedundantSpaces ctermbg=red guibg=red
:match RedundantSpaces /\s\+$\| \+\ze\t/
let g:rainbow_active = 1
set laststatus=2
au BufRead,BufNewFile *.robot setfiletype robot
