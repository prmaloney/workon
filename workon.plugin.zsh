workon() {
  if [ -z $WORK_DIR ]; then
    echo 'WORK_DIR is not set';
    return 1;
  fi

  if [ "$#" -eq 1 ]; then
    cd "$(find $WORK_DIR -maxdepth 1 -mindepth 1 | fzf --query="$1" --select-1)"; $EDITOR;
  else
    cd "$(find $WORK_DIR -maxdepth 1 -mindepth 1 | fzf)"; $EDITOR;
  fi
}
