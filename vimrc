set nocompatible

" Tabstop, Shiftwith and replace tabs with spaces but not in makefiles "
set tabstop=2
set shiftwidth=2
set expandtab

" Autocommands for special files "
autocmd FileType make set noexpandtab
autocmd BufNewFile,BufRead *.md set ft=markdown tw=79
autocmd BufNewFile,BufRead *.tex set ft=tex tw=79
autocmd BufNewFile,BufRead *.txt set ft=sh tw=79

" Syntaxhighlighting, colorscheme, linenumbers "
syntax on
colorscheme gruvbox
set cursorline
set more                " Use more
set title               " Blank title
set vb t_vb=            " No beeping and flashing
set wildmenu
set background=dark
set number              " Linenumbers
set nowrap
set hlsearch
set t_Co=256
set laststatus=2        " Always display the statusline in all windows
set showtabline=2       " Always display the tabline
set noshowmode          " Hide the default mode text
"set colorcolumn=79
set textwidth=79

" Airline configs
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
