set nocompatible
filetype on

" Dein stuff

set runtimepath+=/home/alok/.vim/bundle/repos/github.com/Shougo/dein.vim
" Required:
call dein#begin('/home/alok/.vim/bundle/')

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('tpope/vim-fugitive')
call dein#add('SimpylFold')
call dein#add('othree/html5.vim')
call dein#add('scheakur/vim-scheakur')
call dein#add('Valloric/YouCompleteMe')

" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------

filetype plugin indent on

syntax enable
set autoindent

set guifont=Liberation\ Mono\ 10
colorscheme ron
" set background=light

" set background=dark
if has("gui_running")
    " colorscheme scheakur
    set background=dark
endif

set number

set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

autocmd FileType html,xml set shiftwidth=2 softtabstop=2
autocmd FileType matlab set ft=octave

set cinoptions+=g0
autocmd FileType c,cpp set foldmethod=syntax

" Cool tab completion stuff
" set wildmenu
" set wildmode=list:longest,full

set ignorecase
set smartcase
set incsearch

set hidden
set wildmenu
set wildmode=longest:full,full

set whichwrap+=<,<,h,l,[,]

let g:clipbrdDefaultReg = '+'

nnoremap <silent> <C-j> <C-w>j
nnoremap <silent> <C-k> <C-w>k
nnoremap <silent> <C-h> <C-w>h
nnoremap <silent> <C-l> <C-w>l
nnoremap <space> za
nnoremap <silent> j gj
nnoremap <silent> k gk
nnoremap <silent> gn :bn<CR>
nnoremap <silent> gp :bp<CR>

command Gup :Git up

" YouCompleteMe stuff
let g:ycm_global_ycm_extra_conf = "~/ycm_template.py"
let g:ycm_extra_conf_globlist = ['/home/alok/Programming/*']
let g:ycm_autoclose_preview_window_after_insertion = 1
