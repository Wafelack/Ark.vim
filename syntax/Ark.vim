if exists("b:current_syntax")
		finish
endif

syntax keyword potionKeyword let mut  
highlight link potionKeyword Keyword

let b:current_syntax = "ark"
