#!/bin/bash
set -e

# Install ansible
if ! [ -x "$(command -v ansible)"]; then
	pip install ansible
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
		echo "[GITCONFIG]: Please provide github name"
		exit 1
	fi

	if [ -z "$2" ]; then
		echo "[GITCONFIG]: Please provide github email"
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

# 

if [[ -f "$DOTFILES_DIR/requirements.yml" ]]; then
	cd "$DOTFILES_DIR"

	ansible-galaxy install -r requirements.yml
fi

ansible-playbook --diff "$DOTFILES_DIR/main.yml"
