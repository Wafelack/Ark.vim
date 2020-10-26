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

	" List
	syntax keyword arkFunction reverseList findInList removeAtList sliceList
	syntax keyword arkFunction sort_ fill setListAt

	" Mathematics
	syntax keyword arkFunction exponential logarithm ceil_ floor_ round_ isnan_
	syntax keyword arkFunction isinf_ 
	syntax keyword arkFunction cos_ sin_ tan_ acos_ asin_ atan_

	" String
	syntax keyword arkFunction format findSubStr removeAtStr

	" System
	syntax keyword arkFunction system_ sleep

	" Time
	syntax keyword arkFunction timeSinceEpoch

" Comments
syntax match arkComment "\v#.*$" " Matching comments with a regex

" Operators
syntax match arkOperator "\v\*"
syntax match arkOperator "\v/"
syntax match arkOperator "\v\+"
syntax match arkOperator "\v-"
syntax match arkOperator "\v\?"
syntax match arkOperator "\v\*\="
syntax match arkOperator "\v/\="
syntax match arkOperator "\v\+\="
syntax match arkOperator "\v-\="

" Highlighting
highlight link arkKeyword Keyword
highlight link arkFunction Function
highlight link arkComment Comment
highlight link arkOperator Operator

let b:current_syntax = "ark"
