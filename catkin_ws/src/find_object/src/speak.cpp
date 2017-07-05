#include "ros/ros.h"
#include <std_msgs/Float32MultiArray.h>
#include <math.h>
#include <sound_play/sound_play.h>

  float ax [4] = { -0.865, 7.44, 13.2, 13.1};
  float ay [4] = { -1.03, 0.0427, 0.7, 2.3};
  int raggio = 1;
  ros::NodeHandle n;

void sleepok(int t, ros::NodeHandle &nh)
{
  if (nh.ok())
      sleep(t);
}

void callback(const std_msgs::Float32MultiArray::ConstPtr& array)
{	
   std::vector<float>::const_iterator it = array->data.begin();
   float x = *it;
   it++;
   float y = *it;
   sound_play::SoundClient sc;
   
   for(int i = 0; i < 4; i++)
   {
	   if(sqrt(pow(ax[i]-x,2) + pow(ay[i]-y,2) <= raggio))
	   {
		    switch(i)
		    {
				case 0:
					{
						const char *str1 = "I found the object in the first room. follow me.";
						sc.repeat(str1);
						sleepok(6, n);
						sc.stopSaying(str1);
						//ambiente 1 
						break;
					}
				case 1:
					{
						const char *str2 = "I found the object in the second room. follow me.";
						sc.repeat(str2);
						sleepok(6, n);
						sc.stopSaying(str2);
						//ambiente 2 
						break;
					}
				case 2:
					{
						const char *str3 = "I found the object in the third room. follow me.";
						sc.repeat(str3);
						sleepok(6, n);
						sc.stopSaying(str3);
						//ambiente 3 
						break;
					}
				case 3:
					{
						const char *str4 = "I found the object in the fourth room. follow me.";
						sc.repeat(str4);
						sleepok(6, n);
						sc.stopSaying(str4);
						//ambiente 4 
						break;
					}
			}
			return;
		}
	}
	//dice solo che lo ha trovato
	const char *str = "I found the object. follow me.";
	sc.repeat(str);
	sleepok(5, n);
	sc.stopSaying(str);
	return;
			
}

int main(int argc, char **argv)
{
	
  ros::init(argc, argv, "speak");

  ros::Subscriber sub = n.subscribe("find", 1000, callback);

  ros::spin();
  return 0;
}
