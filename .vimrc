set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install bundles
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

Bundle 'tpope/vim-surround'
Bundle 'elzr/vim-json'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-unimpaired'
Bundle 'scrooloose/syntastic'
Bundle 'jeffkreeftmeijer/vim-numbertoggle'
Bundle 'ervandew/supertab'
Bundle 'kien/ctrlp.vim'
Bundle 'Raimondi/delimitMate.git'
Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'godlygeek/tabular'
Bundle 'tpope/vim-abolish'
Bundle 'kana/vim-textobj-user'
Bundle 'kana/vim-textobj-lastpat'

" The following are examples of different formats supported.
" Keep bundle commands between here and filetype plugin indent on.
" scripts on GitHub repos
"Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'tpope/vim-rails.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" scripts from http://vim-scripts.org/vim/scripts.html
"Bundle 'L9'
"Bundle 'FuzzyFinder'
" scripts not on GitHub
"Bundle 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Bundle 'file:///home/gmarik/path/to/plugin'
" ...

filetype plugin indent on     " required
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.

syntax on
colorscheme solarized

let mapleader = "\\"

set background=dark
set number

set ignorecase
set smartcase
set incsearch
set hlsearch
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

set expandtab
set shiftwidth=3
set softtabstop=3
set scrolloff=5
set mouse=a
set hidden

set wildmode=longest,list

set cursorline
highlight CursorLine cterm=underline term=underline

highlight ExtraWhitespace ctermbg=red guibg=red
autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/

filetype indent on
filetype plugin on

iabbrev jF jira FPHAS

let g:vim_json_syntax_conceal = 0
let g:syntastic_json_checkers = ['jsonlint']

" open ctrlp
nnoremap <leader>f :CtrlP<CR>
nnoremap <leader>F :CtrlPCurWD<CR>

" disable arrow keys
" noremap <Up> <nop>
" noremap <Down> <nop>
" noremap <Left> <nop>
" noremap <Right> <nop>
" noremap <Esc> <nop>

" always search magically
" nnoremap / /\v
" cnoremap s/ s/\v

" search command line
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>ev :split $MYVIMRC<CR>

nnoremap <C-j> :m+1<CR>==
nnoremap <C-k> :m-2<CR>== 

nnoremap <C-z> :update<CR>
inoremap <C-z> <ESC>:update<CR>a

let g:UltiSnipsEditSplit='horizontal'

set wildignore+=*/build/*
set wildignore+=*/eclipse_build/*

func! UnfutureTypes()
   silent s/\C\v(^\s*|(public|private|protected) )@<!Future\< ?([^ ]+|\w+\<.*\>) ?\> (future)?([^ ,]+)/\3 \l\5/g
endfunc

func! UnfutureValues()
   s/\C\vfuture(ControlFlow)@!([^ ,]+)/\l\2/g
endfunc

