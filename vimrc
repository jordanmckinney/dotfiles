
" Vundle {{{
"===============================================================

    " Plug ins to try
    " youcompleteme
    " nerdtree

    set nocompatible              " be iMproved, required
    filetype off                  " required

    " enable filetype plugins
    filetype plugin on

    " set the runtime path to include Vundle and initialize
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()

    Plugin 'VundleVim/Vundle.vim'

    " just like airline or powerline
    Plugin 'itchyny/lightline.vim'

    " allows easy surround of word/line with quotes/brackets etc
    Plugin 'tpope/vim-surround'

    " allows easy commenting out of lines/blocks
    Plugin 'tpope/vim-commentary'

    " :PluginInstall
    " :PluginUpdate

    call vundle#end()

"===============================================================
" }}}

" Lightline {{{
"===============================================================

    let g:lightline = {
          \ 'colorscheme': 'wombat',
          \ 'component': {
          \   'readonly': '%{&readonly?"":""}',
          \ },
          \ 'separator': { 'left': '', 'right': '' },
          \ 'subseparator': { 'left': '', 'right': '' }
          \ }

"===============================================================
" }}}

" Commentary {{{
"===============================================================

    autocmd FileType py setlocal commentstring=#\ %s
    autocmd FileType js setlocal commentstring=//\ %s
    autocmd FileType c setlocal commentstring=//\ %s
    autocmd FileType java setlocal commentstring=//\ %s

"===============================================================
" }}}


" Appearance {{{
"===============================================================

    try
        colorscheme vice
    catch
        colorscheme desert
    endtry

    set encoding=UTF-8
    set relativenumber              " show line numbers
    set number
    set showcmd                     " show command in bottom bar
    set cursorline                  " highlights line number that cursor is on
    set showmatch                   " highlight matching [{()}]
    set t_Co=256                    " use 256 colors 

    " highlight 81st column of wide lines
    highlight ColorColumn ctermbg=magenta
    call matchadd('ColorColumn', '\%81v', 100)

    " no-text area transparent
    hi Normal ctermbg=none
    highlight NonText ctermbg=none

"===============================================================
" }}}

" Autocorrect {{{
"===============================================================

    :ab teh the
    :ab syspl System.out.println

"===============================================================
" }}}

" Backup {{{
"===============================================================

    set nobackup
    set nowb
    set noswapfile

"===============================================================
" }}}

" Extras {{{
"===============================================================

    " Always show statusline
    set laststatus=2
    set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

    " Ignore compiled files
    set wildignore=*.o,*~,*.pyc

"===============================================================
" }}}

" Folding {{{
"===============================================================

    set modelines=1                 " only do this for this file
    set foldenable                  " enable folding
    set foldlevelstart=10           " open most folds by default
    set foldnestmax=10              " 10 nested fold max

    set foldmethod=indent           " fold based on indent level
    :hi Folded ctermbg=DarkBlue     " color of folded lines

"===============================================================
" }}}

" Formatting {{{
"===============================================================

    filetype indent on              " load filetype-specific indent files
    set tabstop=4                   " number of visual spaces per TAB
    set softtabstop=4               " number of spaces in tab when editing
    set shiftwidth=4                " number of spaces inserted per tab

    set expandtab                   " tabs are spaces
    set smartindent
    set autoindent
    set wrap
    "filetype indent on

    " Make tabs, trailing whitespace, and non-breaking spaces visible
    exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
    set list

"===============================================================
" }}}

" General {{{
"===============================================================

    syntax enable                   " enable syntax processing
    set wildmenu                    " visual autocomplete for command menu
    set lazyredraw                  " redraw only when we need to.

    " keep more info in mem to speed up
    set hidden
    set history=100
    let mapleader=" "

"===============================================================
" }}}

" Remappings {{{
"===============================================================

    " Swap v and CTRL-V, because Block mode is more useful that Visual mode
    nnoremap    v   <C-V>
    nnoremap <C-V>     v
    vnoremap    v   <C-V>
    vnoremap <C-V>     v

    " saves pinky stretching
    imap jj <Esc>

    " Swap : and ; to make colon commands easier to type
    nnoremap  ;  :
    nnoremap  :  ;

    " allows moving up/down wrapped lines more naturally
    nnoremap j gj
    nnoremap k gk

    " remove search highlights
    nnoremap <silent> <C-l> :nohl<CR><C-l>

    " toggle spellcheck
    map <leader>ss ;setlocal spell!<cr>
    " save
    map <leader>w ;w<cr>
    " save and quit
    map <leader>q ;wq<cr>
    " open/close fold
    map <leader>l za<cr>
    " paste from system register
    map <leader>p "+p<cr>

"===============================================================
" }}}

" Searching {{{
"===============================================================

    set ignorecase                  " ignore case when searching
    set smartcase
    set incsearch                   " search as characters are entered
    set hlsearch                    " highlight matches
    set magic                       " for regex

"===============================================================
" }}}

" vim:foldmethod=marker:foldlevel=0
