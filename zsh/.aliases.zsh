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
alias cht=/usr/local/bin/cht.sh

nu-mx-refresh() {
    nu update
    echo 0 | nu-mx aws credentials refresh --maven-login

    nu-mx auth get-refresh-token --env prod
    nu-mx auth get-refresh-token --env staging
    # nu-mx auth get-access-token --env prod
    # nu-mx auth get-access-token --env staging
}

nu-br-refresh() {
    nu update
    echo 0 | nu-br aws credentials refresh --maven-login

    nu-br auth get-refresh-token --env prod
    nu-br auth get-refresh-token --env staging
    # nu-br auth get-access-token --env prod
    # nu-br auth get-access-token --env staging
}

nu-co-refresh() {
    nu update
    # echo 0 | nu-co aws credentials refresh --maven-login
    echo 0 | nu-co aws credentials refresh

    nu-co auth get-refresh-token --env prod
    nu-co auth get-refresh-token --env staging
    # nu-co auth get-access-token --env prod
    # nu-co auth get-access-token --env staging
}

nu-ist-refresh() {
    nu update
    echo 0 | nu-ist aws credentials refresh --maven-login
    echo 0 | nu-ist aws credentials refresh

    nu-ist auth get-refresh-token --env prod
    nu-ist auth get-refresh-token --env staging
    # nu-ist auth get-access-token --env prod
    # nu-ist auth get-access-token --env staging
}

nu-refresh() {
    nu update
    echo 0 | nu aws credentials refresh
    # echo 0 | nu aws credentials refresh --maven-login

    nu-mx auth get-refresh-token --env prod
    nu-mx auth get-refresh-token --env staging

    nu-co auth get-refresh-token --env prod
    nu-co auth get-refresh-token --env staging

    nu-br auth get-refresh-token --env prod
    nu-br auth get-refresh-token --env staging

    nu-ist auth get-refresh-token --env prod
    nu-ist auth get-refresh-token --env staging
}


cdnu() {
    local proj=$1
    [[ ! -d "$NU_HOME/$proj" ]] && nu proj clone "$proj"
    cd "$NU_HOME/$proj"
}

# Enable completion for cdnu
compdef "_files -W \"$NU_HOME\"" cdnu
