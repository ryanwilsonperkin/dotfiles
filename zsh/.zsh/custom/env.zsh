# Load all environment variables from ~/.env if it exists
set -o allexport
if [ -f "$HOME/.env" ]
then
	source "$HOME/.env" 
fi
set +o allexport
