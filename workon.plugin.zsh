workon() {
  if [[ -z $WORK_DIR ]]; then
    echo 'WORK_DIR is not set';
    return 1;
  elif [[ -z $EDITOR ]]; then
    echo 'EDITOR is not set';
    return 1;
  fi

  if [ "$#" -eq 1 ]; then
    DIR=$(find $WORK_DIR -maxdepth 1 -mindepth 1 | fzf --query="$1" --select-1);
  else
    DIR=$(find $WORK_DIR -maxdepth 1 -mindepth 1 | fzf);
  fi

  if [[ ! -z "$DIR" ]]; then
    cd $DIR;
    $EDITOR .;
  fi
}
