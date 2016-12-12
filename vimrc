
" Vundle {{{
"===============================================================

    " Plug ins to try
    "   surround
    "   commentary
    "   youcompleteme
    "   nerdtree

    set nocompatible              " be iMproved, required
    filetype off                  " required

    " set the runtime path to include Vundle and initialize
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()

    Plugin 'VundleVim/Vundle.vim'
    Plugin 'itchyny/lightline.vim'
    Plugin 'tpope/vim-surround'

    " to install add line in vimrc, :PluginInstall
    " to delete: remove line in vimrc, :PluginUpdate
    call vundle#end()            " required

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

" General {{{
"===============================================================

    "set nocompatible                " required for a bunch of reasons
    syntax enable                   " enable syntax processing
    set wildmenu                    " visual autocomplete for command menu
    set lazyredraw                  " redraw only when we need to.
    set encoding=UTF-8

    " Swap : and ; to make colon commands easier to type
    nnoremap  ;  :
    nnoremap  :  ;
    imap jj <Esc>

"===============================================================
" }}}

" Editing {{{
"===============================================================

    " Swap v and CTRL-V, because Block mode is more useful that Visual mode
    nnoremap    v   <C-V>
    nnoremap <C-V>     v
    vnoremap    v   <C-V>
    vnoremap <C-V>     v

"===============================================================
" }}}

" Autocorrect {{{
"===============================================================

    :ab teh the
    :ab syspl System.out.println

"===============================================================
" }}}

" Appearance {{{
"===============================================================

    colorscheme vice
    set relativenumber              " show line numbers
    set number
    set showcmd                     " show command in bottom bar
    set cursorline                  " highlights line number that cursor is on
    set showmatch                   " highlight matching [{()}]
    set incsearch                   " search as characters are entered
    set hlsearch                    " highlight matches
    set t_Co=256                    " use 256 colors 

    " highlight 81st column of wide lines
    highlight ColorColumn ctermbg=magenta
    call matchadd('ColorColumn', '\%81v', 100)

    " no-text area transparent
    hi Normal ctermbg=none
    highlight NonText ctermbg=none

"===============================================================
" }}}

" Navigation {{{
"===============================================================

    " prevent cursor from skipping over wrapped line
    nnoremap j gj
    nnoremap k gk

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

    " Make tabs, trailing whitespace, and non-breaking spaces visible
    exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
    set list

"===============================================================
" }}}

" Folding {{{
"===============================================================

    set modelines=1                 " only do this for this file
    set foldenable                  " enable folding
    set foldlevelstart=10           " open most folds by default
    set foldnestmax=10              " 10 nested fold max

    " use space to open/close folds
    nnoremap <space> za
    set foldmethod=indent           " fold based on indent level
    :hi Folded ctermbg=DarkBlue     " color of folded lines

"===============================================================
" }}}

" Extras {{{
"===============================================================

    " remove search highlights
    nnoremap <silent> <C-l> :nohl<CR><C-l>

    " keep more info in mem to speed up
    set hidden
    set history=100
    "let mapleader=" "

    " Always show statusline
    set laststatus=2
    set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

"===============================================================
" }}}

" vim:foldmethod=marker:foldlevel=0
