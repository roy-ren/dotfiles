# ~/.config/fish/functions/custom.fish

function fishcg
    nvim ~/.config/fish/config.fish
end

function ktfcg
    nvim ~/.config/kitty/kitty.conf
end

function rm_local_nvim_cache
    rm -rf ~/.local/state/nvim
    rm -rf ~/.local/share/nvim
end
