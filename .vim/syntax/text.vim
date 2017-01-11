highlight ColorColumn ctermbg=none

if exists("b:current_syntax")
  finish
endif

"----------------------------------------------------------------/
" Regex for capitalized words, add your own matches here:
syn match headerTitle1 '^###.*$'
syn match headerTitle2 '^\~\~\~.*$'
syn match headerTitle3 '^+++.*$'
syn match textComment '\/\/.*$'
syn match specialWord '`.*`'
"----------------------------------------------------------------------------/
"  Setup syntax highlighting
"----------------------------------------------------------------------------/
"
let b:current_syntax = "text"

hi def link headerTitle1        Function
hi def link headerTitle2        Statement
hi def link headerTitle3        Type
hi def link textComment         Comment
hi def link specialWord         Boolean

" Choose other options to get a different colour:
" Valid options: Comment Constant Function Keyword Operator PreProc Repeat Special Statement Type Typedef

" pink: Constant
" blue: Statement
" green: Type
" grey: Comment
" purple: Boolean
