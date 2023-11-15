set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" colorscheme
Plugin 'altercation/vim-colors-solarized'

" indent
Plugin 'Yggdroot/indentLine'

" highlight yank
Plugin 'machakann/vim-highlightedyank'

" auto completion for parenthesis
Plugin 'Raimondi/delimitMate'

" Status line at the bottom of window
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" All of your Plugins must be added before the following line
call vundle#end()            " required
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


filetype plugin indent on    " required


" color
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" tab = 4 spaces
set tabstop=4       " Number of spaces a tab counts for
set softtabstop=4   " Number of spaces to use when editing text
set shiftwidth=4    " Number of spaces to use for (auto)indenting
set expandtab       " Use spaces instead of tabs

" ui
set number      " Show line numbers
set cursorline  " highlight current line
set wildmenu    " Enable enhanced command-line completion
set mouse=a     " Enable mouse support for all modes (normal, insert, visual)

" search option
set hlsearch    " highlight matches

" indent
let g:indentLine_char_list = ['|', '¦', '┆', '┊']   " Each indent level has a distinct character.

" autocmd
" search highlighting is turned off when you enter insert mode and restored when you leave insert mode.
autocmd InsertEnter * :set nohlsearch
autocmd InsertLeave * :set hlsearch

" Edit multiple files with vim
" Ex. vim -p file)1 file_2 file_3
"   1) Convert with windows: t + <- and t + ->
"       Default key setting was gT and gt
"   2) Exit: qa

nnoremap <silent> t<Right> gt   " Move next tab
nnoremap <silent> t<Left> gT    " Move prev tab
