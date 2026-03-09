# Load all environment variables from ~/.env if it exists
set -o allexport
[ -f "$HOME/.env" ] && source "$HOME/.env"
set +o allexport
