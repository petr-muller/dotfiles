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
" Airline Themes: SSIA
Plugin 'vim-airline/vim-airline-themes'
" NerdTree: File explorer
Plugin 'scrooloose/nerdtree'
" NerdTree Git: Show git status flags in NerdTree
Plugin 'Xuyuanp/nerdtree-git-plugin'
" TagBar: Tag explorer
Plugin 'majutsushi/tagbar'
" Limelight: Highlight current paragraph
Plugin 'junegunn/limelight.vim'

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
" Autoclose: Automatically insert open/close characters
Plugin 'Townk/vim-autoclose'
" SplitJoin: Toggle between single-line and multi-line code
Plugin 'AndrewRadev/splitjoin.vim'

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
" VimWiki: Wiki for vim (experiment to set up a PKB)
Plugin 'vimwiki/vimwiki'

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

" Devicons: Pretty glyphs
Plugin 'ryanoasis/vim-devicons'

call vundle#end()

" SHORTCUTS

let mapleader=","

" git
nmap <leader>G :wa<CR>:Gstatus<CR>

" Generic
" Make space toggle fold in normal mode
nnoremap <space> za
" Save & quit on 'Q' in normal mode
nnoremap Q :w\|bd<cr>
" Save on ',s' in normal mode
noremap <Leader>s :update<CR>
" Toggle NERDTree on ctrl-N
map <C-n> :NERDTreeToggle<CR>
" Disable arrow movement
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
" Make split switching easier
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>
" Clear search highlights on ,<space>
nnoremap <leader><space> :nohlsearch<CR>
" Toggle a panel showing tags
nnoremap <C-m> :TagbarToggle<CR>
" Arrows resize splits, do not move cursor
nnoremap <Up>    :resize +2<CR>
nnoremap <Down>  :resize -2<CR>
nnoremap <Left>  :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>
" Easier movement to beginning/end of line
nnoremap H ^
nnoremap L g_

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
" Save automatically on some actions
set autowrite

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
" Open all folds after start
set foldlevel=99
" I am using terminals with dark background themes
set background=dark
" Solarized color theme
colorscheme solarized
" Use emoji as git gutter signs
let g:gitgutter_sign_added = emoji#for('small_blue_diamond')
let g:gitgutter_sign_modified = emoji#for('small_orange_diamond')
let g:gitgutter_sign_removed = emoji#for('small_red_triangle')
let g:gitgutter_sign_modified_removed = emoji#for('collision')
" Highlight trailing whitespace
:highlight RedundantSpaces ctermbg=red guibg=red
:match RedundantSpaces /\s\+$\| \+\ze\t/
" Enable rainbow (better handling of parentheses)
let g:rainbow_active = 1
" Always show the status line
set laststatus=2
" Use special fonts for nice Airline separators
let g:airline_powerline_fonts = 1
" Show line with opened buffers
let g:airline#extensions#tabline#enabled = 1
" Pretty unicode symbols for Airline
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_symbols.readonly = ''
let g:airline_theme='solarized'

" NERDTree
" Close tree window after opening a file
let NERDTreeQuitOnOpen = 1
" Show less clutter
let NERDTreeMinimalUI = 1

" Limelight
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_default_coefficient = 0.9

" Systastic
" Populate loclist automatically, not just on :Errors
let g:syntastic_always_populate_loc_list = 1
" Open loc list when there are errors, and close when not
let g:syntastic_auto_loc_list = 1
" Run checkers on opening a file
let g:syntastic_check_on_open = 1
" Do not run checkers on save & exit
let g:syntastic_check_on_wq = 0

" Python
" Black: This is path to plugin-internal virtualenv with black
let g:black_virtualenv=$HOME."/.vim/black"
" Black: Reformat Python code on save
autocmd BufWritePre *.py execute ':Black'
" Black: My Python lines should be 100 characters long
let g:black_linelength=100
" Use slightly different settings for Python files
au BufNewFile,BufRead *.py:
  \ set textwidth=100
  \ set autoindent
  \ set fileformat
" Use local .pylintrc and Python3 for syntastic
let g:syntastic_python_pylint_args = "--rcfile=.pylintrc"
let g:syntastic_python_python_exec = '/usr/bin/python3'

" Go
autocmd FileType go nmap <leader>b :make<CR>
autocmd FileType go nmap <leader>t :GoTest<CR>
autocmd FileType go nmap <leader>c :GoCoverageToggle<CR>
autocmd FileType go nmap <leader>a :GoAlternate<CR>
autocmd FileType go nmap <leader>d :GoDoc<CR>
autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
" Use both `gofmt` and `golint` in Syntastic
let g:syntastic_go_checkers = ['gofmt', 'golint']
" Nicer syntax highlights
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_auto_sameids = 1


" Emoji ☺
augroup emoji_complete
  autocmd!
  autocmd FileType markdown setlocal completefunc=emoji#complete
augroup END

" Use typographic quotes in markdown and text files
augroup textobj_quote
  autocmd!
  autocmd FileType markdown call textobj#quote#init()
  autocmd FileType textile call textobj#quote#init()
  autocmd FileType text call textobj#quote#init({'educate': 0})
augroup END

" WakaTime
" Use Python 3 for running WakaTime
let g:wakatime_PythonBinary = '/usr/bin/python3'

" Vimwiki
let g:vimwiki_list = [{'path': '~/Projects/Personal/PKB'}]
au BufRead,BufNewFile *.wiki set filetype=vimwiki
