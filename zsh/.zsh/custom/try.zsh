# Setup try (https://github.com/tobi/try)
if [ -z "${TRY_LOADED}" ] && command -v -- "try" >/dev/null 2>&1 ; then
	export TRY_LOADED=1
	eval "$(try init)"
fi
