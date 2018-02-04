#!/bin/sh

while [ 1 ] ; do
  ffmpeg -re -i Suzie_H264_out_H264_crf_15_1920x1080.mp4 -f v4l2 /dev/video0
  sleep 15

done
