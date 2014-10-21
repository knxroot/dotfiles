while read line         
do         
   sh youtubetodvd.sh "$line"
done < $1
