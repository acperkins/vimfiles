silent! runtime bundle/vim-pathogen/autoload/pathogen.vim
silent! execute pathogen#infect()

autocmd BufRead,BufNewFile *.md set filetype=markdown
command Q q
command W w
command WQ wq
inoremap <down>  <nop>
inoremap <left>  <nop>
inoremap <right> <nop>
inoremap <up>    <nop>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>
nmap <silent> <A-Up> :wincmd k<CR>
nnoremap <down>  <nop>
nnoremap <left>  <nop>
nnoremap <right> <nop>
nnoremap <up>    <nop>
set autoindent
set background=dark
set colorcolumn=73
set cursorcolumn
set cursorline
set directory=$TEMP//,/tmp//,.
set encoding=utf-8
set expandtab
set guioptions=cr
set ignorecase
set linebreak
set list
set modelines=0
set number
set omnifunc=syntaxcomplete#Complete
set printoptions=paper:A4,duplex:off,header:0
set relativenumber
set ruler
set shiftwidth=4
set smartcase
set spl=en_gb nospell
set tabstop=4
set textwidth=72
set ttyfast
set wrap
silent! colorscheme desert
silent! filetype plugin indent on
silent! syntax on

if has("gui_running")
    if has("gui_gtk2")
        set guifont=Monoid\ 9
    elseif has("gui_win32")
        set guifont=Monoid:h9:cANSI
    endif

    set columns=88
    set lines=40

    try
        colorscheme jellybeans
    catch /^Vim\%((\a\+)\)\=:E185/
        colorscheme darkblue
    endtry

endif
