
""" enable vim to detect filetype, and to use filetype plugins
filetype plugin on


""" set binding between .ejs files and html files to get html-syntax on ejs
au BufNewFile,BufRead *.ejs set filetype=html


""" Turn on syntax highlighting
syntax enable


""" Turn on line numbers
set nu
""" set color to line numbers
highlight LineNr ctermfg=darkgrey


""" turn on search highlighting. Without this, search are not highlighted
set hlsearch


""" make it possible to scroll with the mouse
set mouse=a


