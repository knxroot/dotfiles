if [[ $('uname') == 'Linux' ]]; then

    # OSX pbpaste and pbcopy simulation on Linux
    alias pbcopy='xclip -i -sel clipboard'
    alias pbpaste='xclip -o -sel clipboard'

elif  [[ "$OSTYPE" = cygwin* ]]; then
    alias pwdw='cygpath -w `pwd`'
    alias apacheup='cygstart --hide /cygdrive/c/xampp/apache_start.bat'
    alias apachedown='cygstart --hide /cygdrive/c/xampp/apache_stop.bat'
    alias mysqlup='cygstart --hide /cygdrive/c/xampp/mysql_start.bat'
    alias mysqldown='cygstart --hide /cygdrive/c/xampp/mysql_stop.bat'
    alias webup='apacheup && mysqlup'
    alias webdown='apachedown && mysqldown'
    alias webrestart='apachedown && mysqldown && apacheup && mysqlup'

    # OSX pbpaste and pbcopy simulation on Windows
    if [ -e /dev/clipboard ]; then
       alias pbcopy='cat >/dev/clipboard'
       alias pbpaste='cat /dev/clipboard'
    fi

    # apt-get/yum simulation
    alias apt-get="apt-cyg"
    alias yum="apt-cyg"

fi

# CROSS-PLATFORM ALIAS
alias zshconfig="nano ~/.zshrc"
alias ohmyzsh="nano ~/.oh-my-zsh"

## Easier navigation: .., ..., ~ and -
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'

alias lsd='ls -l | grep "^d"'

# Shortcuts
alias g="git"
alias v="vim"

# `cat` with beautiful colors. requires Pygments installed.
# sudo easy_install Pygments
alias c='pygmentize -O style=monokai -f console256 -g'

# Undo a `git push`
alias undopush="git push -f origin HEAD^:master"

# IP addresses
# Please use now internal-ip and public-ip, install from ext/install_scripts/npm_globals_packages.sh

# Enhanced WHOIS lookups
alias whois="whois -h whois-servers.net"

# View HTTP traffic
alias sniff="sudo ngrep -d 'wlan0' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i wlan0 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# Canonical hex dump; some systems have this symlinked
alias hd="hexdump -C"

# One of @janmoesen’s ProTips
for method in GET HEAD POST PUT DELETE TRACE OPTIONS; do
  alias "$method"="lwp-request -m '$method'"
done

# Don’t clear the screen after quitting a manual page
export MANPAGER="less -X"