" Setup {{{
"===============================================================
    let g:python_host_prog = '/usr/local/bin/python'
    let g:python2_host_prog = '/usr/local/bin/python2'
    let g:python3_host_prog = '/usr/local/bin/python3'
"===============================================================
" }}}"

" Vim-Plug {{{
"===============================================================
    call plug#begin('~/.local/share/nvim/plugged')

        Plug 'mhartington/oceanic-next'
        Plug 'drewtempelmeyer/palenight.vim'
        Plug 'itchyny/lightline.vim'
        Plug 'tpope/vim-surround'
        Plug 'tpope/vim-commentary'
        Plug 'tpope/vim-repeat'
        Plug 'tpope/vim-fugitive'
        Plug 'scrooloose/nerdtree'
        Plug 'Xuyuanp/nerdtree-git-plugin'
        Plug 'airblade/vim-gitgutter'
        Plug 'airblade/vim-rooter'
        Plug 'flazz/vim-colorschemes'
        Plug 'svermeulen/vim-easyclip'
        Plug 'Shougo/deoplete.nvim'
        if has('nvim')
          Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
        else
          Plug 'Shougo/deoplete.nvim'
          Plug 'roxma/nvim-yarp'
          Plug 'roxma/vim-hug-neovim-rpc'
        endif
        let g:deoplete#enable_at_startup = 1

    call plug#end()
    " PlugInstall
    " PlugUpdate
    " PlugClean
    " UpdateRemotePlugins
    " checkhealth
"===============================================================
" }}}

" Ag {{{
"===============================================================
    " The Silver Searcher
    if executable('ag')
      " Use ag over grep
      set grepprg=ag\ --nogroup\ --nocolor

      " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
      let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

      " ag is fast enough that CtrlP doesn't need to cache
      let g:ctrlp_use_caching = 0
    endif
"===============================================================
" }}}

" Nerdtree {{{
"===============================================================
    let NERDTreeAutoDeleteBuffer = 1
    let NERDTreeMinimalUI = 1
    let NERDTreeDirArrows = 1

    let NERDTreeShowHidden = 0
    let NERDTreeIgnore = ['\.pyc$', 'node_modules']

    " start nerdtree automatically
    autocmd VimEnter * NERDTree

    " start nerdtree even if no file was specified
    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

    " allow closing if only thing left is nerdtree
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
    let g:NERDTreeWinSize = 16

    " set focus to vim not nerdtree unless no file was opened
    autocmd VimEnter * if argc() | wincmd p | endif
"===============================================================
" }}}

