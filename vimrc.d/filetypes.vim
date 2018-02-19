""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vimrc section
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup reload_vimrc
  autocmd!
  autocmd BufWritePost $MYVIMRC source $MYVIMRC
  autocmd BufWritePost *.vim source $MYVIMRC
augroup END


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => CSS section
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup css_filetype
  autocmd!
  autocmd FileType css set omnifunc=csscomplete#CompleteCSS
augroup END


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Ruby section
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"augroup ruby_filetype
"  autocmd!
"  au FileType ruby setl shiftwidth=2 tabstop=2 et
"augroup END


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => HTML section
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"augroup html_filetype
"  autocmd!
"  au FileType html setl shiftwidth=2 tabstop=2 et
"augroup END


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => eRuby section
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"augroup eruby_filetype
"  autocmd!
"  au FileType eruby setl shiftwidth=2 tabstop=2 et
"augroup END


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => gitcommit section
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup gitcommit_filetype
  autocmd!
  au FileType gitcommit call setpos('.', [0, 1, 1, 0])
  au FileType gitcommit execute "normal o\<C-C>k"
  au FileType gitcommit startinsert
augroup END

