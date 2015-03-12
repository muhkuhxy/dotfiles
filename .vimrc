" vundle {{{
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install bundles
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

Plugin 'Valloric/YouCompleteMe'
Plugin 'Raimondi/delimitMate.git'
Plugin 'SirVer/ultisnips'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'rstacruz/sparkup'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'altercation/vim-colors-solarized'

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
" }}}

" syntax/color {{{
syntax on
augroup precolorscheme
   autocmd!
   autocmd ColorScheme * highlight CursorLine cterm=underline term=underline
   " autocmd Syntax * match ExtraWhitespace /\s\+$/
   " autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red ctermfg=Cyan
augroup END
colorscheme solarized
" }}}

" settings {{{
set background=dark
set cursorline
set expandtab
set hidden
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set list
set listchars=trail:·,tab:\ \ 
set mouse=a
set number
set relativenumber
set scrolloff=5
set shiftwidth=3
set smartcase
set softtabstop=3
set wildignore+=*/node_modules/*
set wildmode=longest,list

let mapleader = "\\"
let localleader = ","

let g:netrw_liststyle = 3
let g:netrw_list_hide = '\.sw[po]$'
let g:netrw_banner = 0
" }}}

" basic mappings --- {{{
nnoremap H ^
nnoremap L $

nnoremap ; :

inoremap kj <esc>
inoremap <esc> <nop>

" clear search highlighting
nnoremap <c-l> :<c-u>nohlsearch<c-l><cr>

" open ctrlp
nnoremap <leader>f :CtrlP<CR>
nnoremap <leader>F :CtrlPCurWD<CR>

" search command line
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>ev :split $MYVIMRC<CR>
nnoremap <leader>x :<c-u>bwipeout<cr>

nnoremap <C-j> :m+1<CR>==
nnoremap <C-k> :m-2<CR>==
" --- }}}

" plugin settings {{{
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1

let g:UltiSnipsEditSplit='horizontal'
" }}}

" filetype specific {{{
augroup filetype_vim
   autocmd!
   autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

