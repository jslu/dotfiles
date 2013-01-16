" Turn on pathogen for easier plugin management
execute pathogen#infect()


filetype plugin indent on	" enable filetype-specific detection/plug-in/indenting

set nocompatible
set encoding=utf-8


set t_Co=256
syntax on
syntax enable
let g:solarized_termcolors=256
colorscheme solarized
set background=dark
set background=light



set laststatus=2	" plugin: Powerline
set showtabline=2

set number
set cursorline

" Search-related functionalities
set ignorecase
set smartcase
set hlsearch
set incsearch

set wildmode=longest,list		" use emacs-style tab completion when selecting files, etc
"set wildmenu				" make tab completion for files/buffers act like bash

" * cursorline switched while focus is switched to another split window
" ------------------------------------
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline


" ===================================================================
" Variable settings
" ===================================================================

" * Plugin: Powerline
" ------------------------------------
let g:Powerline_symbols='unicode'
let g:Powerline_colorscheme = 'solarized256'

" * Plugin: Taglist
" ------------------------------------
let Tlist_WinWidth=40
let Tlist_GainFocus_On_ToggleOpen=1

" * Plugin: NERDTree
" ------------------------------------
let NERDTreeDirArrows=1
let g:NERDTreeWinSize=30


" ===================================================================
" Key bindings
" ===================================================================

" * abandom the habit of using arrow key
" ------------------------------------
map <UP> <NOP>
map <DOWN> <NOP>
map <LEFT> <NOP>
map <RIGHT> <NOP>
inoremap <UP> <NOP>
inoremap <DOWN> <NOP>
inoremap <LEFT> <NOP>
inoremap <RIGHT> <NOP>

" * add a side-effect of clearing search highlight to <C-l> (Clear screen)
" ------------------------------------
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

" * Plugin: 
" ------------------------------------
nnoremap <silent> <F2> :NERDTreeMirrorToggle<CR>
map <silent> <F4> :TlistToggle<cr>
