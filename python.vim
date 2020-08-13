""" for some reason I need this to color Comment region the way I want
syntax enable

""" set default syntax highlighting for python
colorscheme peachpuff


""" turn tabs into spaces
setlocal tabstop=4 shiftwidth=4 expandtab


""" settings for identation
setlocal ai smarttab


""" relative numberes
set relativenumber


""" color docstrings like comments if they have non-whitespace character
""" preceeding them
syn region Comment start=/^[\t ]*"""/ end=/"""/ keepend contains=pythonEscape,pythonTodo,@Spell


""" color for comments in python
highlight Comment ctermfg=darkgrey


""" colors set in .vimrc are overwritten by the colorscheme in this file
""" because of that I have to manually set the colors her as well
""" this should be changed so that I only specify them in ONE location
highlight Folded ctermbg=235
highlight LineNr ctermfg=darkgrey
highlight Visual ctermfg=grey
