if exists("b:current_syntax")
		finish
endif

" Keywords
syntax keyword arkKeyword set let mut 
syntax keyword arkKeyword fun while begin if
syntax keyword arkKeyword import quote del

" Buildtins
	" IO
	syntax keyword arkFunction print puts_ input
	syntax keyword arkFunction writeFile readFile
	syntax keyword arkFunction fileExists listFiles isDirectory makeDir removeFiles

" Highlighting
highlight link arkKeyword Keyword
highlight link arkFunction Function

let b:current_syntax = "ark"
