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

typedef actionlib::SimpleActionClient<move_base_msgs::MoveBaseAction> MoveBaseClient;

void sleepok(int t, ros::NodeHandle &nh)
{
  if (nh.ok())
      sleep(t);
}

float x, y, theta;
void callback(const std_msgs::Float32MultiArray::ConstPtr& msg1, tf::TransformListener *listener, MoveBaseClient* ac, ros::NodeHandle& n)
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
	
	ac->cancelAllGoals();
	
	//prendi odometria del robot
	tf::StampedTransform transform;
	ros::Time t = ros::Time::now();
	bool flag=false;
	do{
		t=ros::Time::now();
		flag=listener->canTransform("/base_link", "/map", t, NULL);
	}while(!flag);
    //if(listener->canTransform("/base_link", "/map", t, NULL)){
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

		//pub.publish(msg);
   // }
    
    move_base_msgs::MoveBaseGoal goal;
    goal.target_pose.header.frame_id = "map";
	goal.target_pose.header.stamp = ros::Time::now();
    tf::Quaternion quaternion;
    geometry_msgs::Quaternion qMsg;
    double radians;
    double theta1;
    
    double x_array [3] = { -0.865, x, -0.865};
    double y_array [3] = { -1.03, y, -1.03};
    int theta_array [3] = { 90,theta, 90};
  

    for(int i = 0; i < 3; i++){
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
		ROS_INFO("The base failed to move for some reason");
		break;
	  }
	  
	  //vedi che tipo di messaggio puoi inviare
	  if(i == 0)
	  {
		std_msgs::Float32MultiArray a;
		a.data.clear();
		a.data.push_back(x_array[1]);
		a.data.push_back(y_array[1]);
		pub.publish(a);
		ROS_INFO("Published!");
	  }
	  sleep(5);
    }
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "find");
  ros::NodeHandle n;

  tf::TransformListener listener;
  
  MoveBaseClient ac("move_base", true);

  pub = n.advertise<std_msgs::String>("find", 1000);
  ros::Subscriber sub = n.subscribe<std_msgs::Float32MultiArray>("objects", 1, boost::bind(callback,_1,&listener, &ac, n));

  ros::spin();
  return 0;
}
