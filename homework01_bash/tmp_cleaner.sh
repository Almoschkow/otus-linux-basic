#! /bin/bash

#	===========================================================
#	Description:
#	This script removes temporary files from the selected directory
#	===========================================================

echo -e " \nDescription:\nThis script removes temporary files from the selected directory\n "

read -p "Enter the directory: " DIR

echo -e " \n================\nGet directory...\n================\n "

if [ -z "${DIR}" ]; then
	echo "ERROR! Directory is not defined!"
	exit 1
else

	echo "OK! Directory $DIR is defined. "

fi

echo -e " \n========================\nSearching for directory $DIR\n========================\n "

if [ -d "${DIR}" ]; then
        echo "OK! Directory $DIR has been found"

else

        echo "ERROR! Directory $DIR is not found! Please provide the full directory path"
	exit 2

fi

echo -e " \n=====================================================\nRemoving files with .bak, .backup, .tmp extensions...\n=====================================================\n "

for EXT in bak backup tmp; do
	for FILE in *."${EXT}"; do
		echo -e "\nChecking if a file with $EXT extension exists"
		if [ -e "${FILE}" ]; then
			echo -e " \nFound file $FILE..."
			rm "$FILE"
			echo -e " \nFile $FILE has been deleted"

		else
			echo -e " \nFiles with $EXT extension not found\n "
		fi
	done
done

echo -e " \n=================\nScript completed successfully!\n=================\n "
