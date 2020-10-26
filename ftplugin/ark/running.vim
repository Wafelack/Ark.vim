if !exists("g:ark_command")
	let g:ark_command = "ark"
endif

if !exists("g:ark_run_map")
	let g:ark_run_map = "<localleader>r"
endif

function! ArkCompileAndRunFile() abort
	silent !clear
	execute "!" . g:ark_command . " " . expand("%")
endfunction

exec "nnoremap <buffer> " . g:ark_run_map . " :call ArkCompileAndRunFile()<cr>"
