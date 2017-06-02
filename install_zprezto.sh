#!/usr/bin/env zsh

echo ${ZDOTDIR:-$HOME}
setopt EXTENDED_GLOB


for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  echo "Linking $rcfile to ${ZDOTDIR:-$HOME}/.${rcfile:t}"
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

