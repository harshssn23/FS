echo Welcome to File Manipulation
echo Enter a file name:
read filename
echo Creating file
echo file created successfully!
touch $filename
echo "1.View File - V"
echo "2.Update Filename - U"
echo "3.Insert Text - I"
echo "4.Search - S"
echo "5.Delete File - D"
echo "6.Exit - E"
while true;
do
echo Enter your choice : 
read choice
case "$choice" in
	"v") cat  $filename
	;;
	"u") echo new filename:
		read newfile
		mv $filename $newfile
		filename=$newfile
	;;
	"i") echo enter text:
		read text
		echo $text > $filename
	;;
	"s") echo Searching....
	;;
	"d") rm $filename
	;;
esac
done
