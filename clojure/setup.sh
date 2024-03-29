#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh

SOURCE="$(realpath -m .)"
DESTINATION="$(realpath -m ~)"

info "Configurating clojure..."

symlink "$SOURCE/.clojure" "$DESTINATION/.clojure"
symlink "$SOURCE/.lein" "$DESTINATION/.lein"

success "Finished configuring clojure."
