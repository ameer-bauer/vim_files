" Vim Syntax File
" Language: Error Log Files
" Author: Ameer Bauer
" Revision Date: 2016-02-20

if exists("b:current_syntax")
  finish
endif

" Define some matching regular expressions to highlight the entire line
syn match LogError "\(^\|.*\A\)ERRS\?\(ORS\?\(\A\|$\)\|\(\A\|$\)\).*\c"
syn match LogWarning "\(^\|.*\A\)WA\?RNS\?\(INGS\?\(\A\|$\)\|\(\A\|$\)\).*\c"

let b:current_syntax = "errlog"

" Set the built-in vim highlighting groups to various matches
hi def link LogError ErrorMsg
hi def link LogWarning WarningMsg
