highlight ColorColumn ctermbg=none

if exists("b:current_syntax")
  finish
endif

"----------------------------------------------------------------/
" Regex for capitalized words, add your own matches here:

" headers
syn match blue '^###.*$'
syn match blue '^##.*$'
syn match blue '^#.*$'
syn match teal '^\~\~\~.*$'

" comments
syn match grey '\/\/.*$'

" code
syntax region pink start=/\v`/ skip=/\v\\./ end=/\v`/
syn match pink '^\$.*$'

" strings
syntax region orange start=/\v"/ skip=/\v\\./ end=/\v"/
" syntax region orange start=/\v'/ skip=/\v\\./ end=/\v'/

"----------------------------------------------------------------------------/
"  Setup syntax highlighting
"----------------------------------------------------------------------------/
"
let b:current_syntax = "text"

hi def link blue        Function 
hi def link white       Statement
hi def link orange      Constant
hi def link grey        Comment
hi def link teal        Operator
hi def link pink        PreProc

" Choose other options to get a different colour:
" Valid options: Comment Constant Function Keyword Operator PreProc Repeat Special Statement Type Typedef
