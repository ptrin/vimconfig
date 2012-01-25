set nocompatible
set viminfo=%,'100,<50,s10,h
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin indent on

let g:user_zen_leader_key = '<c-k>'

au InsertEnter * set isk+=-
au InsertLeave * set isk-=- 
au BufWinLeave * silent! mkview
au BufWinEnter * silent! loadview


set autochdir
set hidden
set incsearch
set nobackup
set nowritebackup
set noswapfile
set noeb
colorscheme zenburn
set cursorline
au WinEnter * :setlocal cursorline
au WinLeave * :setlocal nocursorline
set backupdir=$VIMRUNTIME/temp/
set directory=$VIMRUNTIME/temp/

noremap <C-TAB> :tabnext<CR>
noremap <C-S-TAB> :tabprev<CR>
noremap <Left> :bp!<CR>
noremap <Right> :bn!<CR>
imap jj <Esc>
imap {{ {<CR><Esc>O
set ic
map <F1> :NERDTreeToggle<CR>
command W :w
command Bdall :bufdo bd
map ,cd :cd %:p:h<CR>
set nowrap
set number
au WinEnter * :setlocal number
au WinLeave * :setlocal nonumber
"set smartindent
set lines=200
set columns=120
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4

nmap ,f :FufFileWithCurrentBufferDir<CR>
nmap ,b :FufBuffer<CR>
nmap ,t :FufTaggedFile<CR>

nnoremap ,jc :JumpToCSS<CR>
let g:jumptocss_autoclose = 1


