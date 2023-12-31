#node ../bin/text2mp3.js ./texts/S1 ./voice/S1.mp3
#node ../bin/text2mp3.js ./texts/S2 ./voice/S2.mp3
#node ../bin/text2mp3.js ./texts/S3 ./voice/S3.mp3
#node ../bin/text2mp3.js ./texts/S4 ./voice/S4.mp3
#node ../bin/text2mp3.js ./texts/S5 ./voice/S5.mp3
#node ../bin/text2mp3.js ./texts/S6 ./voice/S6.mp3
#node ../bin/text2mp3.js ./texts/S7 ./voice/S7.mp3
#node ../bin/text2mp3.js ./texts/S8 ./voice/S8.mp3
#node ../bin/text2mp3.js ./texts/S9 ./voice/S9.mp3
#node ../bin/text2mp3.js ./texts/S10 ./voice/S10.mp3


#ffmpeg -loop 1 -i ./slides/S1.png  -vf "scale=960:540" -c:v libaom-av1 -crf 0 -t 129 -r 24 -pix_fmt yuva444p -b:v 4000k ./video/S1.mp4
#ffmpeg -loop 1 -i ./slides/S2.png  -vf "scale=960:540" -c:v libaom-av1 -crf 0 -t 240 -r 24 -pix_fmt yuva444p -b:v 4000k ./video/S2.mp4
#ffmpeg -loop 1 -i ./slides/S3.png  -vf "scale=960:540" -c:v libaom-av1 -crf 0 -t 157 -r 24 -pix_fmt yuva444p -b:v 4000k ./video/S3.mp4
#ffmpeg -loop 1 -i ./slides/S4.png  -vf "scale=960:540" -c:v libaom-av1 -crf 0 -t 131 -r 24 -pix_fmt yuva444p -b:v 4000k ./video/S4.mp4
#ffmpeg -loop 1 -i ./slides/S5.png  -vf "scale=960:540" -c:v libaom-av1 -crf 0 -t 141 -r 24 -pix_fmt yuva444p -b:v 4000k ./video/S5.mp4
#ffmpeg -loop 1 -i ./slides/S6.png  -vf "scale=960:540" -c:v libaom-av1 -crf 0 -t 138 -r 24 -pix_fmt yuva444p -b:v 4000k ./video/S6.mp4
#ffmpeg -loop 1 -i ./slides/S7.png  -vf "scale=960:540" -c:v libaom-av1 -crf 0 -t 153 -r 24 -pix_fmt yuva444p -b:v 4000k ./video/S7.mp4
#ffmpeg -loop 1 -i ./slides/S8.png  -vf "scale=960:540" -c:v libaom-av1 -crf 0 -t 170 -r 24 -pix_fmt yuva444p -b:v 4000k ./video/S8.mp4
#ffmpeg -loop 1 -i ./slides/S9.png  -vf "scale=960:540" -c:v libaom-av1 -crf 0 -t 106 -r 24 -pix_fmt yuva444p -b:v 4000k ./video/S9.mp4
#ffmpeg -loop 1 -i ./slides/S10.png  -vf "scale=960:540" -c:v libaom-av1 -crf 0 -t 45 -r 24 -pix_fmt yuva444p -b:v 4000k ./video/S10.mp4

cd ./voice
ffmpeg -f concat -safe 0 -i ./files -c copy ../temp/allsound.mp3
cd ../video
ffmpeg -f concat -safe 0 -i ./files -c copy ../temp/allvideo.mp4
cd ..
ffmpeg -i ./temp/allsound.mp3 -i ./temp/allvideo.mp4 -c:v copy -c:a aac ./output/fullMovie.mp4


