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

# Run ansible
DOTFILES_DIR="$HOME/.dotfiles"

if ! [[ -f "$DOTFILES_DIR" ]]; then
	mkdir -p "$DOTFILES_DIR"
fi

if [[ -f "$DOTFILES_DIR/requirements.yml" ]]; then
	cd "$DOTFILES_DIR"

	ansible-galaxy install -r requirements.yml
fi

ansible-playbook --diff "$DOTFILES_DIR/main.yml"
