filetype plugin on

" only use spaces for indentation
set expandtab
set softtabstop=2
set shiftwidth=2

" show line numbers
set number
set shellslash

" netrw: tree style
let g:netrw_liststyle=3

" disable TeX indentation
" https://www.reddit.com/r/neovim/comments/991kmv/annoying_auto_indentation_in_tex_files
setlocal autoindent
let g:tex_indent_items=0
let g:tex_indent_and=0
let g:tex_indent_brace=0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" BINDINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Allow pasting to multiple locations.
" 'p' to paste, 'gv' to re-select text original intended for copying, 'y'
" to copy again.
xnoremap p pgvy

set pastetoggle=<F2>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SYNTAX HIGHLIGHTING
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch " highlight all search matches

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PLUGINS (vim-plug)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" automatically install plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')
" enhanced statusline
Plug 'vim-airline/vim-airline'
set laststatus=2
set encoding=utf-8
set ttimeoutlen=50
let g:airline_powerline_fonts=1

" colour schemes
Plug 'flazz/vim-colorschemes'

" git wrapper
Plug 'tpope/vim-fugitive'

" no more nasty whitespace
" :StripWhitespace is a cool macro!
Plug 'ntpeters/vim-better-whitespace'

" shows a git diff in the gutter and allows hunks to be staged/reset
Plug 'airblade/vim-gitgutter'

" highlights yanked text
Plug 'machakann/vim-highlightedyank'

" pretty tree explorer
Plug 'preservim/nerdtree'

" TOML highlighting
Plug 'cespare/vim-toml'

" asynchronous linting and build automation
Plug 'neomake/neomake'
:map <CTRL><> :echo 'Cool' <CR>

" support for Rust
Plug 'rust-lang/rust.vim'

" fast code completion
Plug 'Valloric/YouCompleteMe', { 'do': 'python3 install.py --clang-completer' }
let g:ycm_global_ycm_extra_conf = '~/.config/nvim/.ycm_extra_conf.py'
let g:ycm_filetype_blacklist = {
      \ 'tex': 1,
      \ 'latex': 1,
      \ 'rst': 1
      \}

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" COLOURS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" switch between colour schemes for different file types
" assumes that there is only one filetype per window
" gruvbox, monokai, dracula, zenburn
colorscheme tender
autocmd BufEnter,BufNewFile *.rs colorscheme gruvbox
autocmd BufLeave *.rs colorscheme tender
