call pathogen#infect()
syntax on
filetype plugin indent on

let mapleader = ","
let maplocalleader = '\'

set autoindent
set smartindent
set sm
set undolevels=0
set sts=0
set expandtab
set fo+=tcqnro
set guioptions=egmrt
set visualbell
set nocompatible
set foldmethod=manual
set foldcolumn=0
set scrolloff=3
set wildmenu
set wildmode=list:longest
set encoding=utf-8
set showmode
set showcmd
set hidden
set ttyfast
set ruler
set laststatus=0
set relativenumber
set clipboard=unnamed
set backspace=indent,eol,start
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch

nnoremap <leader><space> :nohlsearch<cr>
nnoremap <tab> %
vnoremap <tab> %

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l><C-l> <C-w>l

nnoremap <leader>A :Ack
nnoremap <leader>a :Ack <cword><CR>

hi mailQuoted1 ctermfg=cyan
hi mailQuoted2 ctermfg=yellow
hi mailQuoted3 ctermfg=green
hi mailQuoted4 ctermfg=cyan
hi mailQuoted5 ctermfg=yellow
hi mailQuoted6 ctermfg=green
hi mailHeaderKey cterm=bold ctermfg=white
hi mailSubject cterm=bold ctermfg=white
hi mailHeader ctermfg=blue
hi mailEmail cterm=bold ctermfg=yellow

" let vimclojure#highlight_builtins = 1
" let clj_highlight_contrib = 1
" let clj_paren_rainbow = 0
" let vimclojure#wantNailgun = 1
" let vimclojure#NailgunClient = "/Users/joni/Scratch/clj/vimclojure-2.1.2/ng"

" let g:miniBufExplMapWindowNavVim = 1 
" let g:miniBufExplMapWindowNavArrows = 1 
" let g:miniBufExplMapCTabSwitchBufs = 1 
" let g:miniBufExplModSelTarget = 1 

let Tlist_Ctags_Cmd='/opt/local/bin/ctags'
map <Leader>T :TlistToggle<CR>

map <Leader>f :FufFile<CR>
map <Leader>b :FufBuffer<CR>
map <Leader>d :FufDir<CR>

map <Leader>n :NERDTreeToggle<CR>

set ofu=syntaxcomplete#Complete

" Supertab settings
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabLongestHighlight = 1

" indentation of case statements
set cino+=:0
