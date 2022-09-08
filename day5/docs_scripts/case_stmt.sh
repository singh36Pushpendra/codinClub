for filename in `ls`
do
	ext=`echo $filename | awk -F. '{print $2}'`
	case $ext in
		java)
			echo "$filename : Java source file"
			;;
		o)
			echo "$filename : Object file"
			;;
		txt)
			echo "$filename : Text file"
			;;
		sh)
			echo "$filename : Shell script file"
			;;
		*)
			echo "$filename : Not processed"
			;;
	esac
done
