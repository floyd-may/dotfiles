set nocompatible "don't be Vi compatible
filetype off "turn off filetype detection for vundle
set rtp+=~/.vim/bundle/vundle "add vundle
call vundle#rc() "start vundle
Plugin 'AndrewRadev/linediff.vim'
Plugin 'tpope/vim-cucumber'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
"Plugin 'vim-scripts/paredit.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'peitalin/vim-jsx-typescript'
Plugin 'tpope/vim-surround'

highlight TrailingSpace ctermbg=red guibg=red
match TrailingSpace /\s\+$/

syntax on "enable syntax highlighting
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

highlight ColorColumn ctermbg=darkgrey guibg=#333333

" filetype plugin forcing
au BufNewFile,BufRead *.sls set filetype=yaml
au BufNewFile,BufRead *.less set filetype=css
au BufNewFile,BufRead *.cmp set filetype=html
au BufNewFile,BufRead *.ts set filetype=typescript
au BufNewFile,BufRead *.tsx set filetype=typescript.tsx

" remaps ln and lp to move to next & prev markers
nnoremap <leader>ln :lnext<CR>
nnoremap <leader>lp :lprev<CR>

" hide toolbar from gui
set guioptions-=T

function! FontSizePlus ()
  let l:gf_size_whole = matchstr(&guifont, '\(:h\)\@<=\d\+$')
  let l:gf_size_whole = l:gf_size_whole + 1
  let l:new_font_size = ':h'.l:gf_size_whole
  let &guifont = substitute(&guifont, ':h\d\+$', l:new_font_size, '')
endfunction

function! FontSizeMinus ()
  let l:gf_size_whole = matchstr(&guifont, '\(:h\)\@<=\d\+$')
  let l:gf_size_whole = l:gf_size_whole - 1
  let l:new_font_size = ':h'.l:gf_size_whole
  let &guifont = substitute(&guifont, ':h\d\+$', l:new_font_size, '')
endfunction
