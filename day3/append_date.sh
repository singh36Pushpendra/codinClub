for log1File in `ls *.log.1`
do
    basename=`echo $log1File | awk -F. '{print $1}'`
    extension=`echo $log1File | awk -F. '{print $2}'`
    current_date=`date +"%d%m%Y"`
    newfilename=`echo $basename.$current_date.$extension`
    mv $log1File $newfilename
    echo "File '$log1File' renamed to '$newfilename'"
done
