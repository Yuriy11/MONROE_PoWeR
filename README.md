PoWeR team extension is stored in this repository.
Steps to execute:
1.	Install Kurento media server at your server: http://doc-kurento.readthedocs.io/en/latest/user/installation.html
2.	At the same machine you should run 2 java applications:
	2.1. 	kurento-qos It is build for maven, command to execute sudo mvn compile exec:java 
	2.2. 	kurento-recording It is build for maven, command to execute sudo mvn compile exec:java
The most important files here are:
1.	index.js allows you to edit WebRTC constraints such as: framerate, video width, video height, etc. There is a perfect website, which shows how to form minimal constraints: https://webrtc.github.io/samples/src/content/peerconnection/constraints/
You can read a lot more about Kurento platform at this link:
http://doc-kurento.readthedocs.io/en/latest/index.html
3.	In this repository is also held template folder for Monroe container for minimal functionality you should edit in-dex.html file before. It is nacessary to change server address.
After all these operations it is possible to run container.
There is an alternative for v4l2loopback and ffmpeg: google-chrome launch argument which was created to test getUserMedia() function for developers. https://testrtc.com/y4m-video-chrome/

