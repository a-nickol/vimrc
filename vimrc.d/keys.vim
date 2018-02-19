""""""""""""""""""""""""""""""
" => Saving
""""""""""""""""""""""""""""""
" Fast saving
" @key speichert den aktuellen Buffer
nmap <leader>w :update!<cr>
" @key formatiert den Text und speichert den aktuellen Buffer
nnoremap <leader>ww :call DeleteTrailingWhiteSpaces()<cr>:call AutoformatBuffer()<cr>:update!<cr>


""""""""""""""""""""""""""""""
" => Umlaute
""""""""""""""""""""""""""""""
" @key navigiert zurück, z.B. mit [b
nmap ö [
" @key navigiert nach vorne, z.B. mit [b
nmap ä ]
" @key springt zur vorherigen Sektion
noremap Ö {
" @key springt zur nächsten Sektion
noremap Ä }


""""""""""""""""""""""""""""""
" => Movement
""""""""""""""""""""""""""""""
" Treat long lines as break lines (useful when moving around in them)
noremap j gj
noremap k gk

" Move a line of text using ALT+[jk]
" @key bewegt aktuelle Zeile nach unten
nnoremap <silent> <M-j> mz:m+<cr>`z
" @key bewegt aktuelle Zeile nach oben
nnoremap <silent> <M-k> mz:m-2<cr>`z
" @key bewegt markierte Zeile nach unten
vnoremap <silent> <M-j> :m'>+<cr>`<my`>mzgv`yo`z
" @key bewegt markierte Zeile nach oben
vnoremap <silent> <M-k> :m'<-2<cr>`>my`<mzgv`yo`z


""""""""""""""""""""""""""""""
" => Yank
""""""""""""""""""""""""""""""
" @key kopiert bis zum Ende der Zeile
nmap Y y$


""""""""""""""""""""""""""""""
" => Autoformat
""""""""""""""""""""""""""""""
" @key formatiert den aktuellen Buffer
nnoremap <leader>= gg=G``


""""""""""""""""""""""""""""""
" => Search
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" @key sucht nach der aktuellen Markierung
vnoremap <silent> * :<C-u>call VisualSelection('')<CR>/<C-R>=@/<CR><CR>
" @key sucht nach hinten nach der aktuellen Markierung
vnoremap <silent> # :<C-u>call VisualSelection('')<CR>?<C-R>=@/<CR><CR>

" Disable highlight when <leader><cr> is pressed
" @key deaktiviert die Suchmarkierung
nnoremap <silent> <leader><cr> :noh<cr>
" @key deaktiviert die Suchmarkierung
nnoremap <silent> <leader><esc> :noh<cr>

" Map <leader><Space> to / (search) and Ctrl-<Space> to ? (backwards search)
" @key sucht nach vorne
nnoremap <leader><space> /
" @key sucht nach hinten
nnoremap <leader><C-space> ?


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Replace
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" When you press <leader>r you can search and replace the selected text
" @key starte Suchen und Ersetzen für den markierten Text
vnoremap <silent> <leader>r :call VisualSelection('replace')<CR>

" Substitute in buffer
" @key startet Suchen und Ersetzen
nnoremap <leader>s :%s/

