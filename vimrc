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

" Always show the status bar
set laststatus=2

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
