#!/usr/bin/env bash

packages=(
  Sublime-Style-Column-Selection@1.7.5
  atom-beautify@0.33.4
  atom-typescript@13.6.0
  busy-signal@2.0.1
  count-word@0.2.3
  intentions@1.1.5
  linter@2.3.1
  linter-rubocop@2.5.7
  linter-ui-default@1.8.1
  prettier-atom@0.60.0
  teletype@0.13.4
  vim-mode-plus@1.36.4
  vim-mode-plus-keymaps-for-surround@0.2.1
)

apm install ${packages[@]}
