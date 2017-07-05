#include <ros/ros.h>
#include <std_msgs/String.h>
#include <ar_track_alvar_msgs/AlvarMarkers.h>

#include <time.h>
#include <tf/transform_listener.h>

#include <move_base_msgs/MoveBaseAction.h>
#include <actionlib/client/simple_action_client.h>
#include <tf/transform_datatypes.h>

#include <actionlib/client/simple_action_client.h>

ros::Publisher pub;
typedef actionlib::SimpleActionClient<move_base_msgs::MoveBaseAction> MoveBaseClient;

float x, y, theta;
void callback(const ar_track_alvar_msgs::AlvarMarkers::ConstPtr& msg1, tf::TransformListener *listener, MoveBaseClient* ac)
{	
	if(msg1 -> markers.size() == 0){
		return;
	}
	
	
	ac->cancelAllGoals();
	
	//prendi odometria del robot
	tf::StampedTransform transform;
	ros::Time t = ros::Time::now();

    if(listener->canTransform("/base_link", "/map", t, NULL)){
		listener->lookupTransform("/base_link", "/map",t, transform);
		tf::Vector3 v = transform.getOrigin();
		
		x = v.getX();
		y = v.getY();
		
		tf::Quaternion q = transform.getRotation();
		
		theta = q.getAngle();
		std_msgs::String msg;

		std::stringstream ss;
		ss << "Time: " << t;
		ss << " Coordinate: x = " << x;
		ss << "  y = " << y;
		ss << "  theta = " << theta;
		
		msg.data = ss.str();
		ROS_INFO("%s", msg.data.c_str());

		pub.publish(msg);
    }
    
    move_base_msgs::MoveBaseGoal goal;
    goal.target_pose.header.frame_id = "map";
	goal.target_pose.header.stamp = ros::Time::now();
    tf::Quaternion quaternion;
    geometry_msgs::Quaternion qMsg;
    double radians;
    double theta1;
    
    double x_array [2] = { -0.865, x};
    double y_array [2] = { -1.03, y};
    int theta_array [2] = { 90,theta};
  

    for(int i = 0; i < 2; i++){
	  goal.target_pose.pose.position.x = x_array[i];
	  goal.target_pose.pose.position.y = y_array[i];
	  theta1 = theta_array[i];
	  radians = theta1 * (M_PI/180);
	  quaternion = tf::createQuaternionFromYaw(radians);
	  tf::quaternionTFToMsg(quaternion, qMsg);
	  goal.target_pose.pose.orientation = qMsg;

	  ROS_INFO("Sending goal");
	  ac->sendGoal(goal);

	  ac->waitForResult();
	  
	  if(ac->getState() == actionlib::SimpleClientGoalState::SUCCEEDED)
		ROS_INFO("Hooray, the base moved");
	  else
	  {
		ROS_INFO("The base failed to move forward 1 meter for some reason");
		break;
	  }
	  sleep(3);
    }
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "find");

  ros::NodeHandle n;
  tf::TransformListener listener;
  
  MoveBaseClient ac("move_base", true);

	
  ros::Subscriber sub = n.subscribe<ar_track_alvar_msgs::AlvarMarkers>("/ar_pose_marker", 1, boost::bind(callback,_1,&listener, &ac));

  ros::spin();
  return 0;
}
