set nocompatible " Improved
filetype off " required for vundle



"call pathogen#infect()
"call pathogen#helptags()

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required! 
Bundle 'gmarik/vundle'

Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails.git'

filetype plugin indent on