" Substitute in visual selection
" @key startet Suchen und Ersetzen
vnoremap <leader>s :s/


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Windows
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Smart way to move between windows
" @key wechselt zum Fenster nach unten
noremap <C-j> <C-W>j
" @key wechselt zum Fenster nach oben
noremap <C-k> <C-W>k
" @key wechselt zum Fenster nach links
noremap <C-h> <C-W>h
" @key wechselt zum Fenster nach rechts
noremap <C-l> <C-W>l


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Buffer
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"c-^ -> nnoremap <silent> gb :b#<cr>
" @key schließt den aktuellen Buffer
nnoremap <leader>q :bp\|bd #<CR>
" @key gibt alle Buffer aus und startet den Wechsel in einen dieser
nnoremap <leader>b :ls<CR>:b<Space>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Marker
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" @key springt zu Marker
nnoremap ´ '


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Marker
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" allow the @key to execute once for each line of a visual selection
vnoremap . :normal .<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Jump
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Jump to last edit-position `.


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tags
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" @key öffnet Tag
nnoremap ü <c-]>
" @key springt zurück
nnoremap Ü <c-o>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Indent / Unindent
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" @key rückt Text eine Spalte weiter ein
vnoremap > >gv
" @key rückt Text eine Spalte zurück
vnoremap < <gv


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" @key aktiviert deutsche Rechtschreibprüfung
nnoremap <leader>sd :setlocal spell! spelllang=de<cr>
" @key aktiviert englische Rechtschreibprüfung
nnoremap <leader>se :setlocal spell! spelllang=en<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Help / Cheat-Sheet
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" @key öffnet den Cheat-Sheet
"nnoremap <F12> :help cheat-sheet<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colorthemes
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" @key wechselt das Farbschema
nnoremap <C-F12> :call CycleThroughMyColorSchemes()<CR>

let g:my_color_schemes = [
      \["dark", "0x7A69_dark", "molokai"],
      \["dark", "256-jungle", "molokai"],
      \["dark", "behelit", "molokai"],
      \["dark", "benokai", "molokai"],
      \["dark", "desertink", "molokai"],
      \["dark", "heroku", "molokai"],
      \["dark", "ir_black", "molokai"],
      \["dark", "lizard256", "molokai"],
      \["dark", "molokai_dark", "molokai"],
      \["dark", "monokai", "molokai"],
      \["dark", "mopkai", "molokai"],
      \["dark", "rdark", "molokai"],
      \["dark", "sandydune", "molokai"],
      \["dark", "sexy-railscasts", "molokai"],
      \["dark", "sorcerer", "molokai"],
      \["dark", "ubaryd", "molokai"],
      \["dark", "vydark", "molokai"],
      \["dark", "wellsokai", "molokai"],
      \["dark", "wombat256", "molokai"],
      \["dark", "zenburn", "molokai"],
      \["light", "bclear", "light"],
      \["light", "beauty256", "light"],
      \["light", "cascadia", "light"],
      \["light", "github", "light"],
      \["light", "jaime", "light"],
      \["light", "mac_classic", "light"],
      \["light", "simple256", "light"],
      \["light", "sol-term", "light"],
      \["light", "summerfruit256", "light"]
      \]

let g:my_color_scheme = -1
function! CycleThroughMyColorSchemes()
  let g:my_color_scheme = g:my_color_scheme + 1
  let g:my_color_scheme = g:my_color_scheme % len(g:my_color_schemes)
  let next_color = g:my_color_schemes[g:my_color_scheme]
  let &background = next_color[0]
  exec "colorscheme " . next_color[1]
  let g:airline_theme = next_color[2]
  echom next_color[1]
endfunction


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Clipboard
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" @key kopiert in die Zwischenablage
"vnoremap <C-C> "*y
" @key schneidet in die Zwischenablage aus
"vnoremap <C-X> "*d
" @key fügt aus der Zwischenablage ein
"vnoremap <C-V> "-d"*P
" @key fügt aus der Zwischenablage ein
"nnoremap <C-V> "*P
" @key fügt aus der Zwischenablage ein
"inoremap <C-V> <C-R>*


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove the Windows ^M - when the encodings gets messed up
" @key entfernt die Windows Zeilenenden ^M
nnoremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Switch CWD to the directory of the open buffer
" @key wechselt das Arbeitsverzeichnis zu dem Verzeichnis des aktuellen Buffer
nnoremap <leader>cd :cd %:p:h<cr>:pwd<cr>

" @key formatiert den aktuellen Buffer
nnoremap <F10> :call DeleteTrailingWhiteSpaces()<cr>:call AutoformatBuffer()<cr>
" @key entfernt Leerzeichen am Ende der Zeilen
nnoremap <C-F10> :call DeleteTrailingWhiteSpaces()<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! CmdLine(str)
  exe "menu Foo.Bar :" . a:str
  emenu Foo.Bar
  unmenu Foo
endfunction

function! VisualSelection(command) range
  let l:saved_reg = @"
  execute "normal! vgvy"

  let l:pattern = escape(@", '\\/.*$^~[]')
  let l:pattern = substitute(l:pattern, "\n$", "", "")

  if a:command == 'replace'
    call CmdLine("%s" . '/'. l:pattern . '/')
  endif

  let @/ = l:pattern
  let @" = l:saved_reg
endfunction

func! AutoformatBuffer()
  exe "normal mz"
  exe "normal gg=G"
  exe "normal `z"
endfunc

func! DeleteTrailingWhiteSpaces()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc


