if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.vim/bundle')

Plug 'gmarik/Vundle.vim'

Plug 'altercation/vim-colors-solarized'

Plug 'kien/ctrlp.vim'

Plug 'bling/vim-airline'

Plug 'tpope/vim-fugitive'

Plug 'Townk/vim-autoclose'

Plug 'kchmck/vim-coffee-script'

Plug 'derekwyatt/vim-scala'

Plug 'digitaltoad/vim-jade'

Plug 'fatih/vim-go'

Plug 'terryma/vim-expand-region'

Plug 'Valloric/YouCompleteMe', { 'dir': '~/.vim/bundle/YouCompleteMe', 'do': 'sudo ./install.py' }

Plug 'tpope/vim-commentary'

Plug 'tpope/vim-sleuth'

Plug 'tpope/vim-endwise'

Plug 'rking/ag.vim'

Plug 'kshenoy/vim-signature'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }

Plug 'junegunn/vim-easy-align'

Plug 'jamessan/vim-gnupg'

call plug#end()

" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


syntax enable
set background=dark
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
silent! colorscheme solarized

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
