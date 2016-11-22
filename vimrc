
" General {{{
"===============================================================

    " inoremap df <esc>
    set nocompatible                " required for a bunch of reasons
    syntax enable                   " enable syntax processing
    set wildmenu                    " visual autocomplete for command menu
    set lazyredraw                  " redraw only when we need to.

    " Swap : and ; to make colon commands easier to type
    nnoremap  ;  :
    nnoremap  :  ;


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

" Appearance {{{
"===============================================================

    colorscheme vice
    "set number                      " show line numbers
    set showcmd                     " show command in bottom bar
    set cursorline                  " highlights line number that cursor is on
    set showmatch                   " highlight matching [{()}]
    set incsearch                   " search as characters are entered
    set hlsearch                    " highlight matches
    set t_Co=256                    " use 256 colors 

    " highlight 81st column of wide lines
    highlight ColorColumn ctermbg=magenta
    call matchadd('ColorColumn', '\%81v', 100)


"===============================================================
" }}}

" Navigation {{{
"===============================================================

    " move to beginning of line
    nnoremap B ^
    nnoremap ^ <nop>

    " move to end of line
    nnoremap E $
    nnoremap $ <nop>

    " prevent cursor from skipping over wrapped line
    nnoremap j gj
    nnoremap k gk

"===============================================================
" }}}

" Formatting {{{
"===============================================================

    set tabstop=4                   " number of visual spaces per TAB
    set softtabstop=4               " number of spaces in tab when editing
    set shiftwidth=4                " number of spaces inserted per tab
    set expandtab                   " tabs are spaces
    filetype indent on              " load filetype-specific indent files

    " Make tabs, trailing whitespace, and non-breaking spaces visible
    exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
    set list

"===============================================================
" }}}

" Folding {{{
"===============================================================

    " foldmethod=marker               " fold by markers rather than indent
    " foldlevel=0                     " fold by default 

    set modelines=1                 " only do this for this file
    set foldenable                  " enable folding
    set foldlevelstart=10           " open most folds by default
    set foldnestmax=10              " 10 nested fold max

    " use space to open/close folds
    nnoremap <space> za
    set foldmethod=indent           " fold based on indent level
    :hi Folded ctermbg=DarkBlue


"===============================================================
" }}}

" Extras {{{
"===============================================================

    " <Ctrl-l> redraws the screen and removes any search highlighting.
    nnoremap <silent> <C-l> :nohl<CR><C-l>

    " let mapleader=","
    " toggle gundo
    " https://github.com/sjl/gundo.vim
    " nnoremap <leader>u :GundoToggle<CR>

    " Always show statusline
    set laststatus=2
    set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

"===============================================================
" }}}

" vim:foldmethod=marker:foldlevel=0