" Lightline {{{
"===============================================================
    let g:lightline = {
          \ 'colorscheme': 'wombat',
          \ 'active': {
          \   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ], ['ctrlpmark'] ],
          \   'right': [ [ 'syntastic' ]]
          \ },
          \ 'component_function': {
          \   'fugitive': 'LightlineFugitive',
          \   'filename': 'LightlineFilename',
          \   'mode': 'LightlineMode',
          \   'ctrlpmark': 'CtrlPMark',
          \ },
          \ 'component_expand': {
          \   'syntastic': 'SyntasticStatuslineFlag',
          \ },
          \ 'component_type': {
          \   'syntastic': 'error',
          \ },
         \ 'separator': { 'left': '', 'right': '' },
          \ 'subseparator': { 'left': '', 'right': '' },
          \ }

    function! LightlineModified()
      return &ft =~ 'help' ? '' : &modified ? '+' : &modifiable ? '' : '-'
    endfunction

    function! LightlineReadonly()
      return &ft !~? 'help' && &readonly ? 'RO' : ''
    endfunction

    function! LightlineFilename()
      let fname = expand('%:p')
      return fname == 'ControlP' && has_key(g:lightline, 'ctrlp_item') ? g:lightline.ctrlp_item :
            \ fname == '__Tagbar__' ? g:lightline.fname :
            \ fname =~ '__Gundo\|NERD_tree' ? '' :
            \ &ft == 'vimfiler' ? vimfiler#get_status_string() :
            \ &ft == 'unite' ? unite#get_status_string() :
            \ &ft == 'vimshell' ? vimshell#get_status_string() :
            \ ('' != LightlineReadonly() ? LightlineReadonly() . ' ' : '') .
            \ ('' != fname ? fname : '[No Name]') .
            \ ('' != LightlineModified() ? ' ' . LightlineModified() : '')
    endfunction

    function! LightlineFugitive()
      try
        if expand('%:t') !~? 'Tagbar\|Gundo\|NERD' && &ft !~? 'vimfiler' && exists('*fugitive#head')
          let mark = ''  " edit here for cool mark
          let branch = fugitive#head()
          return branch !=# '' ? mark.branch : ''
        endif
      catch
      endtry
      return ''
    endfunction

    function! LightlineMode()
      let fname = expand('%:t')
      return fname == '__Tagbar__' ? 'Tagbar' :
            \ fname == 'ControlP' ? 'CtrlP' :
            \ fname == '__Gundo__' ? 'Gundo' :
            \ fname == '__Gundo_Preview__' ? 'Gundo Preview' :
            \ fname =~ 'NERD_tree' ? 'NERDTree' :
            \ &ft == 'unite' ? 'Unite' :
            \ &ft == 'vimfiler' ? 'VimFiler' :
            \ &ft == 'vimshell' ? 'VimShell' :
            \ winwidth(0) > 60 ? lightline#mode() : ''
    endfunction

    function! CtrlPMark()
      if expand('%:t') =~ 'ControlP' && has_key(g:lightline, 'ctrlp_item')
        call lightline#link('iR'[g:lightline.ctrlp_regex])
        return lightline#concatenate([g:lightline.ctrlp_prev, g:lightline.ctrlp_item
              \ , g:lightline.ctrlp_next], 0)
      else
        return ''
      endif
    endfunction

    let g:ctrlp_status_func = {
      \ 'main': 'CtrlPStatusFunc_1',
      \ 'prog': 'CtrlPStatusFunc_2',
      \ }

    function! CtrlPStatusFunc_1(focus, byfname, regex, prev, item, next, marked)
      let g:lightline.ctrlp_regex = a:regex
      let g:lightline.ctrlp_prev = a:prev
      let g:lightline.ctrlp_item = a:item
      let g:lightline.ctrlp_next = a:next
      return lightline#statusline(0)
    endfunction

    function! CtrlPStatusFunc_2(str)
      return lightline#statusline(0)
    endfunction

    let g:tagbar_status_func = 'TagbarStatusFunc'

    function! TagbarStatusFunc(current, sort, fname, ...) abort
        let g:lightline.fname = a:fname
      return lightline#statusline(0)
    endfunction

    augroup AutoSyntastic
      autocmd!
      autocmd BufWritePost *.c,*.cpp call s:syntastic()
    augroup END
    function! s:syntastic()
      SyntasticCheck
      call lightline#update()
    endfunction

    let g:unite_force_overwrite_statusline = 0
    let g:vimfiler_force_overwrite_statusline = 0
    let g:vimshell_force_overwrite_statusline = 0
"===============================================================
" }}}

" Deoplete {{{
"===============================================================
    " Close the documentation window when completion is done
    autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
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

" General {{{
"===============================================================
    syntax enable           " enable syntax processing
    set wildmenu            " visual autocomplete for command menu
    set lazyredraw          " redraw only when we need to.
    set hidden
    set history=100
    let mapleader=" "

    " mouse support
    if has('mouse') | set mouse=a | endif

    " ignore swp files
    set nobackup
    set nowb
    set noswapfile

    " Ignore compiled files
    set wildignore=*.o,*~,*.pyc,*.a
    set wildignore=*.bmp,*.gif,*.ico,*.jpg,*.png
    set wildignore=*.git
"===============================================================
" }}}

