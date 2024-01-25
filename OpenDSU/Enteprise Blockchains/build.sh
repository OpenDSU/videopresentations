#node ../../bin/text2mp3.js ./texts/S1 ./voice/S1.mp3
#node ../../bin/text2mp3.js ./texts/S2 ./voice/S2.mp3
#node ../../bin/text2mp3.js ./texts/S3 ./voice/S3.mp3
#node ../../bin/text2mp3.js ./texts/S4 ./voice/S4.mp3
#node ../../bin/text2mp3.js ./texts/S5 ./voice/S5.mp3
#node ../../bin/text2mp3.js ./texts/S6 ./voice/S6.mp3
#node ../../bin/text2mp3.js ./texts/S7 ./voice/S7.mp3
#node ../../bin/text2mp3.js ./texts/S8 ./voice/S8.mp3
#exit
#ffmpeg -loop 1 -i ./slides/S1.png  -vf "scale=960:540" -c:v libaom-av1 -crf 0 -t 1 -r 24 -pix_fmt yuva444p -b:v 4000k ./video/S1.mp4
#ffmpeg -i ./voice/S1.mp3 -i ./video/S1.mp4 -c:v copy -c:a aac ./temp/S1.mp4
#ffmpeg -loop 1 -i ./slides/S2.png  -vf "scale=960:540" -c:v libaom-av1 -crf 0 -t 1 -r 24 -pix_fmt yuva444p -b:v 4000k ./video/S2.mp4
#ffmpeg -i ./voice/S2.mp3 -i ./video/S2.mp4 -c:v copy -c:a aac ./temp/S2.mp4
#ffmpeg -loop 1 -i ./slides/S3.png  -vf "scale=960:540" -c:v libaom-av1 -crf 0 -t 1 -r 24 -pix_fmt yuva444p -b:v 4000k ./video/S3.mp4
#ffmpeg -i ./voice/S3.mp3 -i ./video/S3.mp4 -c:v copy -c:a aac ./temp/S3.mp4
#ffmpeg -loop 1 -i ./slides/S4.png  -vf "scale=960:540" -c:v libaom-av1 -crf 0 -t 1 -r 24 -pix_fmt yuva444p -b:v 4000k ./video/S4.mp4
#ffmpeg -i ./voice/S4.mp3 -i ./video/S4.mp4 -c:v copy -c:a aac ./temp/S4.mp4
#ffmpeg -loop 1 -i ./slides/S5.png  -vf "scale=960:540" -c:v libaom-av1 -crf 0 -t 1 -r 24 -pix_fmt yuva444p -b:v 4000k ./video/S5.mp4
#ffmpeg -i ./voice/S5.mp3 -i ./video/S5.mp4 -c:v copy -c:a aac ./temp/S5.mp4
#ffmpeg -loop 1 -i ./slides/S6.png  -vf "scale=960:540" -c:v libaom-av1 -crf 0 -t 1 -r 24 -pix_fmt yuva444p -b:v 4000k ./video/S6.mp4
#ffmpeg -i ./voice/S6.mp3 -i ./video/S6.mp4 -c:v copy -c:a aac ./temp/S6.mp4
#ffmpeg -loop 1 -i ./slides/S7.png  -vf "scale=960:540" -c:v libaom-av1 -crf 0 -t 1 -r 24 -pix_fmt yuva444p -b:v 4000k ./video/S7.mp4
#ffmpeg -i ./voice/S7.mp3 -i ./video/S7.mp4 -c:v copy -c:a aac ./temp/S7.mp4
#ffmpeg -loop 1 -i ./slides/S6.png  -vf "scale=960:540" -c:v libaom-av1 -crf 0 -t 1 -r 24 -pix_fmt yuva444p -b:v 4000k ./video/S8.mp4
#ffmpeg -i ./voice/S8.mp3 -i ./video/S8.mp4 -c:v copy -c:a aac ./temp/S8.mp4

cd ./temp
ffmpeg -f concat -safe 0 -i ./files -c copy ../output/EntepriseBlockchain.mp4


