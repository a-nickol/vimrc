# vimrc

## How to install?
This vimrc includes a lot of great plugins, configurations and color schemes that make Vim a lot better. To install it simply do following:

    git clone https://github.com/HansPeterIngo/vimrc.git ~/.vim_runtime
    sh ~/.vim_runtime/install.sh

## How to install on Windows?

Use [msysgit](http://msysgit.github.com/) to checkout the repository and run the installation instructions above. No special instructions needed ;-)

## How to update to latest version?

    cd ~/.vim_runtime
    git pull --rebase
    vim +PlugUpdate +qall

## How to uninstall?

Do following:
* Remove `~/.vim_runtime`
* Remove any lines that refernce `.vim_runtime` in your `~/.vimrc`
* Uninstall and remove `.powerline_fonts`
* Uninstall and remove `.fzf`

## Build-in Cheat-Sheet

This vimrc ships with its own cheat-sheet. To access the cheat type `:help cheat-sheet` or `<F12>`.

## FAQ

### Some command line tools cannot be found!

If you don't have `git`, `grep` or `ag` available on your `$PATH`, you can set the commands directly in your `local.vim` file for some of the plugins.

    if !executable('git')
      let g:gitgutter_git_executable = "C:\\Program Files\\Git\\bin\\git.exe"
    endif
    
    if !executable('grep')
      let g:gitgutter_grep = "C:\\Program Files\\Git\\usr\\bin\\grep.exe"
    endif
    
    if !executable('ag')
     let g:ackprg = "D:\\tools\\the_silver_searcher\\ag --vimgrep"
    endif
