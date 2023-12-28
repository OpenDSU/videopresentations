ffmpeg -loop 1 -i ./slides/S1.png  -vf "scale=960:540" -c:v libaom-av1 -crf 0 -t 68 -r 24 -pix_fmt yuva444p -b:v 4000k ./video/S1.mp4
ffmpeg -loop 1 -i ./slides/S2.png  -vf "scale=960:540" -c:v libaom-av1 -crf 0 -t 127 -r 24 -pix_fmt yuva444p -b:v 4000k ./video/S2.mp4
ffmpeg -loop 1 -i ./slides/S3.png  -vf "scale=960:540" -c:v libaom-av1 -crf 0 -t 79 -r 24 -pix_fmt yuva444p -b:v 4000k ./video/S3.mp4
ffmpeg -loop 1 -i ./slides/S4.png  -vf "scale=960:540" -c:v libaom-av1 -crf 0 -t 166 -r 24 -pix_fmt yuva444p -b:v 4000k ./video/S4.mp4
ffmpeg -loop 1 -i ./slides/S5.png  -vf "scale=960:540" -c:v libaom-av1 -crf 0 -t 151 -r 24 -pix_fmt yuva444p -b:v 4000k ./video/S5.mp4
ffmpeg -loop 1 -i ./slides/S6.png  -vf "scale=960:540" -c:v libaom-av1 -crf 0 -t 180 -r 24 -pix_fmt yuva444p -b:v 4000k ./video/S6.mp4
ffmpeg -loop 1 -i ./slides/S7.png  -vf "scale=960:540" -c:v libaom-av1 -crf 0 -t 245 -r 24 -pix_fmt yuva444p -b:v 4000k ./video/S7.mp4
ffmpeg -loop 1 -i ./slides/S8.png  -vf "scale=960:540" -c:v libaom-av1 -crf 0 -t 150 -r 24 -pix_fmt yuva444p -b:v 4000k ./video/S8.mp4
ffmpeg -loop 1 -i ./slides/S9.png  -vf "scale=960:540" -c:v libaom-av1 -crf 0 -t 178 -r 24 -pix_fmt yuva444p -b:v 4000k ./video/S9.mp4
ffmpeg -loop 1 -i ./slides/S10.png  -vf "scale=960:540" -c:v libaom-av1 -crf 0 -t 115 -r 24 -pix_fmt yuva444p -b:v 4000k ./video/S10.mp4

cd ./voice
ffmpeg -f concat -safe 0 -i ./files -c copy ../temp/allsound.mp3
cd ../video
ffmpeg -f concat -safe 0 -i ./files -c copy ../temp/allvideo.mp4
cd ..
ffmpeg -i ./temp/allsound.mp3 -i ./temp/allvideo.mp4 -c:v copy -c:a aac ./output/fullMovie.mp4


