#node ../../bin/text2mp3.js ./texts/S1 ./voice/S1.mp3
#exit

#ffmpeg -loop 1 -i ./slides/S1.png  -vf "scale=960:540" -c:v libaom-av1 -crf 0 -t 212 -r 24 -pix_fmt yuva444p -b:v 4000k ./video/S1.mp4
ffmpeg -loop 1 -i ./slides/S1.png  -vf "scale=960:540" -c:v libaom-av1 -crf 0 -t 10 -r 1 -pix_fmt yuva444p -b:v 4000k ./video/S1.mp4

cd ./voice
ffmpeg -f concat -safe 0 -i ./files -c copy ../temp/allsound.mp3
cd ../video
ffmpeg -f concat -safe 0 -i ./files -c copy ../temp/allvideo.mp4
cd ..
ffmpeg -i ./temp/allsound.mp3 -i ./temp/allvideo.mp4 -c:v copy -c:a aac ./output/OpenDSUPitch.mp4


