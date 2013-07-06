for file in $(cat dotfiles)
do
	cp -ri ~/$file ./$file
done
unset file

