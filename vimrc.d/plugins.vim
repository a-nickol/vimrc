silent! call plug#begin('~/.vim_runtime/plugged')

""""""""""""""""""""""""""""""""
" language support
""""""""""""""""""""""""""""""""

" HTML
Plug 'othree/html5.vim'
Plug 'mattn/emmet-vim', { 'for': 'html' }

" Ruby
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails', { 'for': 'ruby' }
Plug 'chase/vim-ansible-yaml'

" Python
Plug 'hdima/python-syntax'

" Javascript, Coffeescript, Typescript, etc.
Plug 'pangloss/vim-javascript'
Plug 'kchmck/vim-coffee-script'
Plug 'leafgarland/typescript-vim'

" Markdown
Plug 'tpope/vim-markdown'

" syntax checking plugin
Plug 'scrooloose/syntastic'

" %-operator will mach if endif etc.
Plug 'vim-scripts/matchit.zip'

" several text objects
Plug 'kana/vim-textobj-user'
Plug 'sgur/vim-textobj-parameter'
Plug 'kana/vim-textobj-function'

" browse the tags of source code files
Plug 'majutsushi/tagbar'

" new commenting operations
Plug 'scrooloose/nerdcommenter'

""""""""""""""""""""""""""""""""
" fuzzy search tools
""""""""""""""""""""""""""""""""

" fuzzy file and buffer finder
Plug 'kien/ctrlp.vim'

" fzf tool integration
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

""""""""""""""""""""""""""""""""
" design / gui
""""""""""""""""""""""""""""""""

" Colorschemes
Plug 'flazz/vim-colorschemes'
Plug 'xolox/vim-colorscheme-switcher'

" Airline
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

""""""""""""""""""""""""""""""""
" version control system
""""""""""""""""""""""""""""""""

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

""""""""""""""""""""""""""""""""
" dependencies
""""""""""""""""""""""""""""""""

" Dependencies / Tools
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'xolox/vim-misc'

""""""""""""""""""""""""""""""""
" multiple cursors
""""""""""""""""""""""""""""""""

" Multiple Cursors
Plug 'terryma/vim-multiple-cursors'

""""""""""""""""""""""""""""""""
" file tools
""""""""""""""""""""""""""""""""

" NERDTree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

""""""""""""""""""""""""""""""""
" calculation
""""""""""""""""""""""""""""""""

" HowMuch - Calculates visual selected formulars
Plug 'sk1418/HowMuch'

""""""""""""""""""""""""""""""""
" Vimwiki
""""""""""""""""""""""""""""""""

" Vimwiki with Calendar integration
Plug 'vimwiki/vimwiki'
Plug 'mattn/calendar-vim', { 'on': 'Calendar' }

""""""""""""""""""""""""""""""""
" search
""""""""""""""""""""""""""""""""

" search using ag or ack
Plug 'mileszs/ack.vim'

""""""""""""""""""""""""""""""""
" visual mode tools
""""""""""""""""""""""""""""""""

" + key expands selection
Plug 'terryma/vim-expand-region'

""""""""""""""""""""""""""""""""
" text alignment
""""""""""""""""""""""""""""""""

" algin text on regex
Plug 'godlygeek/tabular'

""""""""""""""""""""""""""""""""
" insert completion
""""""""""""""""""""""""""""""""

" insert completion using the tab key
Plug 'ervandew/supertab'

""""""""""""""""""""""""""""""""
" buffer tools
""""""""""""""""""""""""""""""""

" :BufOnly Command
Plug 'schickling/vim-bufonly'

""""""""""""""""""""""""""""""""
" text editing tools
""""""""""""""""""""""""""""""""

" surround operator
Plug 'tpope/vim-surround'

" repeat complex commands on .
Plug 'tpope/vim-repeat'

" several key mappings using [ and ]
Plug 'tpope/vim-unimpaired'

""""""""""""""""""""""""""""""""
" quicklist tools
""""""""""""""""""""""""""""""""

" execute commands on quicklist
Plug 'henrik/vim-qargs'

""""""""""""""""""""""""""""""""
" clipboard tools
""""""""""""""""""""""""""""""""

" yanks into stack
Plug 'maxbrunsfeld/vim-yankstack'

""""""""""""""""""""""""""""""""
" asynchronous execution
""""""""""""""""""""""""""""""""

" dispatch commands
Plug 'tpope/vim-dispatch'

""""""""""""""""""""""""""""""""
" terminal support
""""""""""""""""""""""""""""""""

" adds support for modified keys in several terminals
Plug 'drmikehenry/vim-fixkey'

""""""""""""""""""""""""""""""""
" movement
""""""""""""""""""""""""""""""""

" adds advanced visual movement commands
Plug 'easymotion/vim-easymotion'

""""""""""""""""""""""""""""""""
" css colors
""""""""""""""""""""""""""""""""

Plug 'ap/vim-css-color'

""""""""""""""""""""""""""""""""
" deactivated plugins
""""""""""""""""""""""""""""""""

" code snippets
"Plug 'garbas/vim-snipmate'
" code snippets for vim-snipmate
"Plug 'honza/vim-snippets'

call plug#end()

