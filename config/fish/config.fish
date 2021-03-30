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
set -g fish_user_paths "/usr/local/opt/openldap/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/openldap/sbin" $fish_user_paths

# For compilers to find openldap you may need to set:
set -gx LDFLAGS "-L/usr/local/opt/openldap/lib"
set -gx CPPFLAGS "-I/usr/local/opt/openldap/include"


# Curl
# If you need to have curl first in your PATH, run:
set -g fish_user_paths "/usr/local/opt/curl/bin" $fish_user_paths

# For compilers to find curl you may need to set:
set -gx LDFLAGS "-L/usr/local/opt/curl/lib"
set -gx CPPFLAGS "-I/usr/local/opt/curl/include"

# For pkg-config to find curl you may need to set:
set -gx PKG_CONFIG_PATH "/usr/local/opt/curl/lib/pkgconfig"

# asdf (version manager)
source /usr/local/opt/asdf/asdf.fish
