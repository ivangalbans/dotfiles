# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Latex
export PATH=/Library/TeX/texbin:$PATH
[ -f "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env" ] && source "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env"

# Java
JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-13.0.1.jdk/Contents/Home"
PATH="${PATH}:${JAVA_HOME}/bin"

export PATH="$PATH:/usr/local/opt/openjdk/bin"
eval "$(jenv init -)"

export LDFLAGS="-L/usr/local/opt/libressl/lib"
export CPPFLAGS="-I/usr/local/opt/libressl/include"
export GPG_TTY=$(tty)

export PATH="$PATH:$HOME/.dotnet/tools"
export PATH="$PATH:$HOME/Library/Python/3.7/bin"
export PATH="$PATH:$HOME/.emacs.d/bin"
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:$HOME/usr/local/bin/omnisharp"
export EDITOR=vim

# llvm
export PATH="/usr/local/opt/llvm/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/llvm/lib:$LDFLAGS"
export CPPFLAGS="-I/usr/local/opt/llvm/include:$CPPFLAGS"


GITSTATUS_LOG_LEVEL=DEBUG
