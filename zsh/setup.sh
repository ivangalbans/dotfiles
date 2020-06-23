#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh

SOURCE="$(realpath -m .)"
DESTINATION="$(realpath -m ~)"

info "Configurating zsh..."

# info "Pulling custom theme and plugins"
git clone https://github.com/romkatv/powerlevel10k.git             "$SOURCE/ohmyzsh/custom/themes/powerlevel10k"
# git clone https://github.com/inishchith/autoenv.git                "$SOURCE/ohmyzsh/custom/plugins/autoenv"
# git clone https://github.com/zsh-users/zsh-apple-touchbar.git      "$SOURCE/ohmyzsh/custom/plugins/zsh-apple-touchbar"
# git clone https://github.com/zsh-users/zsh-autosuggestions.git     "$SOURCE/ohmyzsh/custom/plugins/zsh-autosuggestions"
# git clone https://github.com/zsh-users/zsh-completions.git         "$SOURCE/ohmyzsh/custom/plugins/zsh-completions"
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$SOURCE/ohmyzsh/custom/plugins/zsh-syntax-highlighting"
#

find . -d 1 -name "*.zsh*" | while read fn; do
    fn=$(basename $fn)
    symlink "$SOURCE/$fn" "$DESTINATION/$fn"
done

symlink "$SOURCE/ohmyzsh" "$DESTINATION/.oh-my-zsh"

success "Finished configuring zsh."
