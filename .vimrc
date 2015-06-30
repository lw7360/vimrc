set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'

Plugin 'kien/ctrlp.vim'

Plugin 'bling/vim-airline'

Plugin 'tpope/vim-fugitive'

Plugin 'Townk/vim-autoclose'

Plugin 'kchmck/vim-coffee-script'

Plugin 'derekwyatt/vim-scala'

Plugin 'digitaltoad/vim-jade'

Plugin 'fatih/vim-go'

Plugin 'terryma/vim-expand-region'

Plugin 'Valloric/YouCompleteMe'

Plugin 'tpope/vim-commentary'

Plugin 'tpope/vim-sleuth'

Plugin 'tpope/vim-endwise'

Plugin 'rking/ag.vim'

Plugin 'kshenoy/vim-signature'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

syntax enable
set background=dark
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
colorscheme solarized

set encoding=utf-8
set scrolloff=3
set autoindent
"set showmode
set showcmd
set hidden
set wildmenu
set wildmode=longest:full,full
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set number
autocmd BufEnter * silent! lcd %:p:h:gs/ /\\ /
let mapleader = "\<Space>"

nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

set incsearch
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set ignorecase
set smartcase
"set timeoutlen=50
set noshowmode
set fillchars+=stl:\ ,stlnc:\
set ambiwidth=double

let g:bufferline_echo = 0
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
      let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

let g:airline_theme='solarized'

" backup to ~/.tmp
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

map <F7> :tabp<CR>
map <F8> :tabn<CR>

set timeoutlen=500 ttimeoutlen=0

:nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

map ; :
noremap ;; ;

nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>x :x<CR>
