" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.

call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
filetype off 
syntax on

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
"    \| exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules according to the
" detected filetype. Per default Debian Vim only load filetype specific
" plugins.
"if has("autocmd")
"  filetype indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes) in terminals

set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set softtabstop=2
set autoindent
"set hlsearch
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
"syntax on
filetype plugin indent on
"set mouse=a

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
