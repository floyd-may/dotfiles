set nocompatible "don't be Vi compatible
filetype off "turn off filetype detection for vundle
set rtp+=~/.vim/bundle/vundle "add vundle
call vundle#rc() "start vundle
Plugin 'guns/vim-clojure-static'
Plugin 'editorconfig/editorconfig'
Plugin 'klen/python-mode'

syntax enable "enable syntax highlighting
filetype on "enable filetype detection
filetype plugin on "filetype specific plugins
filetype indent on "filetype specific indents
set autoindent "copy indent from current line when starting new line
set autoread "auto read if file has changed outside vim but not inside
set clipboard=unnamedplus "copy/paste to/from system slipboard
set colorcolumn=80 "highlight at column 80 for visual indication of long line
set encoding=utf8 "use UTF-8 file encoding
set expandtab "use spaces instead of tabs
set formatoptions=l "don't wrap long lines
set history=1000 "remember the last 1000 commands used
set hlsearch "highlight matchs when searching
set incsearch "jump to next match when searching
set laststatus=2 "show status line
set linebreak "visually wrap long lines
set number "show line numbers
set numberwidth=4 "width of line number column
set shiftwidth=4 "4 spaces for indents when using << or >>
set smarttab "use <BS> too delete shiftwidth worth of space at start of line
set softtabstop=4 "4 spaces for tabs in INSERT mode
set tabstop=4 "4 space for tabs
set undolevels=1000 "number of changes that can be undone
colors slate

" filetype plugin forcing
au BufNewFile,BufRead *.sls set filetype=yml
au BufNewFile,BufRead *.less set filetype=css
