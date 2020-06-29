#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh

SOURCE="$(realpath -m .)"
DESTINATION="$(realpath -m ~)"

# Emacs (https://github.com/d12frosted/homebrew-emacs-plus.git)
info "Installing Emacs"
brew "emacs-plus@28 --with-xwidgets --with-modern-icon-black-variant --with-jansson"

info "Linking emacs profiles..."

find . -name "*.d" | while read fn; do
    fn=$(basename $fn)
    symlink "$SOURCE/$fn" "$DESTINATION/$fn"
done

info "Installing doom..."

./.doom.emacs.d/bin/doom install
./.doom.emacs.d/bin/doom sync
./.doom.emacs.d/bin/doom env

info "Installing chemacs"

symlink "$SOURCE/.emacs-profiles.el" "$DESTINATION/.emacs-profiles.el"
./chemacs/install.sh

success "Finished configuring emacs."
