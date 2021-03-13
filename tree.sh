#!/usr/bin/env bash

tree::_new() {
  echo '# tree'
  echo 'TREE_IGNORE="bin|obj|Build|Temp"'
}

tree::create_dirs() {
  tree -I "${TREE_IGNORE:-}" --noreport -d
}

tree::create_dirs_and_files() {
  tree -I "${TREE_IGNORE:-}" --noreport --dirsfirst
}
