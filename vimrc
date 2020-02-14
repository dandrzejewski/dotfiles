" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'nathanaelkane/vim-indent-guides'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


let g:airline_theme='solarized'
let g:indent_guides_enable_on_vim_startup = 1

set nowrap
syntax on
set guifont=Courier_New:h8
set showtabline=2

filetype plugin indent on

" Set the leader key to a comma
let mapleader=','

" Firefox-style tabs
nmap <C-S-tab> :tabprevious<cr>
nmap <C-tab> :tabnext<cr>
imap <C-S-tab> <ESC>:tabprevious<cr>i
imap <C-tab> <ESC>:tabnext<cr>i
nmap <C-t> :tabnew<cr>
imap <C-t> <ESC>:tabnew<cr>i
map <C-w> :tabclose<cr>

" The best color scheme ever.
set background=dark
colorscheme solarized


" Don't back up files
set nobackup

" On-screen line numbering
set number

" Relative numbering
set relativenumber

set nuw=6

" File Explorer (F2)
let treeExplVertical=1
let treeExplWinSize=35
let treeExplDirSort=1
let treeExplNoList=1
:nmap <F2> :VSTreeExplore<cr>

" Prevent VIM from emulating VI's bugs and limitations
set nocompatible

" Indentation
set autoindent
set smartindent

" Case
set ignorecase
set smartcase

" 4-space tabs
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Match braces/brackets/parens
set showmatch

" Get rid of the toolbar
set guioptions-=T

" Don't beep on error
set vb t_vb=

" Search for text as you enter it
set incsearch

" Highlight search matches
set hlsearch

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" Allow the cursor to roam free!
" set virtualedit=all

" Keep some context
set scrolloff=2

" File name completion
set wildmode=longest,list

" Enable horizontal scrollbar
set guioptions+=b

" Show command in bottom bar
set showcmd

" Highlight current line
set cursorline

" Graphical menu of matches when completing a file name
set wildmenu

" Don't redraw all the time.
set lazyredraw

" Code folding
set foldenable
set foldlevelstart=10
set foldnestmax=10

" space open/closes folds
nnoremap <space> za

set foldmethod=indent


" jk is escape
inoremap jk <esc>

let &titlestring = "[vim(" . expand("%:t") . ")]"
if &term == "screen"
  set t_ts=k
  set t_fs=\
  auto BufEnter * :set title | let &titlestring = 'v:' . expand('%')
  auto VimLeave * :set t_ts=k\
endif
if &term == "screen" || &term == "xterm"
  set title
endif


" These lines setup the environment to show graphics and colors correctly.
set nocompatible
set t_Co=256
 
let g:minBufExplForceSyntaxEnable = 1

if ! has('gui_running')
   set ttimeoutlen=10
   augroup FastEscape
      autocmd!
      au InsertEnter * set timeoutlen=0
      au InsertLeave * set timeoutlen=1000
   augroup END
endif
 
set laststatus=2 " Always display the statusline in all windows
set guifont=Inconsolata\ for\ Powerline:h14
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

" set statusline=%04n\ %t%(\ %m%r%y[%{&ff}][%{&fenc}]\ \ %{mode()}%)\ %a%=col\ %v\ \ line\ %l/%L\ %p%%                                                                                   



" Pathogen
execute pathogen#infect()

au BufNewFile,BufRead *.gradle setf groovy
au BufNewFile,BufRead *.md set filetype=markdown

" Remember the last position in a file.
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

"call pathogen#helptags()
"
"call plug#begin('~/.vim/plugged')

"Plug 'itchyny/lightline.vim'
"Plug 'ctrlpvim/ctrlp.vim'

"call plug#end()

let g:lightline = {
  \ 'colorscheme': 'PaperColor_light',
  \ }


