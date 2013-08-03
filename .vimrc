colorscheme wombat256mod

set t_Co=256

if &term =~ '256color'
    "Disable Background Color Erase (BCE) so that color schemes
    " work properly when Vim is used inside tmux and GNU screen.
    " See also http://snk.tuxfamily.org/log/vim-256color-bce.html
    set t_ut=
endif


set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" turns of vi compatibility mode
set nocompatible

" when scrolling up down, show at least 5 lines
set scrolljump=5

" Incremental searching
set incsearch

" This shows what you are typing as a command.  I love this!
set showcmd

" Turn off audible bell
set visualbell

" Needed for Syntax Highlighting and stuff
filetype on
filetype plugin on
syntax enable
set grepprg=grep\ -nH\ $*

"Cool tab completion stuff
set wildmenu
set wildmode=list:longest,full

" Ignoring case is a fun trick
set ignorecase

" And so is Artificial Intellegence!
set smartcase


" Highlight things that we find with the search
" set hlsearch
set nohlsearch

" Set ruler
set ruler
set rulerformat=%40(%t%y:\ %l,%c%V\ \(%o\)\ %p%%%)

set noerrorbells visualbell t_vb=
if has('autocmd')
    autocmd GUIEnter * set visualbell t_vb=
endif

"==============================================================================
"#### MAPPINGS ####

" Up and down are more logical with g..
" kdj: only useful if wrapping is turned off
" nnoremap <silent> k gk
" nnoremap <silent> j gj
" inoremap <silent> <Up> <Esc>gka
" inoremap <silent> <Down> <Esc>gja

" Create Blank Newlines and stay in Normal mode
nnoremap <silent> zj o<Esc>
nnoremap <silent> zk O<Esc>

" makes life easy
inoremap jk <ESC> 

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
" map N Nzz
" map n nzz
"==============================================================================

filetype plugin indent on
syntax enable

set nowrap

set number

set autoindent
set smarttab
set smartindent
set magic
set expandtab

set shiftwidth=4
set softtabstop=4
set tabstop=4


set backspace=indent,eol,start