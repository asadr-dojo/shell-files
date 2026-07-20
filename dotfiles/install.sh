#!/usr/bin/env bash

# Notice there are no spaces around the question mark
read "user_name?What is your user name. This is usually first_name followed by the first letter of last name (for example asadr if your name is Asad Rauf)?Press Enter after typing the name "

echo "Awesome, setting up the environment for ${user_name}!"
echo "export USER_NAME=\"${user_name}\"" >> ~/.zshrc

# dotfiles directory
dotfiledir="${HOME}/dot-files"

# list of files/folders to copy in ${homedir}
files=(zshrc zprofile zprompt bash_profile zsh_aliases shared_prompt)

# copy dotfiles to home directory
for file in "${files[@]}"; do
    echo "Copying $file to home directory."
    cp "${dotfiledir}/.${file}" "${HOME}/.${file}"
done

# Run the Homebrew Script
./brew.sh

# change default editor for git to vs code
git config --global core.editor "code --wait"


echo "Installation Complete!"
