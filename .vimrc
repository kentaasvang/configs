""" enable vim to detect filetype, and to use filetype plugins
filetype plugin on


""" Turn on syntax highlighting
syntax enable


""" Turn on line numbers
set nu
""" set color to line numbers
highlight LineNr ctermfg=darkgrey


""" turn on search highlighting. Without this, search are not highlighted
set hlsearch


""" turn on line-folding
set foldmethod=manual
""" this two commands makes 'mkview' and 'loadview' automatic, so that folds
""" are remembered
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview
""" set color for fold highlighting
highlight Folded ctermbg=235


""" make it possible to scroll with the mouse
set mouse=a


""" set binding between .ejs files and html files to get html-syntax on ejs
au BufNewFile,BufRead *.ejs set filetype=html
