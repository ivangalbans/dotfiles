#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh

SOURCE="$(realpath -m .)"
DESTINATION="$(realpath -m ~)"

# https://github.com/railwaycat/homebrew-emacsmacport
info "Installing Emacs"
brew tap railwaycat/emacsmacport
brew install --cask emacs-mac

info "Linking emacs profiles..."

find . -name "*.d" | while read fn; do
    fn=$(basename $fn)
    symlink "$SOURCE/$fn" "$DESTINATION/$fn"
done

info "Installing doom..."

./.emacs.d/bin/doom install
./.emacs.d/bin/doom sync
./.emacs.d/bin/doom env

success "Finished configuring emacs."
