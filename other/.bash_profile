export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

alias ls='pwd;ls -aF'
alias ll='pwd;ls -lagF'
alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias c='clear'                             # c Clear terminal display
alias myip='curl ip.appspot.com'            # myip         Public facing IP Address
alias netCons='lsof -i'                     # netCons      Show all open TCP/IP sockets
