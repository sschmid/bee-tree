: "${TREE_IGNORE:="bin|obj|Build|Temp"}"

tree::help() {
  cat << 'EOF'
Create dir and file overviews with tree - https://github.com/sschmid/bee-tree

template:

  TREE_IGNORE="bin|obj|Build|Temp" # default

usage:

  dirs             print tree of dirs only
  dirs_and_files   print tree of dirs and files

bee dependencies:

  none

dependencies:

  tree

EOF
}

tree::dirs() {
  tree -I "${TREE_IGNORE:-}" --noreport -d
}

tree::dirs_and_files() {
  tree -I "${TREE_IGNORE:-}" --noreport --dirsfirst
}
