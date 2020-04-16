""" set default syntax highlighting for python
colorscheme peachpuff


""" colors set in .vimrc are overwritten by the colorscheme in this file
""" because of that I have to manually set the colors her as well
""" this should be changed so that I only specify them in ONE location
highlight Folded ctermbg=235
highlight LineNr ctermfg=darkgrey
highlight Visual ctermfg=grey


""" color docstrings like comments if they have non-whitespace characters
""" preceeding them
syn region Comment start=/^[\t ]*"""/ end=/"""/ keepend contains=pythonEscape,pythonTodo,@Spell


""" color for comments in python
highlight Comment ctermfg=darkgrey


""" turn tabs into spaces
setlocal tabstop=4 shiftwidth=4 expandtab


""" settings for identation
setlocal ai smarttab
