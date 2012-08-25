" Pathogen
filetype off 
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

" Syntax highlighting
syntax on
set background=dark
set term=xterm-256color
colorscheme jellybeans

" Visual cues
set colorcolumn=133
set relativenumber
set showmatch

" Indentation
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set softtabstop=2
set autoindent

" Searching
set incsearch
set nohlsearch

" Do not abandon 'off' buffers
set hidden

set nocompatible

set tabpagemax=20

" Disable arrow keys
map <down> <nop>
map <left> <nop>
map <right> <nop>
map <up> <nop>
" Don't remap arrow keys
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
imap <up> <nop> 

" Filetypes
set fileencoding=utf-8
set fileencodings=utf-8,latin1

" Status bar
set laststatus=2
set statusline=%{fugitive#statusline()}%=[%f][%c][%l]

" Get the word motion operator to handle Ruby instance variables
set iskeyword=@,48-57,_,192-255,@-@

" Wrap a word in hash-curlies
nnoremap <Leader>zz :call HashCurlies()<CR>

" Ruby stuffz
let ruby_operators = 1
let ruby_space_errors = 1
