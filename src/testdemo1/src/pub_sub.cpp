#include "ros/ros.h"
#include "std_msgs/String.h"
#include <sstream>
void My_CallBackNode1(const std_msgs::String::ConstPtr &msg)
{
	//pass;
	std::cout << "Node1" << msg->data << std::endl;
}

void My_CallBackNode2(const std_msgs::String::ConstPtr &msg)
{
	//pass;
	std::cout << "Node2" << msg->data.c_str() << std::endl;
}

int main(int argc, char **argv)
{
	ros::init(argc,argv,"pub_sub");
	ros::NodeHandle node;
	ros::Publisher pub1 = node.advertise<std_msgs::String>("Chatter1",1);
	ros::Rate loop_rate(1);
	
	ros::Subscriber sub1 = node.subscribe("DHBKHCM",1,My_CallBackNode1);

	
	int i = 0;

	while(ros::ok())
	{
		std::string message = "Hello WORLD" ;
		std_msgs::String msg;
		
		i++;
		std::stringstream ss;
		ss<< message << " " << i << std::endl ;
		msg.data = ss.str();
		ROS_INFO(" pub_sub : %s ", msg.data.c_str());
		pub1.publish(msg);
		ros::spinOnce();
		loop_rate.sleep();
		
	}
	
	return 0;



}
