if !exists("g:ark_complete")
  let g:ark_complete = "$HOME/.vim/bundle/ark.vim/ark-dict"
endif

autocmd FileType ark set complete+=g:ark_complete
