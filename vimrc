set nocompatible

filetype plugin indent on

" Pluigin installation using vim-plug "
call plug#begin('~/.vim/plugged')
  Plug 'preservim/nerdtree'
  Plug 'morhetz/gruvbox'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
call plug#end()

" Autocommands for special files "
autocmd FileType make set noexpandtab
autocmd BufNewFile,BufRead *.md set ft=markdown tw=79
autocmd BufNewFile,BufRead *.tex set ft=tex tw=79
autocmd BufNewFile,BufRead *.txt set ft=sh tw=79
autocmd BufNewFile,BufRead *.py set ft=python tabstop=4 shiftwidth=4 softtabstop=4 showtabline=4 expandtab

" Syntaxhighlighting, colorscheme, linenumbers "
syntax on
colorscheme gruvbox

" Tabstop, Shiftwith and replace tabs with spaces but not in makefiles "
set tabstop=2 " number of spaces in a tab
set shiftwidth=2  " number of spaces to use for each step of (auto)indent
set softtabstop=2 " number of spaces that a Tab counts for while editing
set showtabline=2 " always display tab labels
set expandtab " expand tabs with spaces
set backspace=indent,eol,start " set behavior of backspace
set showmatch " when a bracket is inserted briefly jump to the matching one
set showcmd " show command in the last line of the screen
set showmode
set cursorline " always show cursor line
set more " use more
set title " blank title
set background=dark " set bg
set relativenumber " linenumbers
set number " current line number
set nowrap " do not wrap long lines per default
set laststatus=2 " always display the statusline in all windows
set showtabline=2 " always display the tabline
set hlsearch " highlight after search
set incsearch " highlight while searching
set ttyfast " fast rendering
set encoding=utf8 " use utf8
set laststatus=2 " always display a status line
set display=lastline " show as much as possible of the last line

" Airline configs
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_powerline_fonts = 1