" Appearance {{{
"===============================================================

    if (has("nvim"))
      "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
      let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    endif

    "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
    "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
    " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
    if (has("termguicolors"))
      set termguicolors
    endif

    try
        colorscheme palenight
        " colorscheme Tomorrow-Night-Eighties
        " colorscheme OceanicNext
    catch
        colorscheme desert
    endtry

    let g:palenight_terminal_italics=1

    set encoding=UTF-8

    " set relativenumber              " show relative line numbers
    set number
    set showcmd                     " show command in bottom bar
    set cursorline                  " highlights line number that cursor is on
    set showmatch                   " highlight matching [{()}]
    set t_Co=256                    " use 256 colors
    set laststatus=2                " Always show statusline

    " highlight 80th column of wide lines
    highlight ColorColumn ctermbg=magenta
    call matchadd('ColorColumn', '\%81v', 81)
"===============================================================
" }}}

" Folding {{{
"===============================================================
    set modelines=1                 " only do this for this file
    set foldenable                  " enable folding
    set foldlevelstart=10           " open most folds by default
    set foldnestmax=10              " 10 nested fold max
    set foldmethod=indent           " fold based on indent level
"===============================================================
" }}}

" Formatting {{{
"===============================================================
    filetype plugin indent on       " load filetype-specific indent files
    filetype plugin on
    set expandtab                   " tabs are spaces
    set shiftwidth=4                " number of spaces inserted per tab
    set softtabstop=4               " number of spaces in tab when editing
    " set autoindent                  " copies indentation from prev line
    set wrap

    " Make tabs, trailing whitespace, and non-breaking spaces visible
    exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
    set list

    " vimdiff wrap lines
    autocmd FilterWritePre * if &diff | setlocal wrap< | endif
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

    " Swap : and ; to make commands easier to type
    nnoremap  ;  :
    nnoremap  :  ;

    " allows moving up/down wrapped lines more naturally
    nnoremap j gj
    nnoremap k gk

    " remove search highlights
    nnoremap <silent> <C-l> :nohl<CR><C-l>

    " save
    map <leader>w ;w<cr>
    " save and quit
    map <leader>q ;wq<cr>
    " open/close fold
    map <leader>l za<cr>

    " Copy to clipboard
    vnoremap  <leader>y "+y
    nnoremap  <leader>Y "+yg_
    nnoremap  <leader>y "+y
    nnoremap  <leader>yy "+yy

    " Paste from clipboard
    nnoremap <leader>p "+p
    nnoremap <leader>P "+P
    vnoremap <leader>p "+p
    vnoremap <leader>P "+P

    " insert empty line below
    map <leader>j o<esc>cc<esc>kk<cr>
    " insert empty line above
    map <leader>k O<esc>cc<esc><cr>

    " open nerdtree
    map <leader>t ;NERDTreeToggle<CR>
    " use t instead of m to get the file creation menu
    let NERDTreeMapMenu='t'
    nmap <Leader>r ;NERDTreeFocus<cr>R<c-w><c-p>

    " use tab to switch between brace pairs
    nnoremap <tab> %
    vnoremap <tab> %

    inoremap <F1> <ESC>
    nnoremap <F1> <ESC>
    vnoremap <F1> <ESC>

    " move up/down faster
    nnoremap <C-j> 4j
    nnoremap <C-k> 4k

    " nnoremap o o<ESC>i

    " grep for word under cursor
    :nnoremap <leader>* :silent execute "grep! -R " . shellescape(expand("<cWORD>")) . " ."<cr>:copen<cr>

    " bind \ (backward slash) to ag shortcut
    command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
    nnoremap \ :Ag<SPACE>

    " jump to end of line without hitting shift
    nnoremap 2 $

"===============================================================
" }}}

" Searching {{{
"===============================================================
    set ignorecase                  " ignore case when searching
    set smartcase
    set incsearch                   " search as characters are entered
    set hlsearch                    " highlight matches
    set magic                       " for regex
    set gdefault                    " find and replace global 
"===============================================================
" }}}

" vim:foldmethod=marker:foldlevel=0
