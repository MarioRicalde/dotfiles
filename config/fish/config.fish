# Load Homebrew (Apple Silicon)
if test -d "/opt/homebrew"
    set -gx HOMEBREW_PREFIX "/opt/homebrew"
    set -U fish_user_paths /opt/homebrew/bin $fish_user_paths
end

# Load Homebrew (Intel)
if test -d "/usr/local/bin"
    set -gx HOMEBREW_PREFIX "/usr/local"
    set -U fish_user_paths /usr/local/bin $fish_user_paths
end

# Prompt
starship init fish | source

# FZF
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow'
export FZF_CTRL_T_COMMAND='fd --type d --hidden --follow'

# Directory
export XDG_DATA_HOME="$HOME/.config"

# Editor preferences
export vim=nvim
export VISUAL=nvim
export EDITOR="$VISUAL"

# openldap
# If you need to have openldap first in your PATH, run:
set -g fish_user_paths "$HOMEBREW_PREFIX/opt/openldap/bin" $fish_user_paths
set -g fish_user_paths "$HOMEBREW_PREFIX/opt/openldap/sbin" $fish_user_paths

# For compilers to find openldap you may need to set:
set -gx LDFLAGS "-L$HOMEBREW_PREFIX/opt/openldap/lib"
set -gx CPPFLAGS "-I$HOMEBREW_PREFIX/opt/openldap/include"

# Curl
# If you need to have curl first in your PATH, run:
set -g fish_user_paths "$HOMEBREW_PREFIX/opt/curl/bin" $fish_user_paths

# For compilers to find curl you may need to set:
set -gx LDFLAGS "-L$HOMEBREW_PREFIX/opt/curl/lib"
set -gx CPPFLAGS "-I$HOMEBREW_PREFIX/opt/curl/include"

# For pkg-config to find curl you may need to set:
set -gx PKG_CONFIG_PATH "$HOMEBREW_PREFIX/opt/curl/lib/pkgconfig"

# asdf (version manager)
source "$HOMEBREW_PREFIX/opt/asdf/asdf.fish"
