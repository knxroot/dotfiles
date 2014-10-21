OIFS="$IFS"
IFS=$'\n'

for f in $(find ./ -iname "*.flv");
    do 
      ffmpeg -i "$f" -vcodec mpeg4 -vtag xvid "a_dvdflv/$f.avi"
    done
IFS="$OIFS"
