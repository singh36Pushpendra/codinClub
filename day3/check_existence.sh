dir=$1
if [ -d $dir ]
then
    echo "Folder $dir already exist!"
else
    mkdir $dir
    echo "Folder $dir created successfully!"
fi
