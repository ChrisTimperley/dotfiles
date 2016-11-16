filetype plugin on
filetype indent on
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set number
set shellslash

set pastetoggle=<F2>

" http://vim-latex.sourceforge.net/documentation/latex-suite.html#recommended-settings
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'

" Allow pasting to multiple locations.
" 'p' to paste, 'gv' to re-select text original intended for copying, 'y'
" to copy again.
xnoremap p pgvy

" Highlight text that exceeds the 80 column limit.
highlight OverLength ctermbg=darkred ctermfg=white
match OverLength /\%81v.\+/

" netrw
let g:netrw_liststyle=3

" Kill the bells on Cygwin
set vb
set t_vb=

" Colours!
syntax enable
set hlsearch
set background=dark
colorscheme solarized
set t_Co=256

" airline
set laststatus=2
set ttimeoutlen=50
let g:airline_powerline_fonts=1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

" Vundle
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
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'lervag/vimtex'

call vundle#end()
filetype plugin indent on
