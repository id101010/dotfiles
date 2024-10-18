set nocompatible
set encoding=utf-8

filetype plugin indent on

" Pluigin installation using vim-plug "
call plug#begin('~/.vim/plugged')
  Plug 'preservim/nerdtree'
  Plug 'arcticicestudio/nord-vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'Yggdroot/indentLine'
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()

" Autocommands for special files "
autocmd FileType make set noexpandtab " we want tabs in Makefiles
autocmd BufWritePre * :%s/\s\+$//e " no trailing whitespace
autocmd BufNewFile,BufRead *.md set ft=markdown tabstop=2 shiftwidth=2 softtabstop=2 showtabline=2 tw=79 expandtab " markdown
autocmd BufNewFile,BufRead *.tex set ft=tex tw=79 " latex
autocmd BufNewFile,BufRead *.py set ft=python tabstop=4 shiftwidth=4 softtabstop=4 showtabline=4 expandtab " Python PEP8

" Syntaxhighlighting, colorscheme, linenumbers "
syntax on
"colorscheme gruvbox
colorscheme nord

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
set laststatus=2 " always display a status line
set display=lastline " show as much as possible of the last line
set updatetime=300 " 300ms update

" Airline configs
let g:airline_theme='nord'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_powerline_fonts = 1
let g:airline_section_z = "%p%% : \ue0a1:%l/%L: Col:%c"

" Indent indicator configs
let g:indentLine_enabled = 1
let g:indentLine_setColors = 2
let g:indentLine_color_term = 239
let g:indentLine_char = '┊'

" Go configs
set autowrite
" Go syntax highlighting
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1
" Auto formatting and importing
let g:go_fmt_autosave = 1
let g:go_fmt_command = "goimports"
" Status line types/signatures
let g:go_auto_type_info = 1
