#include "ros/ros.h"
#include <dynamic_reconfigure/server.h>
#include <vidu1/vidu1_Config.h>

void callback(vidu1::vidu1_Config &config, uint32_t level)
{
	ROS_INFO("Reconfigure Request : %d %d %d %d",
		config.int_param,
		config.double_param,
		config.str_param.c_str(),
		config.bool_param? "True":"False",
		config.size);
}
int main(int argc, char **argv)
{
	ros::init(argc,argv, "example4_dynamic_reconfigure");
	dynamic_reconfigure::Server<vidu1::vidu1_Config> server;
	dynamic_reconfigure::Server<vidu1::vidu1_Config>::CallbackType f;
	f = boost::bind(&callback, _1,_2);
	server.setCallback(f);
	ros::spin();
	return 0;
}