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
Bundle "Valloric/YouCompleteMe"
Bundle 'kien/ctrlp.vim'
Bundle 'Raimondi/delimitMate.git'
Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'godlygeek/tabular'
Bundle 'tpope/vim-abolish'
Bundle 'kana/vim-textobj-user'
Bundle 'kana/vim-textobj-lastpat'
Bundle 'mattn/emmet-vim'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-fugitive'

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
let localleader = ","

set background=dark
set number
set relativenumber

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

let g:UltiSnipsEditSplit='horizontal'

set laststatus=2
" now set it up to change the status line based on mode
if version >= 700
  au InsertEnter * hi StatusLine term=reverse ctermbg=5 gui=undercurl guisp=Magenta
  au InsertLeave * hi StatusLine term=reverse ctermfg=0 ctermbg=2 gui=bold,reverse
endif

let g:user_emmet_install_global = 0
autocmd FileType html,css,vash,jade EmmetInstall

set wildignore+=*/node_modules/*

nnoremap H ^
nnoremap L $

nnoremap ; :

inoremap kj <esc>
inoremap jk <esc>
inoremap <esc> <nop>

augroup filetype_java
   autocmd!
   autocmd FileType java nnoremap <buffer> <f2> :call JavaTest
augroup END

