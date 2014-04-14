" ----------------------------------------
" important
" ----------------------------------------
set nocompatible
set viminfo=%,'100,<50,s10,h
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

Plugin 'Raimondi/delimitMate'
Plugin 'tcomment'
Plugin 'JavaScript-Omni-Completion'
Plugin 'ultisnips'
Plugin 'ptrin/JumpToCSS'
Plugin 'matchit.zip'
Plugin 'vim-css3-syntax'
Plugin 'ack.vim'
Plugin 'vim-indent-guides'
Plugin 'ctrlp.vim'
Plugin 'vim-less'
Plugin 'tpope/vim-fugitive'
Plugin 'Emmet.vim'
Plugin 'gist-vim'
Plugin 'vim-ultisnips-css'
Plugin 'jshint.vim'
Plugin 'nerdtree'
Plugin 'webapi-vim'
Plugin 'surround'
Plugin 'xml.vim'

let g:jshintprg = "/usr/local/bin/jshint"
" call pathogen#runtime_append_all_bundles()
" call pathogen#helptags()
filetype plugin indent on
set autochdir
set hidden
set noeb

" ----------------------------------------
" moving around, searching and patterns
" ----------------------------------------
set incsearch
set ic

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
set nowrap
set number
au WinEnter * :setlocal number
au WinLeave * :setlocal nonumber
colorscheme oceandeep
set cursorline
au WinEnter * :setlocal cursorline
au WinLeave * :setlocal nocursorline
set lines=200
set lines=200
set columns=120
set columns=120

" ----------------------------------------
" printing
" ----------------------------------------

" ----------------------------------------
" messages and info
" ----------------------------------------

" ----------------------------------------
" selecting text
" ----------------------------------------
" Mapping gp to select last pasted text (like gv)
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'

" ----------------------------------------
" editing text
" ----------------------------------------
au InsertEnter * set isk+=-
au InsertLeave * set isk-=- 

" ----------------------------------------
" tabs and indenting
" ----------------------------------------
"set smartindent
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4

" ----------------------------------------
" folding
" ----------------------------------------
" Save views (fold state of buffers)
au BufWinLeave * silent! mkview
au BufWinEnter * silent! loadview

" ----------------------------------------
" diff mode
" ----------------------------------------

" ----------------------------------------
" mapping
" ----------------------------------------
imap jj <Esc>
command W :w
noremap <C-TAB> :tabnext<CR>
noremap <C-S-TAB> :tabprev<CR>
noremap <Left> :bp!<CR>
noremap <Right> :bn!<CR>
map <F1> :NERDTreeToggle<CR>
command Bdall :bufdo bd
map ,cd :cd %:p:h<CR>

" ----------------------------------------
" reading and writing files
" ----------------------------------------
set backupdir=$VIMRUNTIME/temp/
set directory=$VIMRUNTIME/temp/
set nobackup
set nowritebackup

" ----------------------------------------
" the swap file
" ----------------------------------------
set noswapfile

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

" Ultisnips
let g:UltiSnipsSnippetDirectories=["UltiSnips", "snippets"]
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" Zen coding
let g:user_emmet_leader_key = '<c-m>'

" Ack
let g:ackprg="/usr/local/bin/ack -H --nocolor --nogroup --column"

" CtrlP config
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_extensions = ['dir']
let g:ctrlp_custom_ignore = '_site'
nmap ,f :CtrlP<CR>
nmap ,b :CtrlPBuffer<CR>

" Source: https://github.com/kien/ctrlp.vim/issues/280
let g:ctrlp_buffer_func = { 'enter': 'MyCtrlPMappings' }

func! MyCtrlPMappings()
    nnoremap <buffer> <silent> <c-@> :call <sid>DeleteBuffer()<cr>
endfunc

func! s:DeleteBuffer()
    let line = getline('.')
    let bufid = line =~ '\[\d\+\*No Name\]$' ? str2nr(matchstr(line, '\d\+'))
        \ : fnamemodify(line[2:], ':p')
    exec "bd" bufid
    exec "norm \<F5>"
endfunc

" JumpToCSS config
nnoremap ,jc :JumpToCSS<CR>
let g:jumptocss_autoclose = 1

" Indent Guides configuration
let g:indent_guides_color_change_percent = 2 
