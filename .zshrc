source '/usr/share/zsh-antidote/antidote.zsh'
antidote load ~/.config/.zsh_plugins.txt

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
starship preset bracketed-segments -o ~/.config/starship.toml

fastfetch

alias ls="eza -lhmu --smart-group --git"
alias lsa="eza -lahmHM --smart-group --git"
alias lsaa="eza -lahmHM --smart-group --git --total-size"
alias lst="eza -lahmHMT --smart-group --git"

alias pa="ping archlinux.org"
alias pi="ping 8.8.8.8"

alias cat="bat"

alias obsidian="obsidian --disable-features=VaapiVideoDecoder,VaapiVideoEncoder --disable-gpu-memory-buffer-video-frames"
