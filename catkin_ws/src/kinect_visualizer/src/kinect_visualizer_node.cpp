/* Sapienza University of Rome 
 * 
 * Robot Programming
 * Section of Elective in Artificial Intelligence (Complementi di Intelligenza Artificiale)
 * Master Artificial Intelligence and Robotics (Laurea Magistrale in Intelligenza Artificiale e Robotica)
 * A.A. 2014/2015
 *
 * Image processing with OpenCV 
 *
 * Domenico D. Bloisi and Andrea Pennisi
 *
 * bloisi@dis.uniroma1.it pennisi@dis.uniroma1.it
 *
 * This code is provided without any warranty about its usability. It is for educational purposes and should be regarded as such.
 *
 */

//ROS
#include <ros/ros.h>
#include <sensor_msgs/Image.h>
#include <sensor_msgs/image_encodings.h>
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
//OpenCV
#include <opencv2/opencv.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>

void rgbCallback(const sensor_msgs::ImageConstPtr& msg)
{
  cv_bridge::CvImageConstPtr cv_ptr;
  try
  {
	cv_ptr = cv_bridge::toCvCopy(msg, sensor_msgs::image_encodings::BGR8);
  }
  catch (cv_bridge::Exception& ex)
  {
	ROS_ERROR("cv_bridge exception: %s", ex.what());
	exit(-1);
  }

  cv::imshow("RGB", cv_ptr->image);
  cv::waitKey(30);
}


void depthCallback(const sensor_msgs::ImageConstPtr& msg)
{
  cv_bridge::CvImageConstPtr cv_ptr;
  try
  {
	 cv_ptr = cv_bridge::toCvCopy(msg, 
				sensor_msgs::image_encodings::TYPE_32FC1);
  }
  catch (cv_bridge::Exception& ex)
  {
  	ROS_ERROR("cv_bridge exception: %s", ex.what());
   	exit(-1);
  }

  cv::imshow("DEPTH", cv_ptr->image);
  cv::waitKey(30);
}

int main(int argc, char **argv) {
    ros::init(argc, argv, "kinectgrabber");
    ros::NodeHandle n;
    ros::Subscriber sub = 
		n.subscribe("/camera/rgb/image_color", 1, rgbCallback);
    ros::Subscriber depth = 
		n.subscribe("/camera/depth/image", 1, depthCallback);
    ros::spin();
    return 0;
}
