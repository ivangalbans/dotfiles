#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh

SOURCE="$(realpath -m .)"
DESTINATION="$(realpath -m ~)"

info "Sync org files"
git clone git@github.com:ivangalbans/org.git "$DESTINATION"
success "Finished org files syncronization"
