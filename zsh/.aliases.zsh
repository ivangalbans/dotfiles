#!/usr/bin/env zsh

alias ls="colorls"
alias ml="music launch"
alias mp="music play"
alias ms="music pause"
alias mm="music mute"
alias mu="music unmute"
alias mn="music next"
alias rm="safe-rm"
alias klj='ff(){ clj "$@" -M:klipse;  unset -f ff; }; ff'
alias g++='g++-11'

nu-refresh() {
    nu update
    echo 0 | nu aws credentials refresh
    nu certs setup --env staging
    nu certs setup --env prod
    nu auth get-refresh-token --env prod
    nu auth get-refresh-token --env staging
    nu auth get-access-token --env prod
    nu auth get-access-token --env staging
    
    nu-mx certs setup --env staging
    nu-mx certs setup --env prod
    nu-mx auth get-refresh-token --env prod
    nu-mx auth get-refresh-token --env staging
    nu-mx auth get-access-token --env prod
    nu-mx auth get-access-token --env staging
}

