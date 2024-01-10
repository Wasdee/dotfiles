#!/usr/bin/env bash
# do not use `export` keyword in this file:
# shellcheck disable=SC2034

# Load defaults
source "$DOROTHY/config/setup.bash"

APT_PYTHON_DEPS=(
    'build-essential'
    'libssl-dev'
    'zlib1g-dev'
    'libbz2-dev'
    'libreadline-dev'
    'libsqlite3-dev'
    'wget'
    'curl'
    'llvm'
    'libncurses5-dev'
    'libncursesw5-dev'
    'xz-utils'
    'tk-dev'
    'libffi-dev'
    'liblzma-dev'
    'libxml2-dev'
    'libxmlsec1-dev'
)

# Apt / apt-get
# Used by `setup-linux`
# APT_UNINSTALL=()
APT_INSTALL=(
	'traceroute'
    'net-tools'
    'libpq-dev' # for pgcli
    'python3-venv' # for pipx
)

for dep in "${APT_PYTHON_DEPS[@]}"; do
    APT_INSTALL+=" $dep"
done



# Homebrew / brew / https://brew.sh
# Used by `setup-mac-brew`
# You can use `setup-mac-brew --configure` to configure some of these.
# HOMEBREW_UNTAPS=()

HOMEBREW_TAPS=()

# 'ffmpeg'
HOMEBREW_FORMULAS=(
)

# HOMEBREW_SLOW_FORMULAS=()

# 'dbeaver-community'
# 'discord'
# 'firefox-developer-edition'
# 'folding-at-home'
# 'microsoft-teams'
# 'skype'
# 'slack'
# 'steam'
# 'vnc-viewer'
# 'zoom'
HOMEBREW_CASKS=(
	'alfred'
	'google-chrome'
	'keka'
	'obsidian'
	'tailscale'
	'vlc'
)

HOMEBREW_FONTS=(
	'font-cantarell'
	'font-cascadia-code'
	'font-fira-code'
	'font-fira-code-nerd-font'
	'font-fira-mono'
	'font-fira-mono-nerd-font'
	'font-hack' # many editors require this
	'font-hasklig'
	'font-ibm-plex' # many editors require this
	'font-inconsolata-go-nerd-font'
	'font-inter' # many apps require this
	'font-jetbrains-mono'
	'font-jetbrains-mono-nerd-font'
	'font-lato'
	'font-maven-pro'
	'font-monoid'
	'font-montserrat'
	'font-open-sans'
	'font-oxygen'
	'font-oxygen-mono'
	'font-roboto'
	'font-roboto-mono'
	'font-source-code-pro' # many editors require this
	'font-ubuntu'
)
# HOMEBREW_UNINSTALL=()        # for casks and formulas
HOMEBREW_ENCODING_INSTALL='no' # '', 'yes', 'no'

# Utilities to install, these are the [setup-util-*] scripts
# Used by `setup-utils`
# You can use `setup-utils --configure` to configure these.
# 'docker'
SETUP_UTILS=(
	'1password-cli'
	'bandwhich'
	'bat'
	'bottom'
	'brew'
	'carapace'
	'cronitor'
	'curl'
	'delta'
	'dig'
	'docker'
	'dust'
	'fd'
	'gh'
	'git'
	'got'
	'grex'
	'gum'
	'httpie'
	'hyperfine'
	'jq'
	'micro'
	'nano'
	'neovim'
	'nu'
	'pv'
	'ripgrep'
	'shellcheck'
	'starship'
	'tealdeer'
	'tokei'
	'trash'
	'warp'
	'wget'
	'wslu'
	'xcode'
    'zoxide'
	'zsh'
)

