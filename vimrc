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
" Wrap for .tex files
augroup WrapLineInTeXFile
    autocmd!
    autocmd FileType tex setlocal wrap
augroup END

set encoding=utf-8

" TODO: Set color scheme
" set background=dark
" colorscheme molokai

" TODO: Powerline status bar
" python3 from powerline.vim import setup as powerline_setup
" python3 powerline_setup()
" python3 del powerline_setup

" Always show the status bar
set laststatus=2

" Disable Background Color Erase (BCE) so that color schemes render properly
" when inside 256-color tmux and GNU screen
" See also http://snk.tuxfamily.org/log/vim-256color-bce.html
if &term=~"256color"
    set t_ut=
endif

" Set cursor shape in different modes for iTerm2
if $TERM_PROGRAM =~ "iTerm"
    " Vertical bar in insert mode
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    " Block in normal mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
    " Underline in replace mode
    let &t_SR = "\<Esc>]50;CursorShape=2\x7"
    " Show block cursor in normal mode when vim starts
    autocmd VimEnter * normal! :startinsert | stopinsert
endif

" GVIM options
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

set guioptions-=m
set guioptions-=T

" TODO: Set font
" if has('unix') && $WSL!='1'
"     set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Regular\ 11
" elseif has('win32')
"     set guifont=Consolas\ NF:h12
" endif
