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

# Nubank

alias aws-br="nu aws shared-role-credentials refresh --account-alias br --keep-policies=$MY_POLICIES --keep-temporary-policies $MY_TMP_POLICIES"
alias aws-br-staging="nu aws shared-role-credentials refresh --account-alias br-staging --keep-policies=$MY_POLICIES --keep-temporary-policies $MY_TMP_POLICIES"
alias aws-br-console="nu aws shared-role-credentials web-console --account-alias br --keep-policies=$MY_POLICIES --keep-temporary-policies $MY_TMP_POLICIES"

# Run every day/every hour due to br shared role

alias nur='nu update && \
           nu aws shared-role-credentials refresh --account-alias='br' --keep-policies=$MY_POLICIES --keep-temporary-policies $MY_TMP_POLICIES && \
           nu aws credentials refresh && \
           nu codeartifact login maven && \
           nu codeartifact login npm'

##
# Run when certificates are expiring or when I want to force a retrieve of the tokens due to scope changes

alias nur-all='nu update &&
               nu aws shared-role-credentials refresh --account-alias='br' && \
               nu codeartifact login maven && \
               nu aws credentials refresh && \
               nu-br-staging certs setup --env staging && \
               nu-br-staging auth get-refresh-token --env staging --force && \
               nu-br-staging auth get-access-token --env staging && \
               nu certs setup --env prod && \
               nu-ist certs setup --env staging && \
               nu-ist certs setup --env prod && \
               nu auth get-refresh-token --env prod --force && \
               nu auth get-access-token --env prod && \
               nu-ist auth get-refresh-token --env staging --force && \
               nu-ist auth get-access-token --env staging && \
               nu-ist auth get-refresh-token --env prod --force && \
               nu-ist auth get-access-token --env prod && \
               nu-co auth get-refresh-token --env staging --force && \
               nu-co auth get-access-token --env staging && \
               nu-co auth get-refresh-token --env prod --force && \
               nu-co auth get-access-token --env prod && \
               nu-mx auth get-refresh-token --env staging --force && \
               nu-mx auth get-access-token --env staging && \
               nu-mx auth get-refresh-token --env prod --force && \
               nu-mx auth get-access-token --env prod && \
               nu-data auth get-refresh-token --env staging --force && \
               nu-data auth get-access-token --env staging && \
               nu-data auth get-refresh-token --env prod --force && \
               nu-data auth get-access-token --env prod'

cdnu() {
    local proj=$1
    [[ ! -d "$NU_HOME/$proj" ]] && nu proj clone "$proj"
    cd "$NU_HOME/$proj"
}

# Enable completion for cdnu
compdef "_files -W \"$NU_HOME\"" cdnu
