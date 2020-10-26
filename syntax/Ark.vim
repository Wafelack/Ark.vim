if exists("b:current_syntax")
		finish
endif

" Keywords
syntax keyword arkKeyword set let mut 
syntax keyword arkKeyword fun while begin if
syntax keyword arkKeyword import quote del

" Buildtins
	" IO
	syntax keyword arkFunction print puts input
	syntax keyword arkFunction io:writeFile io:readFile
	syntax keyword arkFunction io:fileExists? io:listFiles io:isDirectory io:makeDir io:removeFiles io:dir?

	" List
	syntax keyword arkFunction list:reverse list:find list:removeAt list:slice
	syntax keyword arkFunction list:sort list:fill list:setAt

	" Mathematics
	syntax keyword arkFunction math:exp math:ln math:ceil math:floor math:round math:NaN? math:Inf?
	syntax keyword arkFunction isinf_ 
	syntax keyword arkFunction math:cos math:sin math:tan math:arccos math:arcsin math:arctan

	syntax keyword arkConstant math:pi math:e math:tau math:Inf math:NaN

	" String
	syntax keyword arkFunction str:format str:find str:removeAt

	" System
	syntax keyword arkFunction sys:exec sys:sleep

	" Time
	syntax keyword arkFunction time

" Comments
syntax match arkComment "\v#.*$" " Matching comments with a regex

" Operators
syntax match arkOperator "\v\=" " =
syntax match arkOperator "\v\*" " *
syntax match arkOperator "\v/" " /
syntax match arkOperator "\v\+" " +
syntax match arkOperator "\v-" " -
syntax match arkOperator "\v\@" " @
syntax match arkOperator "\v\<" " <
syntax match arkOperator "\v\>" " >
syntax match arkOperator "\v\<\=" " <=
syntax match arkOperator "\v\>\=" " >=
syntax match arkOperator "\v\^" " ^
syntax match arkOperator "\v!\=" " !=
syntax keyword arkOperator len empty? firstOf tailOf headOf
syntax keyword arkOpeator nil? assert toNumber toString and or mod type hasField not

" Numbers
syntax match arkNumber "[0-9]" " From 0 to 9

" Strings
syntax region arkString start=/\v"/ skip=/\v\\./ end=/\v"/
syntax region arkString start=/\v'/ skip=/\v\\./ end=/\v'/

" Constants
syntax keyword arkConstant false true nil

" Highlighting
highlight link arkNumber Number
highlight link arkKeyword Keyword
highlight link arkFunction Function
highlight link arkComment Comment
highlight link arkOperator Operator
highlight link arkString String
highlight link arkConstant Constant

let b:current_syntax = "ark"
