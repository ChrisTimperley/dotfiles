filetype plugin indent on
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab

" Line numbering settings.
" http://vim.wikia.com/wiki/Display_line_numbers
set number

" Allow pasting to multiple locations.
" 'p' to paste, 'gv' to re-select text original intended for copying, 'y'
" to copy again.
xnoremap p pgvy

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
Plugin 'morhetz/gruvbox'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'hynek/vim-python-pep8-indent'

call vundle#end()
filetype plugin indent on
