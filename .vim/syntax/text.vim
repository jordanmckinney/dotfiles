highlight ColorColumn ctermbg=none

if exists("b:current_syntax")
  finish
endif

"----------------------------------------------------------------/
" Regex for capitalized words, add your own matches here:
syn match keyWord '\ [A-Z]\w\w*'
syn match keyWord '^[A-Z]\w*'
syn match headerTitle1 '^###.*$'
syn match headerTitle2 '^\*\*\*.*$'
syn match textComment '\/\/.*$'
"----------------------------------------------------------------------------/
"  Setup syntax highlighting
"----------------------------------------------------------------------------/
"
let b:current_syntax = "text"

hi def link keyWord             Constant
hi def link headerTitle1        Statement
hi def link headerTitle2        Type
hi def link textComment         Comment

" Choose other options to get a different colour:
" Valid options: Comment Constant Function Keyword Operator PreProc Repeat Special Statement Type Typedef

" pink: Constant
" blue: Statement
" green: Type
" grey: comment
