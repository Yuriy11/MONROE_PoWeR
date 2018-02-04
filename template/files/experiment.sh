#!/bin/bash
#experiment to be done twice during hour
cd /opt/monroe/nwjs-v0.21.6-linux-x64
ffmpeg -re -i /opt/monroe/video_lib/Suzie_H264_out_H264_crf_10_1280x720_res.mp4 -f v4l2 /dev/video0
/bin/bash /opt/monroe/nwjs-v0.21.6-linux-x64/start_nw.sh 

for((count=0; count<2; count++))
do

#push the video to virtual webcam

#start extension
sleep 120
#push the video to virtual webcam
ffmpeg -re -i /opt/monroe/video_lib/Coastguard_H264_out_H264_crf_18_1280x720.mp4 -f v4l2 /dev/video0
#start extension
/bin/bash /opt/monroe/nwjs-v0.21.6-linux-x64/start_nw.sh 

sleep 120

#push the video to virtual webcam
ffmpeg -re -i /opt/monroe/video_lib/Foreman_H264_out_H264_crf_11_1280x720.mp4 -f v4l2 /dev/video0
#start extension
/bin/bash /opt/monroe/nwjs-v0.21.6-linux-x64/start_nw.sh 

sleep 120

if [ count = 0 ]; then
	ffmpeg -re -i /opt/monroe/video_lib/Suzie_H264_out_H264_crf_10_1280x720_res.mp4 -f v4l2 /dev/video0
	sleep 600
fi           
done 
