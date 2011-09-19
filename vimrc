runtime! debian.vim

call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
filetype off 
syntax on

set background=dark

set showmatch		" Show matching brackets.

set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set softtabstop=2
set autoindent
set incsearch
set number
set hidden

if has("autocmd")
    au BufRead *.rb set tabstop=2
    au BufRead *.rb set shiftwidth=2
    au BufRead *.rb set softtabstop=2
    au BufNewFile *.rb set tabstop=2
    au BufNewFile *.rb set shiftwidth=2
    au BufNewFile *.rb set softtabstop=2
endif
    
" Source a global configuration file if available
" XXX Deprecated, please move your changes here in /etc/vim/vimrc
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

set nocompatible
filetype plugin indent on

runtime! macros/matchit.vim

"augroup myfiletypes
"autocmd!
"autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
"augroup END

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
set statusline=%{fugitive#statusline()}%=[%f][%c][%P]

set term=xterm-256color
colorscheme railscasts
" colorscheme jellybeans
