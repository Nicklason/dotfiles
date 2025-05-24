#!/bin/bash

rm ~/.zshrc
stow -t ~ zsh

stow -t ~ tmux
