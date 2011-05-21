set nocompatible
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin indent on

au InsertEnter * :set isk+=-
au InsertLeave * :set isk-=- 

set autochdir
set hidden
set incsearch
set nobackup
set nowritebackup
set noswapfile
set noeb
colorscheme desert
set cursorline
set backupdir=$VIMRUNTIME/temp/
set directory=$VIMRUNTIME/temp/

noremap <Left> :bp!<CR>
noremap <Right> :bn!<CR>
imap jj <Esc>
set ic
map <F1> :NERDTreeToggle<CR>
command W :w
map ,cd :cd %:p:h<CR>
set nowrap
set number
set smartindent
set lines=200
set columns=120
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
