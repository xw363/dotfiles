" Set line number
set number

" Set indentation to 4 spaces
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" Set swp direcotry
if has('unix')
    set directory=~/.vim/swp/
    set undodir=~/.vim/undo/
endif

" Do not wrap lines
set nowrap

" Set color scheme
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

if has('unix') && $WSL!='1'
    set guifont=DejaVu\ Sans\ Mono\ 11
endif

" Vim plug
call plug#begin('~/.vim/plugged')
" File explorer panel
Plug 'scrooloose/nerdtree'

" Auto-completion
Plug 'Valloric/YouCompleteMe'
set completeopt-=preview

" Syntax check
Plug 'vim-syntastic/syntastic'
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0

" Brackets handling
Plug 'jiangmiao/auto-pairs'

" LaTex support
Plug 'lervag/vimtex'
if $WSL=='1'
    let g:vimtex_compiler_latexmk={
                \'callback': 0
                \}
    let g:vimtex_view_automatic=0
endif

call plug#end()
