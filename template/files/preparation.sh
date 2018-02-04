#!/bin/bash
#this file - preparations
#setup virtual vebcam driver
cd /opt/monroe/v4l2loopback-master
/bin/bash opt/monroe/v4l2loopback-master/installCam.sh
exec make
sudo make install
#extract nwjs client
cd /opt/monroe
tar -xvf nwjs-v0.21.6-linux-x64.tar.gz
mv /opt/monroe/index.html /opt/monroe/nwjs-v0.21.6-linux-x64
mv /opt/monroe/package.json /opt/monroe/nwjs-v0.21.6-linux-x64
mv /opt/monroe/start_nw.sh /opt/monroe/nwjs-v0.21.6-linux-x64
#move our client files
cd /opt/monroe/video_lib
/bin/bash /opt/monroe/video_lib/rev_and_concat_videos.sh
#process video files
cd  /opt/monroe
#next file - exp
/bin/bash /opt/monroe/experiment.sh
done
