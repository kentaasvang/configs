: '
****** ALWAYS HIGHLIGHT WORDS WITH GREP ********

Mark up the matching text with the expression stored in GREP_COLOR environment variable.  The
possible values of when can be "never", "always" or "auto"
' 
alias grep="grep --color=auto"


: '
*********** TERMINAL PROMPT ******************
Styling for the terminal prompt

    \e[x;ym SOME SHIT \e[m

    \e[ = start of color scheme
    x;y = color pair
    SOME SHIT = SOME SHIT TO COLOR
    \e[m = stop color scheme 
color pairs: 
    black   = 0;30  dark grey   = 1;30
    blue    = 0;34  light blue  = 1;34
    green   = 0;32  light green = 1;32
    cyan    = 0;36  light cyan  = 1;36
    red     = 0;31  light red   = 1;31 
    purple  = 0;35  light purple = 1;35 
    brown   = 0;33  yellow      = 1;33 
    light grey = 0;37   white = 1;37

Attributes to customize the prompt:
    \d - currend date
    \t - current time
    \h - host name
    \# - command number
    \u - user name
    \W - current working directory
    \w - full path ot current working directory

Notes:
    when adding color-codes; surround code-tag with \[ and \]. Else you will get a line-wrapping error


******* git branch name in prompt function *********

'
parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u:\[\e[0;32m\]\w\[\e[m\]\[\033[35m\]\$(parse_git_branch)\[\033[00m\] $ "
#export PS1="\u:\w\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
