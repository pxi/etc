set nocompatible
colorscheme nek
let g:is_posix=1

" enable filetype detection and autoindenting
filetype plugin indent on
" don't use syntax hilighting
syntax off

set autoread		" automatically read in changes made outside of vim
set cmdheight=1
set completeopt=	" get rid of annoying popup menu on word completion
set encoding=utf-8
set hlsearch
set ignorecase		" ignore case when searching (see smartcase too!)
set laststatus=2	" show statusline always
set mouse=			" get rid of annoying mouse functionality
set nobackup
set noexpandtab		" don't expand tabs to spaces
set noswapfile
set notitle
set nowritebackup
set number			" show line numbers
set shiftwidth=4
set shortmess+=aI
set showcmd			" show command on last line
set showmatch
set showmode		" show current mode on last line
set smartcase		" override ignorecase when pattern contains upper case chars
set smarttab
set statusline=\ \%f%m%r%h%w\ ::\ %y\ [%{&ff}]\%=\ [%l/%L:%c]\ 
set softtabstop=4
set tabstop=4		" tabstop and shiftwidth should always share the same value
set title			" set window title
set titlestring=vim\ %t
set wildmenu		" show menu on completion etc
set winminheight=0
set winminwidth=0

if has("autocmd")
	" show trailing whitespace
	autocmd BufWinEnter * match ExtraWhitespace /\s\+\%#\@<!$/
endif

" leave insert mode with jj
inoremap jj <ESC>

" resize and maximize current buffer
map + <c-w>+
map - <c-w>-
map <Enter> <c-w>_<c-w><bar>

" activate next/previous buffer
map K <c-w>k<c-w>_
map J <c-w>j<c-w>_

" toggle line numbers
map __ :set nu!<CR>

" improve up/down movement on wrapped lines
nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk

nnoremap <C-k> <C-u>
nnoremap <C-j> <C-d>

" remove annoying F1 help
inoremap <F1> <nop>
nnoremap <F1> <nop>
vnoremap <F1> <nop>

" jump to start and end of line
noremap H ^
noremap L $

" vim-go
let g:go_fmt_command = "goimports"
let g:go_doc_keywordprg_enabled = 0

au FileType go nmap <Leader>gd <Plug>(go-doc)
