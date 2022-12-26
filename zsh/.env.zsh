# node
export PATH="$PATH:$HOME/.nvm/versions/node/v11.5.0/bin"

export LDFLAGS="-L/usr/local/opt/libressl/lib"
export CPPFLAGS="-I/usr/local/opt/libressl/include"
export GPG_TTY=$TTY

export PATH="$PATH:$HOME/.dotnet/tools"
export PATH="$PATH:/usr/local/bin/python3"
export PATH="$PATH:$HOME/.emacs.d/bin"
export PATH="$PATH:$HOME/usr/local/bin/omnisharp"
export PATH="/usr/local/sbin:$PATH"
export EDITOR=vim

# llvm
export PATH="/usr/local/opt/llvm/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/llvm/lib:$LDFLAGS"
export CPPFLAGS="-I/usr/local/opt/llvm/include:$CPPFLAGS"

# export PATH="$PATH:/usr/local/opt/openjdk/bin"

# GraalVM
export GRAALVM_HOME="/Users/ivan.galban/dev/clojure-lsp/clojure-lsp/graalvm-ce-java17-22.3.0/Contents/Home"
export PATH="/Users/ivan.galban/dev/clojure-lsp/clojure-lsp/graalvm-ce-java17-22.3.0/Contents/Home/bin:$PATH"
export JAVA_HOME="/Users/ivan.galban/dev/clojure-lsp/clojure-lsp/graalvm-ce-java17-22.3.0/Contents/Home"
