rm -rf bin include lib
if [ -e "ffmpeg" ]
then
	cd ffmpeg
	make clean
fi
