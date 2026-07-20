#!/usr/bin/env zsh

# Install Homebrew if it isn't already installed
if ! command -v brew &>/dev/null; then
    echo "Homebrew not installed. Installing Homebrew."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    # Attempt to set up Homebrew PATH automatically for this session
    if [ -x "/opt/homebrew/bin/brew" ]; then
        # For Apple Silicon Macs
        echo "Configuring Homebrew in PATH for Apple Silicon Mac..."
        export PATH="/opt/homebrew/bin:$PATH"
    fi
else
    echo "Homebrew is already installed."
fi

# Verify brew is now accessible
if ! command -v brew &>/dev/null; then
    echo "Failed to configure Homebrew in PATH. Please add Homebrew to your PATH manually."
    exit 1
fi

# Update Homebrew and Upgrade any already-installed formulae and casks
# (brew upgrade has upgraded casks by default since Homebrew 3.2)
brew update
brew upgrade
brew cleanup

# Define an array of packages to install using Homebrew.
packages=(
    "python@3.12"
    "python@3.13"
    "eza"
    "gemini-cli"
    "yq"
    "tree"
)

# brew install is idempotent — already-installed packages are skipped with a notice.
brew install "${packages[@]}"

apps=(
    "copilot-cli"
    "gcloud-cli"
    "zed"
    "warp"
)

brew install --cask "${apps[@]}"
