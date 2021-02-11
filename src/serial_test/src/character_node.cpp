#include "ros/ros.h"
#include "std_msgs/String.h"
#include "serial_test/velocity.h"

#include <iostream>
#include <sstream>
#include <vector>

using std::vector;
vector<std::string>split(const std::string &s, char delim) 
{
    vector<std::string> result;
    std::stringstream ss (s);
    std::string item;

    while (getline (ss, item, delim))
    {
        result.push_back (item); // them chuoi vao vector result
    }

    return result;
}

void Read_Callback(const std_msgs::String::ConstPtr &msg, ros::Publisher *rp)
{
	std::string message = msg->data.c_str();
	std::cout << message<<std::endl;
	vector <std::string> v = split(message, '~');
	std::cout << v[1]<< std::endl;
	serial_test::velocity msg_;

        msg_.VelocityMotor = atoi(v[1].c_str());

	rp->publish(msg_);
	ROS_INFO("[%s]",message);
}

int main(int argc, char** argv)
{
	ros::init(argc,argv,"character_node");
	ros::NodeHandle n;
	ros::Publisher serial_pub_vel = n.advertise<serial_test::velocity>("Velocity",1);
	ros::Subscriber serial_sub = n.subscribe<std_msgs::String>("read",1,boost::bind(&Read_Callback,_1,&serial_pub_vel));
//ros::Subscriber sub = node.subscribe<uhf_rfid_api::UhfRfid>("messageepc", 0, boost::bind(&rfid_callback, _1, &pub_vt));
	ros::spin();
	return 0;

}

