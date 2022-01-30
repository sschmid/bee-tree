: "${TREE_IGNORE:="bin|obj|Build|Temp"}"

tree::help() {
  cat << 'EOF'
template:

  TREE_IGNORE="bin|obj|Build|Temp" # default

usage:

  dirs             print tree of dirs only
  dirs_and_files   print tree of dirs and files

requirements:

  tree

EOF
}

tree::dirs() {
  tree -I "${TREE_IGNORE:-}" --noreport -d
}

tree::dirs_and_files() {
  tree -I "${TREE_IGNORE:-}" --noreport --dirsfirst
}
