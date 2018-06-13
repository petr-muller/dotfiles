" Vundle stuff: Setup
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
set shell=/bin/bash
call vundle#begin()

" Vundle stuff: Plugins

" Plugin Infrastructure
Plugin 'gmarik/Vundle.vim'

" Tracking / Productivity

" Tracking time spent programming (https://wakatime.com/)
Bundle 'wakatime/vim-wakatime'

" UI Enhancements

" Airline: Improved VIM status line
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
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'sjl/gundo.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'kana/vim-textobj-user'
Plugin 'reedes/vim-textobj-quote'

call vundle#end()

filetype plugin indent on    " required

" wrap lines when buffer is too narrow
set wrap

" Random editing goodies
let python_highlight_all = 1
syntax on             " Syntax highlight
filetype indent on    " Indent based on file typej
set cursorline
set shiftwidth=2
set expandtab
set tabstop=2
set background=dark
colorscheme solarized
set number
set hlsearch
set wildmenu
set incsearch

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
map <C-n> :NERDTreeToggle<CR>

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
let g:airline#extensions#tabline#enabled = 1

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

let g:syntastic_python_python_exec = '/usr/bin/python3'

let mapleader=","
nmap <leader>ne :NERDTree<cr>
nnoremap <leader><space> :nohlsearch<CR>
nnoremap <leader>u :GundoToggle<CR>

let g:wakatime_PythonBinary = '/usr/bin/python3'

augroup textobj_quote
  autocmd!
  autocmd FileType markdown call textobj#quote#init()
  autocmd FileType textile call textobj#quote#init()
  autocmd FileType text call textobj#quote#init({'educate': 0})
augroup END

" Enable Elite mode, No ARRRROWWS!!!!
let g:elite_mode=1

" Disable arrow movement, resize splits instead.
if get(g:, 'elite_mode')
	nnoremap <Up>    :resize +2<CR>
	nnoremap <Down>  :resize -2<CR>
	nnoremap <Left>  :vertical resize +2<CR>
	nnoremap <Right> :vertical resize -2<CR>
endif
