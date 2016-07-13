"""""""""""
" Plugins "
"""""""""""
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.vim/bundle')

Plug 'gmarik/Vundle.vim'

Plug 'sjl/badwolf'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" airline config
let g:bufferline_echo = 0
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
      let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

let g:airline_theme='badwolf'

Plug 'tpope/vim-fugitive'

Plug 'Townk/vim-autoclose'

Plug 'kchmck/vim-coffee-script'

Plug 'derekwyatt/vim-scala'

Plug 'digitaltoad/vim-jade'

Plug 'fatih/vim-go'

Plug 'terryma/vim-expand-region'
" expand region by pressing v. shrink region by pressing <C-v>
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

Plug 'Shougo/neocomplete.vim'
let g:neocomplete#enable_at_startup = 1

Plug 'tpope/vim-commentary'

Plug 'tpope/vim-sleuth'

Plug 'tpope/vim-endwise'

Plug 'rking/ag.vim'

Plug 'kshenoy/vim-signature'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }

Plug 'junegunn/vim-easy-align'

Plug 'luochen1990/rainbow'
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle

Plug 'editorconfig/editorconfig-vim'

Plug 'wakatime/vim-wakatime'

Plug 'mhinz/vim-startify'

Plug 'justinmk/vim-sneak'

Plug 'pangloss/vim-javascript'

call plug#end()

" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


""""""""""
" COLORS "
""""""""""
silent! colorscheme badwolf " awesome colorscheme
syntax enable " enable syntax processing

"""""""""""""""""
" SPACES & TABS "
"""""""""""""""""
set tabstop=2 " number of visual spaces per TAB
set softtabstop=2 " number of spaces in tab when editing
set shiftwidth=2 " number of spaces when you press >>, <<, or ==
set expandtab " tabs are spaces
set backspace=indent,eol,start " let backspace delete over line breaks, indentation, etc.

"""""""""""""
" UI CONFIG "
"""""""""""""
set encoding=utf-8 " sets how vim shall reprsent characters internally
set number " show line numbers
set relativenumber " use relative numbers
set showcmd " show command in bottom bar
set cursorline " highlight current line
set wildmenu " visual autocomplete for command menu
set wildmode=longest:full,full
set lazyredraw " redraw only when we need to
set ttyfast " indicates a fast terminal connection
set showmatch " highlight matching [{()}]
set scrolloff=3 " scrolls text so that there are always 3 lines above/below the cursor
set autoindent " enables autoindent
set hidden " hides buffers when opening a new file instead of forcing you to save them
set visualbell " flashes the screen instead of sounding a beep
set laststatus=2 " always display status line
set noshowmode " hide status line in the bottom
set ambiwidth=double " use two character spaces for ambiguous characters
" specifies the characters to fill status lines
set fillchars+=stl:\ ,stlnc:\

"""""""""""""
" SEARCHING "
"""""""""""""
set incsearch " search as characters are entered

" search will be case-insensitive if search string is ALL lower case
" otherwise, search will be case-sensitive
set ignorecase 
set smartcase

""""""""""""
" MOVEMENT "
""""""""""""
" move vertically by visual line
nnoremap j gj
nnoremap k gk

" move between tabs with <F7> and <F8>
map <F7> :tabp<CR>
map <F8> :tabn<CR>

""""""""""""""""""""
" LEADER SHORTCUTS "
""""""""""""""""""""
let mapleader = "\<Space>" " leader is the space bar

" edit vimrc/zshrc and load vimrc bindings
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" open ag.vim
nnoremap <leader>a :Ag

" open CtrlP
nnoremap <Leader>o :CtrlP<CR>

" save file or save and close file
nnoremap <Leader>w :w<CR>
nnoremap <Leader>x :x<CR>

" Toggle paste mode
set pastetoggle=<leader>p

"""""""""""
" BACKUPS "
"""""""""""
" backup to ~/.tmp
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

""""""""
" MISC "
""""""""
" set vim to chdir for each file
if exists('+autochdir')
    set autochdir
else
    autocmd BufEnter * silent! lcd %:p:h:gs/ /\\ /
endif

set timeoutlen=500 ttimeoutlen=0 " set timeoutlen

" remap ; to : and ;; to ;
map ; :
noremap ;; ;

" enable s_next for sneak
let g:sneak#s_next = 1

" determine sneak case sensitivity from 'ignorecase' and 'smartcase'
let g:sneak#use_ic_scs = 1


" press <F5> to strip end of line whitespace
:nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
