HOME_FOLDER="home"


# Copy all config files
if [ -d $HOME_FOLDER ]
then
	echo "Copying files to home folder.."
	cp -a ./$HOME_FOLDER/. ~/
else
	echo "'$HOME_FOLDER' folder doesn't exist"
fi

echo "Done installing files"

