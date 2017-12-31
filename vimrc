" Set line number
set number

" Set indentation to 4 spaces
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" Set swp direcotry
set directory=~/.vim/swp/

" Do not wrap lines
set nowrap

runtime bundle/pathogen/autoload/pathogen.vim
execute pathogen#infect()

" Set theme
set background=dark
colorscheme molokai

" Set different color for column 81 and onward
let &colorcolumn=join(range(81, 999), ",")

" Powerline status bar
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

" Always show the status bar
set laststatus=2

" Disable Background Color Erase (BCE) so that color schemes render properly
" when inside 256-color tmux and GNU screen
" See also http://snk.tuxfamily.org/log/vim-256color-bce.html
if &term=~"256color"
    set t_ut=
endif

" GVIM options
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

set guioptions-=m
set guioptions-=T

set guifont=DejaVu\ Sans\ Mono\ 11
