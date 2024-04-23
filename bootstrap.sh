#!/usr/bin/env bash

# fetch latest
git pull origin main;

# 定义一个函数，接受两个参数：提示信息和命令
prompt_and_execute() {
  local prompt_message="$1"
  local command_to_execute="$2"

  read -p "$prompt_message ? (y/n) " -n 1
  echo ""
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    echo "Start $command_to_execute...";
    if $command_to_execute; then
      echo "$prompt_message success."
    else
      echo "$prompt_message failed."
    fi
  fi
}

# 定义安装 Homebrew 的函数
function install_homebrew() {
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> "$HOME/.zprofile"
  eval "$(/opt/homebrew/bin/brew shellenv)"
}

# 定义安装 Rust 的函数
function install_rust() {
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
  export PATH="$PATH:$HOME/.cargo/bin"
}

# 使用函数
prompt_and_execute "Install Homebrew" "install_homebrew"
prompt_and_execute "Install Stow" "brew install stow"
prompt_and_execute "Stow dotfiles" "stow -R -v ."
prompt_and_execute "Homebrew install applications" "./install_all_brews.sh"
prompt_and_execute "Install Rust" "install_rust"
