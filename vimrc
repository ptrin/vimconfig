" ----------------------------------------
" important
" ----------------------------------------

" ----------------------------------------
" moving around, searching and patterns
" ----------------------------------------

" ----------------------------------------
" tags
" ----------------------------------------

" ----------------------------------------
" displaying text
" ----------------------------------------

" ----------------------------------------
" syntax, highlighting and spelling
" ----------------------------------------

" ----------------------------------------
" multiple windows
" ----------------------------------------

" Switch windows with ctrl + hjkl
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" ----------------------------------------
" multiple tab pages
" ----------------------------------------

" Meta+1-0 jumps to tab 1-10, Shift+Meta+1-0 jumps to tab 11-20:
let s:windowmapnr = 0
let s:wins='1234567890!@#$%^&*()'
while (s:windowmapnr < strlen(s:wins))
    exe 'noremap <silent> <D-' . s:wins[s:windowmapnr] . '> ' . (s:windowmapnr + 1) . 'gt'
    exe 'inoremap <silent> <D-' . s:wins[s:windowmapnr] . '> <C-O>' . (s:windowmapnr + 1) . 'gt'
    exe 'cnoremap <silent> <D-' . s:wins[s:windowmapnr] . '> <C-C>' . (s:windowmapnr + 1) . 'gt'
    exe 'vnoremap <silent> <D-' . s:wins[s:windowmapnr] . '> <C-C>' . (s:windowmapnr + 1) . 'gt'
    let s:windowmapnr += 1
endwhile
unlet s:windowmapnr s:wins

" ----------------------------------------
" terminal
" ----------------------------------------

" ----------------------------------------
" using the mouse
" ----------------------------------------

" ----------------------------------------
" GUI
" ----------------------------------------

" ----------------------------------------
" printing
" ----------------------------------------

" ----------------------------------------
" messages and info
" ----------------------------------------

" ----------------------------------------
" selecting text
" ----------------------------------------

" ----------------------------------------
" editing text
" ----------------------------------------

" ----------------------------------------
" tabs and indenting
" ----------------------------------------

" ----------------------------------------
" folding
" ----------------------------------------

" ----------------------------------------
" diff mode
" ----------------------------------------

" ----------------------------------------
" mapping
" ----------------------------------------

" ----------------------------------------
" reading and writing files
" ----------------------------------------

" ----------------------------------------
" the swap file
" ----------------------------------------

" ----------------------------------------
" command line editing
" ----------------------------------------

" ----------------------------------------
" executing external commands
" ----------------------------------------

" ----------------------------------------
" running make and jumping to errors
" ----------------------------------------

" ----------------------------------------
" language specific
" ----------------------------------------

" ----------------------------------------
" multi-byte characters
" ----------------------------------------

" ----------------------------------------
" various
" ----------------------------------------


set nocompatible
set viminfo=%,'100,<50,s10,h
filetype off
let g:jshintprg = "/usr/local/bin/jshint"
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin indent on

" Ultisnips
let g:UltiSnipsSnippetDirectories=["UltiSnips", "snippets"]
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" Zen coding
let g:user_zen_leader_key = '<c-m>'

" Ack
let g:ackprg="/usr/local/bin/ack -H --nocolor --nogroup --column"

" Save views (fold state of buffers)
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
colorscheme oceandeep
set cursorline
au WinEnter * :setlocal cursorline
au WinLeave * :setlocal nocursorline
set backupdir=$VIMRUNTIME/temp/
set directory=$VIMRUNTIME/temp/



" Mapping gp to select last pasted text (like gv)
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'

noremap <C-TAB> :tabnext<CR>
noremap <C-S-TAB> :tabprev<CR>
noremap <Left> :bp!<CR>
noremap <Right> :bn!<CR>
imap jj <Esc>
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

" CtrlP config
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_extensions = ['dir']
let g:ctrlp_custom_ignore = '_site'
nmap ,f :CtrlP<CR>
nmap ,b :CtrlPBuffer<CR>

nnoremap ,jc :JumpToCSS<CR>
let g:jumptocss_autoclose = 1
