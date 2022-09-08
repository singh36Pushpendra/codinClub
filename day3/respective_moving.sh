for textFile in `ls *.txt`
do
    basename=`echo $textFile | awk -F. '{print $1}'`
    if [ -d $basename ]
    then
        rm -rf $basename
        echo "Directory '$basename' removed"
    fi
    mkdir $basename
    cp -r $textFile $basename
    echo "File '$textFile' moved successfully to '$basename' folder"
done
