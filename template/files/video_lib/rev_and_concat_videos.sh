#!/bin/bash


ffmpeg -i Suzie_H264_out_H264_crf_10_1280x720.mp4 -an -qscale 1 %06d.jpg

cat $(ls -t *.jpg) | ffmpeg -f image2pipe -vcodec mjpeg -r 23 -i - -vcodec libx264 -crf 10 -threads 0 -acodec flac Suzie_H264_out_H264_crf_10_1280x720_rev.mp4

rm *.jpg

ffmpeg -f concat -i sinstr.txt -c copy Suzie_H264_out_H264_crf_10_1280x720_res.mp4 &&


rm Suzie_H264_out_H264_crf_10_1280x720.mp4

rm Suzie_H264_out_H264_crf_10_1280x720_rev.mp4

ffmpeg -i Coastguard_H264_out_H264_crf_18_1280x720.mp4 -an -qscale 1 %06d.jpg

cat $(ls -t *.jpg) | ffmpeg -f image2pipe -vcodec mjpeg -r 23 -i - -vcodec libx264 -crf 18 -threads 0 -acodec flac Coastguard_H264_out_H264_crf_18_1280x720_rev.mp4

rm *.jpg

ffmpeg -f concat -i cinstr.txt -c copy Coastguard_H264_out_H264_crf_18_1280x720_res.mp4 &&


rm Coastguard_H264_out_H264_crf_18_1280x720.mp4

rm Coastguard_H264_out_H264_crf_18_1280x720_rev.mp4


ffmpeg -i Foreman_H264_out_H264_crf_11_1280x720.mp4 -an -qscale 1 %06d.jpg

cat $(ls -t *.jpg) | ffmpeg -f image2pipe -vcodec mjpeg -r 23 -i - -vcodec libx264 -crf 11 -threads 0 -acodec flac Foreman_H264_out_H264_crf_11_1280x720_rev.mp4


rm *.jpg

ffmpeg -f concat -i finstr.txt -c copy Foreman_H264_out_H264_crf_11_1280x720_res.mp4 &&


rm Foreman_H264_out_H264_crf_11_1280x720.mp4

rm Foreman_H264_out_H264_crf_11_1280x720_rev.mp4
