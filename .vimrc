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