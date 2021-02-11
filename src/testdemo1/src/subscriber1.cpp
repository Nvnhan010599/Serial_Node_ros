#include "ros/ros.h"
#include "std_msgs/String.h"
void My_Callback(const std_msgs::String::ConstPtr &msg)
{
	std::string message = msg->data.c_str();
	int i = 0;
	i++;
	std::cout << message<<i << std::endl ;	
	ROS_INFO("Subscriber : [%s]",msg->data.c_str());
}

int main(int argc, char **argv)
{
	ros::init(argc,argv,"subcriber");
	ros::NodeHandle n;
	ros::Subscriber sub = n.subscribe("Chatter1",1,My_Callback);
	ros::spin();
	return 0;

}
