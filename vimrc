" Ryan Mackenzie White
" ryan.white@canada.ca 

" General Settings " {{{
set nocompatible " disable vi compatibility
set history=50          " keep 50 lines of command line history
fixdel " fix issues with backspace/delete keys
" Match and search
set incsearch
" Modeline
set modeline
set modelines=5 " default numbers of lines to read for modeline instructions
" Backup
if has("vms")
  set nobackup          " do not keep a backup file, use versions instead
else
  set backup            " keep a backup file
endif
" "}}}
"
" Formatting "{{{
set nowrap
set textwidth=0 " Do not wrap lines by default

" Setup indentation
set tabstop=2 " tab size equal to 2 spaces
set softtabstop=2
set shiftwidth=2 " default shift width for indents
set expandtab " replace tabs with ${tabstop} spaces
set smarttab

set wildmenu
set wildmode=list:longest,full
set backspace=indent,eol,start " powerful backspacing
set formatoptions-=c " Prevent auto comment
"suppresses the regular vim tabs
set showtabline=0
set tabpagemax=50
"set up tab controls
map <C-S-tab> :tabprevious<cr>
map <C-tab> :tabnext<cr>

set autoindent " always set autoindenting on
set cindent
set smartindent

set ts=8
set sw=4

syntax on
filetype plugin indent on
" "}}}

" Visual "{{{
set showmatch "Show match of bracket
set showcmd             " display incomplete commands
set ruler               " show the cursor position all the time

set mouse=a
colorscheme desert

" "}}}

" Setup Vundle and provision
" set runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'aperezdc/vim-template'
Plugin 'Raimondi/delimitMate'
Plugin 'fholgado/minibufexpl.vim'
call vundle#end()

let g:miniBufExplUseSingleClick = 1
let g:miniBufExplVSplit = 25
let g:miniBufExplSplitBelow=0

" vim-template
let g:email = "ryan.white4@canada.ca"
let g:user = "Ryan Mackenzie White"
let g:license = ""

" Syntastic "{{{
let g:syntastic_check_on_open = 1
" "}}}

