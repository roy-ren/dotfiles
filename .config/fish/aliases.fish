# ~/.config/fish/aliases.fish

# Shortcuts
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias j="z"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias p="cd ~/projects"

# lsd
alias ls="lsd"
alias l="ls -l"
alias la="ls -a"
alias lla="ls -la"
alias lt="ls --tree"

# stow
alias stowr="stow -R . -v"

# git
alias lg="lazygit"

# vpn
alias vpns="set -x https_proxy http://localhost:1080; set -x http_proxy http://localhost:1080"
alias vpnt="curl cip.cc"

alias vi="neovide"
alias lg="lazygit"

# flutter
alias f="fvm flutter"
alias fgt="fvm flutter pub get"
alias fw="flutter_watch"
alias fk="flutter_kill_watch"
alias fr="flutter run --pid-file=/tmp/tf1.pid"
alias frp="flutter run --pid-file=/tmp/tf1.pid --profile"
alias drb="dart run build_runner"
alias drbc="drb clean"
alias drbb="drb build"
alias drbs="drb serve"
alias drbw="drb watch"
