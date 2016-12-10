" Vundle stuff: Plugins
set nocompatible
filetype off

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
Plugin 'tmhedberg/SimpylFold'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'altercation/vim-colors-solarized'
call vundle#end()            " required
filetype plugin indent on    " required

" Random editing goodies
let python_highlight_all = 1
syntax on             " Syntax highlight
filetype indent on    " Indent based on file typej
set shiftwidth=2
set expandtab
set tabstop=2
set background=dark
colorscheme solarized
set number
set wrap

set foldmethod=indent
set foldlevel=99

let g:ycm_autoclose_preview_window_after_completion=1

au BufNewFile,BufRead *.py:
  \ set tabstop=2
  \ set softtabstop=2
  \ set shiftwidth=2
  \ set textwidth=119
  \ set expandtab
  \ set autoindent
  \ set fileformat=unix

nnoremap <space> za

noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>

noremap ěě @
noremap ššš #
noremap čč $
noremap řř ~
noremap žž ^
noremap ýý &
noremap áá *
noremap íí {
noremap éé }
noremap úú [
noremap ůů ;
inoremap ěě @
inoremap ššš #
inoremap čč $
inoremap řř ~
inoremap žž ^
inoremap ýý &
inoremap áá *
inoremap íí {
inoremap éé }
inoremap úú [
inoremap ůů ;

:highlight RedundantSpaces ctermbg=red guibg=red
:match RedundantSpaces /\s\+$\| \+\ze\t/
let g:rainbow_active = 1
set laststatus=2
au BufRead,BufNewFile *.robot setfiletype robot

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
