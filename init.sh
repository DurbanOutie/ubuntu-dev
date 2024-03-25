#! /bin/sh
sudo apt-get update
sudo apt-get -y upgrade
sudo apt install -y vim


sudo apt install -y git
git config --global init.defaultBranch main

echo "git username:"
read git_username
git config --global user.name "$git_username"

echo "git email"
read git_email
git config --global user.email "$git_email"

git config --global core.editor vim

echo "key for git remote"
ssh-keygen -t ed25519 -C "$git_username"
ssh-add ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub 

mkdir workspace

