export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/opt/homebrew/sbin:$PATH"
export PATH="/usr/local/opt/curl/bin:$PATH"
export NU_COUNTRY="mx"
eval "$(pyenv init --path)"
source $HOME/.nurc
# BEGIN ANSIBLE MANAGED BLOCK - NU_HOME ENV
export NU_HOME="$HOME/dev/nu"
export NUCLI_HOME=$NU_HOME/nucli
export PATH="$NUCLI_HOME:$PATH"
# END ANSIBLE MANAGED BLOCK - NU_HOME ENV
# BEGIN ANSIBLE MANAGED BLOCK - GO
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"
# END ANSIBLE MANAGED BLOCK - GO
# BEGIN ANSIBLE MANAGED BLOCK - NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$(brew --prefix)/opt/nvm/nvm.sh" ] && . "$(brew --prefix)/opt/nvm/nvm.sh"
# END ANSIBLE MANAGED BLOCK - NVM
# BEGIN ANSIBLE MANAGED BLOCK - ANDROID SDK
export ANDROID_HOME="/Users/ivan.galban/Library/Android/sdk"
export ANDROID_SDK="$ANDROID_HOME"
export PATH="$PATH:$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME:$ANDROID_HOME/platform-tools:$ANDROID_HOME/emulator"
# END ANSIBLE MANAGED BLOCK - ANDROID SDK
# BEGIN ANSIBLE MANAGED BLOCK - RBENV
eval "$(rbenv init -)"
# END ANSIBLE MANAGED BLOCK - RBENV
# BEGIN ANSIBLE MANAGED BLOCK - MOBILE MONOREPO
export MONOREPO_ROOT="${NU_HOME}/mini-meta-repo"
export PATH="$PATH:$MONOREPO_ROOT/monocli/bin"
# END ANSIBLE MANAGED BLOCK - MOBILE MONOREPO
# BEGIN ANSIBLE MANAGED BLOCK - Flutter SDK
export FLUTTER_SDK_HOME="$HOME/sdk-flutter"
export FLUTTER_ROOT="$FLUTTER_SDK_HOME"
export PATH="$PATH:$FLUTTER_SDK_HOME/bin:$HOME/.pub-cache/bin:$FLUTTER_ROOT/bin/cache/dart-sdk/bin"
# END ANSIBLE MANAGED BLOCK - Flutter SDK
