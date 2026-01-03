function ss
    cd $HOME/.ssh && eval $(ssh-agent -c) && ssh-add $argv && cd
end
