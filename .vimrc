set tabstop=2
set shiftwidth=2
set smarttab
set expandtab

" Highlight text that exceeds the 80 column limit.
highlight OverLength ctermbg=darkred ctermfg=white
match OverLength /\%81v.\+/

" Vundle.vim
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle plugins
Plugin 'gmarik/Vundle.vim'
Plugin 'JuliaLang/julia-vim'

call vundle#end()
filetype plugin indent on
