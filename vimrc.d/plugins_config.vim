"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => FZF Vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }

" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => CTRL-P
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_map = ''
let g:ctrlp_root_markers = ['.ctrlp', '.svn', '.git']
" find all
nnoremap <leader>fa :CtrlPMixed<cr>
" find file
nnoremap <leader>ff :CtrlP<cr>
" find buffer
nnoremap <leader>fb :CtrlPBuffer<cr>
" find MRU
nnoremap <leader>fr :CtrlPMRU<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "left"
let NERDTreeShowHidden = 0
let g:NERDTreeWinSize = 35
let NERDTreeShowBookmarks = 1
"map <leader>nn :NERDTreeToggle<cr>
map <leader>nf :NERDTreeFind<cr>
map <F4> :NERDTreeToggle<cr>

" Close NERDTree if it is the last window
augroup nerd_tree
  autocmd!
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
augroup END


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git gutter (Git diff)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gitgutter_enabled=0
nnoremap <silent> <leader>g :GitGutterToggle<cr>
" [c previous hunk
" ]c next hunk
" <leader>hu hunk undo
" <leader>hs hunk stage
" <leader>hp hunk preview

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline#extensions#tabline#enabled = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Yankstack
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:yankstack_map_keys = 0
nmap <leader>p <Plug>yankstack_substitute_older_paste
nmap <leader>P <Plug>yankstack_substitute_newer_paste
call yankstack#setup()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Multicursor
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:multi_cursor_start_word_key = '<leader>m'
"let g:multi_cursor_next_key='<C-n>'
"let g:multi_cursor_prev_key='<C-p>'
"let g:multi_cursor_skip_key='<C-x>'
"let g:multi_cursor_quit_key='<Esc>'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colorscheme-Switcher
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:colorscheme_switcher_define_mappings = 0
"nnoremap <silent> <C-F12> :RandomColorScheme<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Expand-Region
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap + v
vmap - <Plug>(expand_region_shrink)
vmap + <Plug>(expand_region_expand)


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tagbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <F2> :TagbarToggle<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Ag/Ack
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <Leader>aa :Ack! <cword><cr>
noremap <Leader>a :Ack!<space>
vnoremap <Leader>aa y:Ack! <C-r>=fnameescape(@")<CR><CR>
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --vimgrep
  let g:ackprg = 'ag --vimgrep'
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => BufferOnly
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <Leader>bo :Bonly<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => SuperTab
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:SuperTabDefaultCompletionType = 'context'
augroup supertab
  autocmd!
  autocmd FileType *
        \ if &omnifunc != '' |
        \   call SuperTabChain(&omnifunc, "<c-p>") |
        \ endif
augroup END


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Unimpaired
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ]b :bnext
" [b :brevious
" ]l :lnext
" [l :lprevious
" ]q :qnext
" [q :qprevious
" yo Insert Mode with paste set

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Unimpaired
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:vim_textobj_parameter_mapping = 'a'


