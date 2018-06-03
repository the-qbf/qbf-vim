"============================================
" Welcome to JasonDJ's Vimrc
" Feel free to copy whatever you want but
" be sure to understand what you're copying :)
"=============================================

set nocompatible              " be iMproved, required
filetype off                  " required
set number

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set history=50          " keep 50 lines of command line history
set guioptions-=T " No toolbar

set ruler               " show the cursor position all the time
set rulerformat=%40(%t%y:\ %l,%c%V\ \(%o\)\ %p%%%)
set showcmd             " display incomplete commands
set incsearch           " do incremental searching
set number

set encoding=UTF-8

" Set our tabs correctly... tab inserts 4 spaces.
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set shiftround
set sts=4

set showmatch " Show matching parents
set visualbell " Flash, don't beep
set cursorline

set nowrap
set laststatus=2

set mouse=a " Mouse support in console

set whichwrap=<,>,h,l,[,]
set backspace=indent,eol,start

" Hidden buffers, so we don't have to save every time we unload a
buffer
" from a window.
set hidden

" Display all wildcard matches when :e filena*<tab> -ing.
set wildmenu
set undolevels=50
let mapleader=";"

"==============
" COLORSCHEME =
"==============

"set t_Co=256 " Use 256 colors
"colorscheme molokai

"=========================================================================
"   MAPPINGS
"=========================================================================

"Turn paste mode on and off
"nnoremap <F3> <ESC>:call ToggleNicePaste()<Return>
"inoremap <F3> <ESC>:call ToggleNicePaste()<Return>
nnoremap <leader>p <ESC>:call ToggleNicePaste()<Return>
inoremap <leader>p <ESC>:call ToggleNicePaste()<Return>


" Toggle Tagbar
nmap <F7> :TagbarToggle<CR>

" Nerd Tree Toggle
map <F8> <ESC>:NERDTreeToggle<CR>

" Personal mappings
map <F5> <ESC>:!perl %<CR>
map <F2> <ESC>:w<CR>
map <F4> <ESC>:!sh %<CR>

inoremap <c-tab> <c-x><c-o>

" Exit Normal Mode without Esc
imap jk <Esc> :w<CR>

" Remove Trailing Spaces
nnoremap <silent> <F9> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let
@/=_s<Bar>:nohl<CR>

" Changing windows
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-c> <C-w>c
  
"=========
" VUNDLE =
"=========

" set the runtime path to include Vundle and initialize
set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin('$HOME/.vim/bundle/')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-surround'
Plugin 'tomasr/molokai'
"Plugin 'vim-airline/vim-airline'
Plugin 'valloric/youcompleteme'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
