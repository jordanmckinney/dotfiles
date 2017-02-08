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
syn match commandLine '\$.*$'
syn match codeLine '`.*`'
syn match quoteText '".*"'
syn match keyWord '^\'.*\' '
syn match keyWord ' \'.*\' '

"----------------------------------------------------------------------------/
"  Setup syntax highlighting
"----------------------------------------------------------------------------/
"
let b:current_syntax = "text"

hi def link headerTitle1        Function
hi def link headerTitle2        Statement
hi def link headerTitle3        Constant
hi def link textComment         Comment
hi def link commandLine         Keyword
hi def link codeLine            Keyword
hi def link quoteText           Special

" Choose other options to get a different colour:
" Valid options: Comment Constant Function Keyword Operator PreProc Repeat Special Statement Type Typedef

" red: Statement
" orange: Constant
" yellow: Repeat
" green: Special
" blue: Function
" purple: Keyword
" grey: Comment
