folder=~/Desktop/backup
if [ -d $folder ]
then
    rm -rf $folder
    echo "'$folder' folder removed"
fi

mkdir $folder
echo "Folder '$folder' created!"

for file in `ls x.pdf y.docx z.mp3`
do
    subFolder=`echo $file | awk -F. '{print $1}'`
    subSubFolder=`echo $file | awk -F. '{print $2}'`

    mkdir -p $folder/$subFolder/$subSubFolder
    echo "Folders '$folder/$subFolder' and '$folder/$subFolder/$subSubFolder' created!"

    cp -r $file $folder/$subFolder/$subSubFolder
    echo "File '$folder/$subFolder/$subSubFolder/$file' copied successfully!"
    echo ""
done
