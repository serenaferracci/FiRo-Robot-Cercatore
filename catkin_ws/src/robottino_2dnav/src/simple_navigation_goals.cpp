#include <ros/ros.h>
#include <move_base_msgs/MoveBaseAction.h>
#include <actionlib/client/simple_action_client.h>
#include <tf/transform_datatypes.h>
#include <sound_play/sound_play.h>

typedef actionlib::SimpleActionClient<move_base_msgs::MoveBaseAction> MoveBaseClient;

 
void sleepok(int t, ros::NodeHandle &nh)
{
                sleep(t);
}


int main(int argc, char** argv){
  ros::init(argc, argv, "simple_navigation_goals");

  //tell the action client that we want to spin a thread by default
  MoveBaseClient ac("move_base", true);

  //wait for the action server to come up
  while(!ac.waitForServer(ros::Duration(5.0))){
    ROS_INFO("Waiting for the move_base action server to come up");
  }

  move_base_msgs::MoveBaseGoal goal;
  tf::Quaternion quaternion;
  geometry_msgs::Quaternion qMsg;
  double radians;
  double theta;

  //we'll send a goal to the robot to move 1 meter forward
  goal.target_pose.header.frame_id = "map";
  goal.target_pose.header.stamp = ros::Time::now();
  
  double x [4] = { -0.865, 7.44, 13.2, 13.1};
  double y [4] = { -1.03, 0.0427, 0.7, 2.3};
  int theta1 [4] = { -120,-110, 0, 90};
  
  for(int j = 0; j < 2; j++){
	  for(int i = 0; i < 4; i++){
		  goal.target_pose.pose.position.x = x[i];
		  goal.target_pose.pose.position.y = y[i];
		  theta = theta1[i];
		  radians = theta * (M_PI/180);
		  quaternion = tf::createQuaternionFromYaw(radians);
		  tf::quaternionTFToMsg(quaternion, qMsg);
		  goal.target_pose.pose.orientation = qMsg;

		  ROS_INFO("Sending goal");
		  ac.sendGoal(goal);

		  ac.waitForResult();
		  
		  if(ac.getState() == actionlib::SimpleClientGoalState::SUCCEEDED)
			ROS_INFO("Hooray, the base moved");
		  else
		  {
			ROS_INFO("The base failed to move for some reason");
			return 0;
		  }
		  sleep(3);
	   }
  }
	
  //per far tornare il robot nella posizione iniziale
  goal.target_pose.pose.position.x = x[0];
  goal.target_pose.pose.position.y = y[0];
  theta = 90;
  radians = theta * (M_PI/180);
  quaternion = tf::createQuaternionFromYaw(radians);
  tf::quaternionTFToMsg(quaternion, qMsg);
  goal.target_pose.pose.orientation = qMsg;

  ROS_INFO("Sending goal");
  ac.sendGoal(goal);

  ac.waitForResult();
  
  if(ac.getState() == actionlib::SimpleClientGoalState::SUCCEEDED)
	ROS_INFO("Hooray, the base moved");
  else
  {
	ROS_INFO("The base failed to move for some reason");
  }
  
   ros::NodeHandle nh;
  sound_play::SoundClient sc;

  sleepok(1, nh);
 
  while(nh.ok())
 {
    const char *str1 = "I didn't found the object. I'm sorry.";
   sc.repeat(str1);
   sleepok(8, nh);
   sc.stopSaying(str1);
  }

  return 0;
}
