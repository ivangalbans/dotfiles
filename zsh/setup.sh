#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh

SOURCE="$(realpath -m .)"
DESTINATION="$(realpath -m ~)"

info "Installing Nerd Font"

brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font

# if it fails
# https://stackoverflow.com/questions/53135863/macos-mojave-ruby-config-h-file-not-found
info "Installing colorls"

gem install colorls

info "Configurating zsh..."

info "Pulling custom theme and plugins"
git clone https://github.com/romkatv/powerlevel10k.git             "$SOURCE/ohmyzsh/custom/themes/powerlevel10k"
git clone https://github.com/inishchith/autoenv.git                "$SOURCE/ohmyzsh/custom/plugins/autoenv"
git clone https://github.com/zsh-users/zsh-autosuggestions.git     "$SOURCE/ohmyzsh/custom/plugins/zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-completions.git         "$SOURCE/ohmyzsh/custom/plugins/zsh-completions"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$SOURCE/ohmyzsh/custom/plugins/zsh-syntax-highlighting"


find . -d 1 -name "*.zsh*" | while read fn; do
    fn=$(basename $fn)
    symlink "$SOURCE/$fn" "$DESTINATION/$fn"
done

symlink "$SOURCE/ohmyzsh" "$DESTINATION/.oh-my-zsh"

info "!!!!!!!!!!!!!!!!"
info "Note for iTerm2 users - Please enable the Nerd Font at iTerm2 > Preferences > Profiles > Text > Non-ASCII font > Hack Regular Nerd Font."

success "Finished configuring zsh."
