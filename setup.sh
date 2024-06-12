#!/bin/bash
set -e

# Setup python and pip
if ! [[ -x "$(command -v pip)" ]]; then
	sudo python3 -m ensurepip || sudo apt install pip
	echo "[dotfiles]: pip installed"
fi

# Install ansible
if ! [ -x "$(command -v ansible)"]; then
	pip install ansible --quiet
	echo "[dotfiles]: ansible installed"
fi


# Setup ssh keys
SSH_DIR="$HOME/.ssh"

if ! [[ -f "$SSH_DIR/id_rsa" ]]; then
	mkdir -p "$SSH_DIR"
	chmod 700 "$SSH_DIR"
	ssh-keygen -b 4096 -t rsa -f "$SSH_DIR/id_rsa" -N "" -C "$USER@HOSTNAME"

	cat "$SSH_DIR/id_rsa.pub" >>"$SSH_DIR/authorized_keys"
	chmod 600 "$SSH_DIR/authorized_keys"
fi

# Check if dotfiles directory exists
DOTFILES_DIR="$HOME/.dotfiles"

if ! [[ -f "$DOTFILES_DIR" ]]; then
	mkdir -p "$DOTFILES_DIR"
fi

# Setup gitconfig
if ! [[ -f "$HOME/.gitconfig" ]]; then
	# echo "[GITCONFIG]: Your global git config will be saved to ~/.gitconfig"

	GIT_NAME="$1"
	GIT_EMAIL="$2"

	if [ -z "$1" ]; then
		echo "[dotfiles]: Please provide github name for gitconfig"
		exit 1
	fi

	if [ -z "$2" ]; then
		echo "[dotfiles]: Please provide github email for gitconfig"
		exit 1
	fi

	echo $1
	echo $2

	if [[ -f "$DOTFILES_DIR/templates/gitconfig" ]]; then
		
		cd "$DOTFILES_DIR"
		cat "templates/gitconfig" | sed -e "s/NAME/$GIT_NAME/g" -e "s/EMAIL/$GIT_EMAIL/g" > "$HOME/.gitconfig"

		cat "$HOME/.gitconfig"
	fi
fi



# Run Ansible
if [[ -f "$DOTFILES_DIR/ansible/requirements.yml" ]]; then
	cd "$DOTFILES_DIR"

	ansible-galaxy install -r ansible/requirements.yml
	echo "[dotfiles]: Installed Ansible requirements"
fi


ansible-playbook -i ansible/hosts ansible/main.yml --ask-become-pass
echo "[dotfiles]: Running Ansible playbook"
