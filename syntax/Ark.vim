if exists("b:current_syntax")
		finish
endif

syntax keyword arkKeyword set let mut 
syntax keyword arkKeyword fun while begin if
syntax keyword arkKeyword import quote del
highlight link arkKeyword Keyword

let b:current_syntax = "ark"
