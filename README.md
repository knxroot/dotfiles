# dotfiles

# Windows version

1. Download [cygwin](https://cygwin.com/setup-x86_64.exe) and copy the installer to C:\delete_me
2. Install Cygwin + wget package `C:\delete_me\setup-x86_64.exe -q -d -D -L -X -s "http://box-soft.com" -P wget`
3. Open Cygwin and execute `wget --no-check-certificate https://github.com/knxroot/dotfiles/raw/master/install-win.sh -O - | sh`

# Linux version
1. Open a bash terminal and execute `sudo wget --no-check-certificate https://github.com/knxroot/dotfiles/raw/master/install-linux.sh -O - | sh`