set nocompatible
set number
set numberwidth=1
" set clipboard=unnamed
set clipboard+=unnamedplus
syntax on
set showcmd
set ruler
set cursorline
set showmatch
set sw=2
set relativenumber
set tabstop=8     ""- tabs are at proper location
set expandtab     ""- don't use actual tab character (ctrl-v)
set shiftwidth=4  ""- indenting is 4 spaces
set autoindent    ""- turns it on
set smartindent   ""- does the right thing (mostly) in programs
set cindent       ""- stricter rules for C programs

" Encoding
set encoding=UTF-8
set fileencoding=utf-8
set fileencodings=utf-8

"" Fix backspace indent
set backspace=indent,eol,start

"" Tabs. May be overridden by autocmd rules
set tabstop=4
set softtabstop=0
"set shiftwidth=4
set expandtab

"" Map leader to ,

"" Enable hidden buffers
set hidden

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase


" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time

"completeopt COC
set completeopt=menuone,noselect

"wrap
set nowrap



