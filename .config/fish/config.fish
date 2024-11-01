# ~/.config/fish/config.fish
# 设置默认编辑器为 nvim
set -gx EDITOR nvim

# 统一设置 PATH，避免重复添加
set -U fish_user_paths /Users/roy/dev_env/flutter/3.19.3/flutter/bin \
                       /opt/homebrew/bin \
                       $HOME/.pub-cache/bin \
                       $fish_user_paths \
                       /usr/local/bin
# 设置操作系统特定路径
if test (uname) = Darwin
    set -U fish_user_paths /opt/homebrew/bin $fish_user_paths
else if test (uname) = Linux
    set -U fish_user_paths /usr/bin $fish_user_paths
end

# 初始化 zoxide
zoxide init fish | source

# 初始化 Starship
starship init fish | source

# 加载别名
if test -f ~/.config/fish/aliases.fish
    source ~/.config/fish/aliases.fish
end

# 加载flutter 
if test -f ~/.config/fish/flutter.fish
    source ~/.config/fish/flutter.fish
end

# 加载所有位于 ~/.config/fish/functions 目录下的 .fish 函数文件
if test -d ~/.config/fish/functions
    for function_file in ~/.config/fish/functions/*.fish
        source $function_file
    end
end

