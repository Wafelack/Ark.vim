if !exists("g:ark_command")
	let g:ark_command = "ark"
endif

function! ArkCompileAndRunFile()
	silent !clear
	execute "!" . g:ark_command . " " . expand("%")
endfunction

nnoremap <buffer> <localleader>r :call ArkCompileAndRunFile()<cr>
