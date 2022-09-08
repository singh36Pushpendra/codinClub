for javaFile in `ls *.java`
do
    fileName=`echo $javaFile | awk -F. '{print $1}'`
    if [ -d $fileName ]
    then
        rm -r $fileName
        echo "If condition runs and removed: $fileName"
    fi
    mkdir $fileName
    cp -r $javaFile $fileName
done
