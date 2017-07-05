#include <ros/ros.h>
#include <std_msgs/String.h>
#include <std_msgs/Float32MultiArray.h>
#include <std_msgs/MultiArrayLayout.h>
#include <std_msgs/MultiArrayDimension.h>

#include <time.h>
#include <tf/transform_listener.h>

#include <move_base_msgs/MoveBaseAction.h>
#include <actionlib/client/simple_action_client.h>
#include <tf/transform_datatypes.h>

#include <actionlib/client/simple_action_client.h>
#include <sound_play/sound_play.h>

ros::Publisher pub;

void sleepok(int t, ros::NodeHandle &nh)
{
  if (nh.ok())
      sleep(t);
}

void callback(const std_msgs::Float32MultiArray::ConstPtr& msg1, ros::NodeHandle& n)
{	
	if(msg1 -> data.size() == 0){
		return;
	}	
	
	sound_play::SoundClient sc;
	while(n.ok())
	 {
		const char *str1 = "I saw the object.";
	   sc.repeat(str1);
	   sleepok(8, n);
	   sc.stopSaying(str1);
	  }
	
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "prova");
  ros::NodeHandle n;

  ros::Subscriber sub = n.subscribe<std_msgs::Float32MultiArray>("objects", 1000, boost::bind(callback,_1,n));

  ros::spin();
  return 0;
}
