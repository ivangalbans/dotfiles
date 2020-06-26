#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh

SOURCE="$(realpath -m .)"
DESTINATION="$(realpath -m ~)"

info "Linking emacs distros..."

find . -name "*.d" | while read fn; do
    fn=$(basename $fn)
    symlink "$SOURCE/$fn" "$DESTINATION/$fn"
done

info "Installing doom..."

# ./.doom.emacs.d/bin/doom install
./.doom.emacs.d/bin/doom sync
./.doom.emacs.d/bin/doom env

info "Installing chemacs"

symlink "$SOURCE/.emacs-profiles.el" "$DESTINATION/.emacs-profiles.el"
./chemacs/install.sh

success "Finished configuring emacs."
