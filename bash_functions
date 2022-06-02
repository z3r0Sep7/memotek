function mkde(){
  mkdir -p "$1" && cd "$_"
  if [ ! -z "$2" ]; then
    touch "$2"
  fi
}

function mkdf(){
  mkdir -p "$1" && cd "$_"
  if [ ! -z "$2" ]; then
    vi "$2"
  fi
}

function cl() {
  DIR="$*";
      # if no DIR given, go home
      if [ $# -lt 1 ]; then
              DIR=$HOME;
  fi;
  builtin cd "${DIR}" && \
  # use your preferred ls command
      l
}

function tcn() {
  trash="~/.local/share/Trash"
  echo "$trash/$1"
  if [ -d "$trash/$1/" ]; then
  	echo "Exists ..."
  	mv --force -t $trash $1.$(date +%H%M%S)
  else 
  	echo "No Exists ..."
  	mv --force -t $trash $1
  fi
}
