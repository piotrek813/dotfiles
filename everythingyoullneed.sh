#!/bin/bash

install_nvim () {
	git clone https://github.com/neovim/neovim
	cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
	git checkout stable	
	cd build && cpack -G DEB && sudo dpkg -i nvim-linux64.deb
}

install_zsh() {
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
}

setup_git() {
	git config --global core.editor "vim"
}

setup_github() {
	gh auth login
	git config --global init.defaultBranch main
}

install_nvm() {
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
}

install_ripgrep() {
	curl -LO https://github.com/BurntSushi/ripgrep/releases/download/13.0.0/ripgrep_13.0.0_amd64.deb
	sudo dpkg -i ripgrep_13.0.0_amd64.deb
	rm -rf ripgrep_13.0.0_amd64.deb

	sudo apt install fd-find
	ln -s $(which fdfind) ~/.local/bin/fd
}

setup_python() {
	sudo apt install pipx
	pipx ensurepath
	pipx install virtualenv
}

setup_popos_workspaces() {
	# https://github.com/pop-os/shell/issues/142

	gsettings set org.gnome.mutter dynamic-workspaces false
	gsettings set org.gnome.desktop.wm.preferences num-workspaces 11

	gsettings set org.gnome.shell.keybindings switch-to-application-1  []
	gsettings set org.gnome.shell.keybindings switch-to-application-2  []
	gsettings set org.gnome.shell.keybindings switch-to-application-3  []
	gsettings set org.gnome.shell.keybindings switch-to-application-4  []
	gsettings set org.gnome.shell.keybindings switch-to-application-5  []
	gsettings set org.gnome.shell.keybindings switch-to-application-6  []
	gsettings set org.gnome.shell.keybindings switch-to-application-7  []
	gsettings set org.gnome.shell.keybindings switch-to-application-8  []
	gsettings set org.gnome.shell.keybindings switch-to-application-9  []

	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-1  "['<Super>1']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-2  "['<Super>2']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-3  "['<Super>3']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-4  "['<Super>4']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-5  "['<Super>5']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-6  "['<Super>6']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-7  "['<Super>7']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-8  "['<Super>8']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-9  "['<Super>9']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-10 "['<Super>0']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-11 "['<Super><Ctrl>1']"

	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-1  "['<Super><Shift>1']"
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-2  "['<Super><Shift>2']"
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-3  "['<Super><Shift>3']"
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-4  "['<Super><Shift>4']"
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-5  "['<Super><Shift>5']"
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-6  "['<Super><Shift>6']"
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-7  "['<Super><Shift>7']"
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-8  "['<Super><Shift>8']"
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-9  "['<Super><Shift>9']"
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-10 "['<Super><Shift>0']"
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-11 "['<Super><Shift><Ctrl>1']"
}

# sudo apt-get update -y
# sudo apt-get install jq moreutils fzf xsel gh zsh ninja-build gettext cmake unzip curl tmux -y
# install_nvim
# install_zsh
# setup_github
# install_nvm
# install_ripgrep
# setup_python
# setup_popos_workspaces
setup_git
