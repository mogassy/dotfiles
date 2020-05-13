export EDITOR=nvim

fish_default_key_bindings

set -g fish_ambiguous_width 1

# abbr {{{

abbr -a cdd   "cd ../"
abbr -a cddd  "cd ../../"
abbr -a cd2   "cd ../../"
abbr -a cd3   "cd ../../../"
abbr -a cdo   "cd ~/Documents/git/sys/dotfiles"
abbr -a vdo   "cd ~/Documents/git/sys/dotfiles && nvim"
abbr -a hgr   "history | grep"
abbr -a mk    "mkdir"
if type -q exa
  abbr -a j "exa -a --icons --group-directories-first --long --time-style=long-iso"
else
  abbr -a j "ls -Fhla"
end
# abbr -a rr  "rm -r"

# git
abbr -a g    "git"
abbr -a gb   "git branch"
abbr -a gc   "git checkout"
abbr -a gcm  "git checkout master"
abbr -a gcb  "git checkout -b"
abbr -a gpl  "git pull"
abbr -a gps  "git push"
abbr -a grm  "git remote"
abbr -a grb  "git rebase"
abbr -a grbm "git rebase master"
abbr -a grbc "git rebase --continue"
abbr -a gss  "git stash save"
abbr -a gsl  "git stash list"
abbr -a gsp  "git stash pop"
# abbr -a gsd "git stash drop"

# tig
abbr -a ta   "tig --all"

# tmux

abbr -a tn   "tmux new-session -A -s"

# jupyter
abbr -a jnb  "jupyter notebook"
abbr -a jlb  "jupyter lab"

# vim
abbr -a v    "nvim"
abbr -a vtex "env NVIM_LISTEN_ADDRESS=/tmp/nvimsocket nvim"
abbr -a mkvs "mkdir .vimsessions"
abbr -a rmvs "rm .vimsessions/*"

# ssh
abbr -a s    "ssh"

# cargo
abbr -a cb   "cargo build"
abbr -a cn   "cargo new"
abbr -a cr   "cargo run"
abbr -a ct   "cargo test"

# }}}

# environment variables {{{ 
# bin at home directory
set -x PATH "$HOME/.cargo/bin" $PATH

# SATySFi
export SATYSFI_LIB_ROOT=/usr/local/lib-satysfi

# opam configuration
source $HOME/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true

# gopath
set -x PATH $HOME/go/bin $PATH

# }}}


eval (pyenv init - | source)
set -x PATH /usr/local/opt/gettext/bin $PATH

eval (starship init fish)

# ls
set -x LSCOLORS gxfxcxdxbxegedabagacad

if type -q sk
    abbr -a gj "cd (ghq list -p | sk)"
else if type -q fzf
    abbr -a gj "cd (ghq list -p | fzf)"
end

# vim:fdm=marker
