#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh

SOURCE="$(realpath -m .)"
DESTINATION="$(realpath -m ~)"

# Emacs (https://github.com/d12frosted/homebrew-emacs-plus.git)
info "Installing Emacs"
brew install emacs-plus --with-xwidgets --with-modern-icon-black-variant
ln -s /usr/local/opt/emacs-plus/Emacs.app /Applications/Emacs.app

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
