#include "ros/ros.h"
#include "vidu1/vidu1_msg1.h"
#include <sstream>

int main(int argc, char **argv)
{
	ros::init(argc,argv, "example3_a");
	ros::NodeHandle n;
	ros::Publisher pub = n.advertise<vidu1::vidu1_msg1>("message0",1000);
	ros::Rate loop_rate(10);
	while(ros::ok())
	{
		vidu1::vidu1_msg1 msg;
		msg.A = 1;
		msg.B = 2;
		msg.C = 3;
		pub.publish(msg);
		ros::spinOnce();
		loop_rate.sleep();
	}

}