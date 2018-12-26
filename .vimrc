set encoding=utf-8
set number
set numberwidth=4
set tabstop=4
set softtabstop=4
set expandtab

set nocompatible 
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" added nerdtree
Plugin 'scrooloose/nerdtree'
Plugin 'lyuts/vim-rtags'
Plugin 'wincent/command-t'
Plugin 'DoxygenToolkit.vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax on

let NERDTreeIgnore = ['\.o$', '\.gcda$', '\.gcno$']
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

set cursorline
nmap <F6> :NERDTreeToggle<CR>
nmap <F7> :Dox<CR>
let g:DoxygenToolkit_commentType="Qt"
