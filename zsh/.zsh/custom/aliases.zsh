# Find a random TODO to fix
alias fixtodo='vim $(ag -l TODO | gshuf | head -n 1)'
