if status is-interactive

end
starship init fish | source
zoxide init fish | source

#Alias 
alias ss='ssh-agent -c && ssh-add ~/.ssh/Ubuntu'
alias lg='lazygit'
alias ld='lazydocker'
alias ls='lsd'
alias n='nvim'
alias rspack='pnpm create rsbuild@latest'
alias flowbite="pnpx create-flowbite-react@latest"
alias sf='source /home/danilo/.config/fish/config.fish'
alias nf='n /home/danilo/.config/fish/config.fish'
alias cat='bat'
alias man='tldr'
alias astro='pnpm create astro@latest'
alias angular='ng new'
alias pyv="/home/danilo/.config/fish/pyv.sh"

#Keys 
#bind --key ctrl-f ranger

eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)
fnm env --use-on-cd --shell fish | source

if not set -q ZELLIJ
    zellij
end

#Config fzf 
export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
  --style full \
  --preview 'fzf-preview.sh {}'\
  --bind 'focus:transform-header:file --brief {}'\
  --highlight-line \
  --info=inline-right \
  --ansi \
  --layout=reverse \
  --border=none
  --color=bg+:#002c38 \
  --color=bg:#001419 \
  --color=border:#063540 \
  --color=fg:#9eabac \
  --color=gutter:#001419 \
  --color=header:#c94c16 \
  --color=hl+:#c94c16 \
  --color=hl:#c94c16 \
  --color=info:#637981 \
  --color=marker:#c94c16 \
  --color=pointer:#c94c16 \
  --color=prompt:#c94c16 \
  --color=query:#9eabac:regular \
  --color=scrollbar:#063540 \
  --color=separator:#063540 \
  --color=spinner:#c94c16 \
"

# pnpm
set -gx PNPM_HOME "/home/danilo/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# opencode
fish_add_path /root/.opencode/bin
