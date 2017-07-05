;; Auto-generated. Do not edit!


(when (boundp 'srrg_core_ros::StampedCloudMsg)
  (if (not (find-package "SRRG_CORE_ROS"))
    (make-package "SRRG_CORE_ROS"))
  (shadow 'StampedCloudMsg (find-package "SRRG_CORE_ROS")))
(unless (find-package "SRRG_CORE_ROS::STAMPEDCLOUDMSG")
  (make-package "SRRG_CORE_ROS::STAMPEDCLOUDMSG"))

(in-package "ROS")
;;//! \htmlinclude StampedCloudMsg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass srrg_core_ros::StampedCloudMsg
  :super ros::object
  :slots (_header _cloud ))

(defmethod srrg_core_ros::StampedCloudMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:cloud __cloud) (instance srrg_core_ros::CloudMsg :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _cloud __cloud)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:cloud
   (&rest __cloud)
   (if (keywordp (car __cloud))
       (send* _cloud __cloud)
     (progn
       (if __cloud (setq _cloud (car __cloud)))
       _cloud)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; srrg_core_ros/CloudMsg _cloud
    (send _cloud :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; srrg_core_ros/CloudMsg _cloud
       (send _cloud :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; srrg_core_ros/CloudMsg _cloud
     (send _cloud :deserialize buf ptr-) (incf ptr- (send _cloud :serialization-length))
   ;;
   self)
  )

(setf (get srrg_core_ros::StampedCloudMsg :md5sum-) "dda9aa0382bcc16b522a22ce9cda26e5")
(setf (get srrg_core_ros::StampedCloudMsg :datatype-) "srrg_core_ros/StampedCloudMsg")
(setf (get srrg_core_ros::StampedCloudMsg :definition-)
      "#  cloud with header and frame id
Header header
CloudMsg cloud				

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: srrg_core_ros/CloudMsg
#RawCloud msg s simple float32 collection of rich points
RichPointMsg[] points
================================================================================
MSG: srrg_core_ros/RichPointMsg
# rich point message, a point  with normal and confidence
geometry_msgs/Point32 point
geometry_msgs/Point32 normal
geometry_msgs/Point32 rgb
float32 accumulator

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
")



(provide :srrg_core_ros/StampedCloudMsg "dda9aa0382bcc16b522a22ce9cda26e5")


