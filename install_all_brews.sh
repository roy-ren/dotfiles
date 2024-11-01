#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"


# Switch to using brew-installed bash as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/bash";
fi;

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install grep
brew install ripgrep
brew install fd
brew install openssh
brew install screen
brew install php
brew install node
brew install gmp

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install other useful binaries.
brew install git
brew install git-lfs
brew install gs
brew install lua

# terminal & tools
brew install --cask warp
brew install --cask neovide
brew install --cask rectangle
brew install --cask karabiner-elements
brew install autojump
brew install lazygit
brew install neovim
brew install tmux
brew install zsh
brew install lsd
brew install tree
brew install tree-sitter
brew install xcodes
brew install yamlfmt
brew install cocoapods

# languages dev
brew install stylua

# Nerd Fonts for your IDE
# https://www.nerdfonts.com/font-downloads
brew tap homebrew/cask-fonts
brew install --cask font-fira-code
brew install --cask font-fira-mono-nerd-font
brew install --cask font-fira-code-nerd-font
brew install --cask font-droid-sans-mono-nerd-font
brew install --cask font-hack
brew install --cask font-hack-nerd-font
brew install --cask font-bitstream-vera-sans-mono-nerd-font

# flutter
brew tap leoafarias/fvm
brew install fvm

brew instal --cask proxyman
# unit test
brew install locv
# Remove outdated versions from the cellar.
brew cleanup

# xcode
brew install xcode-build-server
brew install xcbeautify
brew install swiftlint
brew install swift-format
gem install xcodeproj

# ruby
brew install chruby ruby-install
