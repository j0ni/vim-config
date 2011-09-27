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
set nowrap
set expandtab
set ts=2
set sw=2
" not sure I'll get used to this
" set softtabstop=2
set fo+=tcqnro
set guioptions=egmrt
set visualbell
set nocompatible
set foldmethod=manual
set foldcolumn=0
set scrolloff=3
set wildmenu
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*
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

function s:setupWrapping()
  set wrap
  set wrapmargin=2
  set textwidth=72
endfunction

function s:setupMarkup()
  call s:setupWrapping()
  map <buffer> <Leader>p :Hammer<CR>
endfunction

" Thorfile, Rakefile, Vagrantfile and Gemfile are Ruby
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru} set ft=ruby
 
" md, markdown, and mk are markdown and define buffer-local preview
au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn} call s:setupMarkup()

" add json syntax highlighting
au BufNewFile,BufRead *.json set ft=javascript

au BufRead,BufNewFile *.txt call s:setupWrapping()

" Crockford says javascript should be indented 4 spaces
" au BufRead,BufNewFile * if &ft == 'javascript' | set ts=4 sw=4 | endif
" I'm not so sure.

" Unimpaired configuration
" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e
" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv

" Enable syntastic syntax checking
let g:syntastic_enable_signs=1
let g:syntastic_quiet_warnings=1

" gist-vim defaults
if has("mac")
  let g:gist_clip_command = 'pbcopy'
elseif has("unix")
  let g:gist_clip_command = 'xclip -selection clipboard'
endif
let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1

" Turn off jslint errors by default
let g:JSLintHighlightErrorLine = 0

" MacVIM shift+arrow-keys behavior (required in .vimrc)
let macvim_hig_shift_movement = 1

" % to bounce from do to end etc.
runtime! macros/matchit.vim

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
