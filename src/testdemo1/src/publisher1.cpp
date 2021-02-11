#include "ros/ros.h"
#include "std_msgs/String.h"
#include <sstream>
#include <iostream>

using namespace std;

int main(int argc, char **argv)
{
	ros::init(argc, argv, "publisher1");
	ros::NodeHandle n;
	ros::Publisher chat_pub = n.advertise<std_msgs::String>("Chatter1",1);
	while(ros::ok())
	{
		std::string inputString;
		cout << "Publisher1 :";
		std::getline(std::cin, inputString);
		std_msgs::String msg ;
		msg.data = inputString;
		chat_pub.publish(msg);
		ros::spinOnce();
	}
	return 0;
}
