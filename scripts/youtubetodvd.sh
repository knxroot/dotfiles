URL=$1
FILENAME=$(youtube-dl -t $URL --skip-download --get-filename)
youtube-dl -t $URL -u USUARIOYOUTUBE -p PASSYOUTUBE && ffmpeg -i $FILENAME -vcodec mpeg4 -vtag xvid $FILENAME.avi
