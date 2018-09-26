"""""""""""""""""""""""""""""""""""""
" __      _______ __  __            "
" \ \    / /_   _|  \/  |           "
"  \ \  / /  | | | \  / |_ __ ___   "
"   \ \/ /   | | | |\/| | '__/ __|  "
"    \  /   _| |_| |  | | | | (__   "
"     \/   |_____|_|  |_|_|  \___|  "
"                                   "
"""""""""""""""""""""""""""""""""""""

set nocompatible
filetype off

""""""""""""""""""""""""""""""""""""""
"  Vundle (vim plugin manager) stuff "
""""""""""""""""""""""""""""""""""""""
set rtp+=~/.vim/bundle/Vundle.vim

" Automatically setting up vundle "
let has_vundle=1
if !filereadable($HOME."/.vim/bundle/Vundle.vim/README.md")
    echo "Installing Vundle..."
    echo ""
    silent !mkdir -p $HOME/.vim/bundle
    silent !git clone https://github.com/gmarik/Vundle.vim $HOME/.vim/bundle/Vundle.vim
    let has_vundle=0
endif

" Start Vundle stuff "
call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'
    " A pretty statusline, bufferline integration "
    Plugin 'itchyny/lightline.vim'
    " Bufferline plugin "
    Plugin 'bling/vim-bufferline'
    " Glorious colorscheme "
    Plugin 'nanotech/jellybeans.vim'
" Finish Vundle stuff "
call vundle#end()

" Installing plugins the first time, quits when done "
if has_vundle == 0
    :silent! PluginInstall
    :qa
endif

filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""
"          Misc configurations          "
"""""""""""""""""""""""""""""""""""""""""

" Autointend and autoscroll 4 lines above the cursor "
set cindent
set scrolloff=4

" Tabstop, Shiftwith and replace tabs with spaces but not in makefiles "
set tabstop=4
set shiftwidth=4
set expandtab

" Autocommands for special files "
autocmd FileType make set noexpandtab
autocmd BufNewFile,BufRead *.md set ft=markdown tw=79
autocmd BufNewFile,BufRead *.tex set ft=tex tw=79
autocmd BufNewFile,BufRead *.txt set ft=sh tw=79

" Stuff needed by urxvt "
set nocompatible
set mouse=a
set backspace=2

" Syntaxhighlighting, colorscheme, linenumbers "
syntax on
colorscheme jellybeans  " Colorscheme from plugin 
set cursorline
set more                " Use more 
set title               " Blank title
set vb t_vb=            " No beeping and flashing "
set wildmenu
set background=dark
set number              " Linenumbers
set list                
set nowrap
set hlsearch
set t_Co=256
set laststatus=2        " Always display the statusline in all windows
set showtabline=2       " Always display the tabline, even if there is only one tab
set noshowmode          " Hide the default mode text (e.g. -- INSERT -- below the statusline)

"Automaticly reread a file, if file has changed"
set autoread
