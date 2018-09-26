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
" NerdTree: File explorer
Plugin 'scrooloose/nerdtree'
" NerdTree Git: Show git status flags in NerdTree
Plugin 'Xuyuanp/nerdtree-git-plugin'
" TagBar: Tag explorer
Plugin 'majutsushi/tagbar'
" WindowSwap: Swap splits
Plugin 'wesQ3/vim-windowswap'

" Shortcuts
" Unimpaired: Handy bracket mappings
Plugin 'tpope/vim-unimpaired'
" Repeat: Support dot repeat for plugins
Plugin 'tpope/vim-repeat'
" Textobj User: Create new text object (prerequisite for `vim-textobj-quote`)
Plugin 'kana/vim-textobj-user'
" Buffergator: List, select and switch between buffers
Plugin 'jeetsukumaran/vim-buffergator'
" Emoji: ¯\_(ツ)_/¯
Plugin 'junegunn/vim-emoji'

" General syntax helpers

" Rainbow: Colorize paired elements, such as parentheses
Plugin 'luochen1990/rainbow'
" Tabular: Aligning text elements to each other, such as for tables
Plugin 'godlygeek/tabular'
" Syntastic: Syntax checking
Plugin 'scrooloose/syntastic'
" Gutentags: Manage tag files
Plugin 'ludovicchabant/vim-gutentags'
" Surround: Quoting and parenthesizing made simple
Plugin 'tpope/vim-surround'
" Jedi: Autocompletion for Python
Plugin 'davidhalter/jedi-vim'
" AnsiEsc: Conceal & highlight ANSI sequences
Plugin 'AnsiEsc.vim'
" Trailing Whitespace: Hightlight and remove trailing whitespace
Plugin 'bronson/vim-trailing-whitespace'
" Quotes: Use typographic (curly) quotes in text
Plugin 'reedes/vim-textobj-quote'
" TComment: Commenting plugins
Plugin 'tomtom/tcomment_vim'

" Integrations

" Fugitive: git integration
Plugin 'tpope/vim-fugitive'
" Git Log Viewer: better git log integration
Plugin 'kablamo/vim-git-log'
" Git Gutter
Plugin 'airblade/vim-gitgutter'
" FuzzyFinder: Well, fuzzy finder
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/fzf'

" Python

" Black: Python Formatter
Plugin 'ambv/black'
" SimpylFold: Simple Python folding
Plugin 'tmhedberg/SimpylFold'

" Go

" Go: Go development plugin for Go
Plugin  'fatih/vim-go'

" Themes

" Solarized: Precision colors for machines and people
Plugin 'altercation/vim-colors-solarized'

call vundle#end()


" SHORTCUTS

let mapleader=","

" git
nmap <leader>G :wa<CR>:Gstatus<CR>

" CONFIGURATION

" Editing
" Set indentation rules based on file type
filetype plugin indent on
" Wrap lines when buffer is too narrow
set wrap
" Indent with 2 spaces by default
set shiftwidth=2
" Insert spaces on tab
set expandtab
" Show tabs as two spaces wide
set tabstop=2

" UI
" Highlight all syntax
syntax on
" Highlight current line
set cursorline
" Show line numbers
set number
" Highlight all search results
set hlsearch
" Offer completion for vim commands
set wildmenu
" Incrementally search as I type, don't wait on <enter>
set incsearch
" Fold code by indent
set foldmethod=indent
" I am using terminals with dark background themes
set background=dark
" Solarized color theme
colorscheme solarized
" Use emoji as git gutter signs
let g:gitgutter_sign_added = emoji#for('small_blue_diamond')
let g:gitgutter_sign_modified = emoji#for('small_orange_diamond')
let g:gitgutter_sign_removed = emoji#for('small_red_triangle')
let g:gitgutter_sign_modified_removed = emoji#for('collision')


" Python
" Black: This is path to plugin-internal virtualenv with black
let g:black_virtualenv="/home/remote/pmuller/.vim/black"
" Black: Reformat Python code on save
autocmd BufWritePre *.py execute ':Black'

" Emoji ☺
augroup emoji_complete
  autocmd!
  autocmd FileType markdown setlocal completefunc=emoji#complete
augroup END

" DRAGONS

" Random editing goodies


set foldlevel=99

let g:ycm_autoclose_preview_window_after_completion=1

let g:black_linelength=100

au BufNewFile,BufRead *.py:
  \ set textwidth=100
  \ set expandtab
  \ set autoindent
  \ set fileformat

nnoremap <space> za
nnoremap Q :w\|bd<cr>
noremap <Leader>s :update<CR>
map <C-n> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

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

let g:syntastic_python_pylint_args = "--rcfile=.pylintrc"
let g:syntastic_python_python_exec = '/usr/bin/python3'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_go_checkers = ['gofmt', 'golint']

nnoremap <leader><space> :nohlsearch<CR>
nnoremap <leader>tb :TagbarToggle<CR>

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
