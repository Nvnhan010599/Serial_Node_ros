#include <ros/ros.h>
#include <dynamic_reconfigure/server.h>
#include <serial_test/serial_test_Config.h>
#include <std_msgs/String.h>
#include <sstream>
#include "stdio.h"

std::string convertStr(std::string Kx,float num)
{
	std::stringstream ss;

	
	std::string sK;
	std::string result ;
	ss << num;
	ss >> sK ;
	char ar[7 - sK.length() ];
	if(sK.find('.') != -1)
	    ar[0] = '0';
	else 
	    ar[0] = '.';
	for(int i = 1; i < 7 - sK.length() - 1 ; i++)
	{
		ar[i] = '0';
	}
	std::string arK(ar);
 
	    return Kx + sK + arK;
	
}

void callback(serial_test::serial_test_Config &config, uint32_t level,ros::Publisher *pub)
{
	ROS_INFO("Value %d, %f, %f, %f, %s",
		config.V_sp,
		config.Kp,
		config.Ki,
		config.Kd,
		config.ON_OFF?"True":"False");
	
	std::stringstream ss;

	std_msgs::String message ;
	ros::Rate loop_rate(10);
	if(config.ON_OFF)
	{
		ss << "CxxxxxxY";
		message.data = ss.str();
		pub->publish(message);
	}
	else
	{


		ss << "TxxxxxxY" << convertStr("Kv",config.V_sp) << convertStr("Kp",config.Kp) << convertStr("Ki",config.Ki) << convertStr("Kd",config.Kd);
		message.data = ss.str();
		pub->publish(message);

	}	
	message.data = ss.str();
	pub->publish(message);
	
}

int main(int argc, char** argv)
{
	ros::init(argc,argv,"GUI_node");
	ros::NodeHandle n;
	ros::Publisher para_pub = n.advertise<std_msgs::String>("write",1);
	dynamic_reconfigure::Server<serial_test::serial_test_Config> server;
	dynamic_reconfigure::Server<serial_test::serial_test_Config>::CallbackType f;
	f = boost::bind(&callback,_1,_2,&para_pub);
	server.setCallback(f);
	ros::spin();
	return 0;

}

