# Original PATH.
# /usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin

# PATH add bin current.
export PATH="$PATH:./bin"

# PATH composer on: current, home.
export PATH="$PATH:./composer/vendor/bin:~/.composer/vendor/bin"

# Git branch name on bash prompt.
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\033[32m\]\W\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

# Aliases Commands.
alias ll='ls -FGlAhp'                         # ll:            Preferred 'ls' implementation
alias f='open -a Finder ./'                   # f:             Opens current directory in MacOS Finder
alias c='clear'                               # c:             Clear terminal display
alias qfind='find . -name '                   # qfind:         Quickly search for file
ff () { /usr/bin/find . -name '*'"$@"'*' ; }  # ff:            Find file under the current directory
ffs () { /usr/bin/find . -name "$@"'*' ; }    # ffs:           Find file whose name starts with a given string
ffe () { /usr/bin/find . -name '*'"$@" ; }    # ffe:           Find file whose name ends with a given string

#   showa: to remind yourself of an alias (given some part of it)
showa () { grep --color=always -i -a1 $@ ~/Library/init/bash/aliases.bash | grep -v '^\s*$' | less -FSRXc ; }

#   lr:     Full Recursive Directory Listing
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'
	
# Aliases Apeche|Hosts Commands.
alias hosts='mate /etc/hosts'                              # hosts:         Edit hosts file
alias evhosts='mate /etc/apache2/extra/httpd-vhosts.conf'  # evhosts:       Edit vhost apache
alias apacherestart='sudo apachectl graceful'              # apacherestart: Restart Apache

# General paths.
dropbox="~/Dropbox"
proyects="$dropbox/Documents/Proyectos"

# Aliases CD General paths.
alias desktop='cd ~/Desktop'
alias dropbox="cd $dropbox"

# Aliases CD Proyect paths.
# Exmple alias whatever='cd $proyectos/whatever'
