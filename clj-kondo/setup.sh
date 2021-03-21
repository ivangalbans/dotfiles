#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh

SOURCE="$(realpath -m .)"
DESTINATION="$(realpath -m ~)"

info "Configurating clj-kondo..."

find . -name ".clj-kondo*" | while read fn; do
    fn=$(basename $fn)
    symlink "$SOURCE/$fn" "$DESTINATION/$fn"
done

success "Finished configuring clj-kondo."
