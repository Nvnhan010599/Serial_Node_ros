# Serial_Node_ros
## <font color = "red"> Reference </font>
<p><b>http://wiki.ros.org/serial</b></p>
<p><b>https://www.programmersought.com/article/6748181306/</b></p>
In Ubuntu we use cutecom to view serial port
  - installation : $ sudo apt-get install cutecom 
  - use : $ sudo cutecom 
  - increase access permissions : <i><b>$ sudo chmod 666 /dev/ttyUSB0</i></b> (<b>/dev/ttyUSB0</b> is name of port )
  - View name port : dmesg | grep ttyS* 
  ...
<p><b>https://www.programmersought.com/article/40051437099/</b></p>
  - download serial package : $ sudo apt-get install ros-kinetic-serial #ros for Kinect version
    +  Enter the location of the downloaded package : roscd serial
    + If success: $:/opt/ros/kinetic/share/serial
  - ....


