# Set volume in range (0-7)
function vol() {
	osascript -e "set volume $1"
}

# Create a data URL from a file
function dataurl() {
	local mimeType=$(file -b --mime-type "$1")
	if [[ $mimeType == text/* ]]; then
		mimeType="${mimeType};charset=utf-8"
	fi
	echo "data:${mimeType};base64,$(openssl base64 -in "$1" | tr -d '\n')"
}

# Naive Google search from the command line
function google () { 
	query="$1"
	shift
	for keyword in "$@"
	do 
		query="$query+$keyword"
	done
	open https://google.com/search?q=$query; 
	unset query
}
