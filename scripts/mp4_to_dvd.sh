OIFS="$IFS"
IFS=$'\n'

for f in $(find ./ -iname "*.mp4");
    do 
      ffmpeg -i "$f" -vcodec mpeg4 -vtag xvid "a_dvd/$f.avi"
    done
IFS="$OIFS"
