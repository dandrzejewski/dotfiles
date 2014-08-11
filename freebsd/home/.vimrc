set nowrap
syntax on
set guifont=Courier_New:h8
set showtabline=2

" Firefox-style tabs
nmap <C-S-tab> :tabprevious<cr>
nmap <C-tab> :tabnext<cr>
imap <C-S-tab> <ESC>:tabprevious<cr>i
imap <C-tab> <ESC>:tabnext<cr>i
nmap <C-t> :tabnew<cr>
imap <C-t> <ESC>:tabnew<cr>i
map <C-w> :tabclose<cr>

" The best color scheme ever.
colorscheme delek

" Don't back up files
set nobackup

" On-screen line numbering
set number
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
set tabstop=4
set shiftwidth=4

" Match braces/brackets/parens
set showmatch

" Get rid of the toolbar
set guioptions-=T

" Don't beep on error
set vb t_vb=

" Search for text as you enter it
set incsearch

" Allow the cursor to roam free!
" set virtualedit=all

" Keep some context
set scrolloff=2

" File name completion
set wildmode=longest,list

" Enable horizontal scrollbar
set guioptions+=b


