let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'

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
call dein#add('tpope/vim-surround')
call dein#add('SimpylFold')
call dein#add('othree/html5.vim')
call dein#add('scheakur/vim-scheakur')
call dein#add('tomasr/molokai')
call dein#add('LaTex-Box-Team/LaTeX-Box')
call dein#add('gi1242/vim-tex-autoclose')
call dein#add('vim-airline/vim-airline')

call dein#add('Valloric/YouCompleteMe')
call dein#config('YouCompleteMe', {'lazy':1})

call dein#end()

filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------

" NeoBundleLazy 'Valloric/YouCompleteMe'
autocmd FileType python,c,cpp,h,javascript,rust call dein#source('YouCompleteMe')

autocmd FileType python,c,cpp,h,javascript,rust nnoremap gf :YcmCompleter Fixit<return>

filetype plugin indent on

syntax enable
set autoindent

" set background=light

set background=dark
colorscheme scheakur

set number

set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

autocmd FileType html,xml set shiftwidth=2 softtabstop=2
autocmd FileType matlab set ft=octave
" autocmd FileType tex set tw=80 cc=+1
autocmd FileType tex set linebreak breakindent

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

" LaTeX magic to make paragraph formatting respect environment delimiters
autocmd FileType tex map \gq ?^$\\|^\s*\(\\begin\\|\\end\\|\\label\)?1<CR>gq//-1<CR>
omap lp ?^$\\|^\s*\(\\begin\\|\\end\\|\\label\)?1<CR>//-1<CR>.<CR>:noh<CR>

command Gup :Git up

" YouCompleteMe stuff
let g:ycm_global_ycm_extra_conf = "~/ycm_template.py"
let g:ycm_extra_conf_globlist = ['/home/alok/Programming/*']
let g:ycm_autoclose_preview_window_after_insertion = 1
