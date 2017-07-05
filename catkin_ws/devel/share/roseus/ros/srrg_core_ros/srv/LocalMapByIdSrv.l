;; Auto-generated. Do not edit!


(when (boundp 'srrg_core_ros::LocalMapByIdSrv)
  (if (not (find-package "SRRG_CORE_ROS"))
    (make-package "SRRG_CORE_ROS"))
  (shadow 'LocalMapByIdSrv (find-package "SRRG_CORE_ROS")))
(unless (find-package "SRRG_CORE_ROS::LOCALMAPBYIDSRV")
  (make-package "SRRG_CORE_ROS::LOCALMAPBYIDSRV"))
(unless (find-package "SRRG_CORE_ROS::LOCALMAPBYIDSRVREQUEST")
  (make-package "SRRG_CORE_ROS::LOCALMAPBYIDSRVREQUEST"))
(unless (find-package "SRRG_CORE_ROS::LOCALMAPBYIDSRVRESPONSE")
  (make-package "SRRG_CORE_ROS::LOCALMAPBYIDSRVRESPONSE"))

(in-package "ROS")





(defclass srrg_core_ros::LocalMapByIdSrvRequest
  :super ros::object
  :slots (_local_map_id ))

(defmethod srrg_core_ros::LocalMapByIdSrvRequest
  (:init
   (&key
    ((:local_map_id __local_map_id) 0)
    )
   (send-super :init)
   (setq _local_map_id (round __local_map_id))
   self)
  (:local_map_id
   (&optional __local_map_id)
   (if __local_map_id (setq _local_map_id __local_map_id)) _local_map_id)
  (:serialization-length
   ()
   (+
    ;; int32 _local_map_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _local_map_id
       (write-long _local_map_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _local_map_id
     (setq _local_map_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass srrg_core_ros::LocalMapByIdSrvResponse
  :super ros::object
  :slots (_local_map_id _local_map ))

(defmethod srrg_core_ros::LocalMapByIdSrvResponse
  (:init
   (&key
    ((:local_map_id __local_map_id) 0)
    ((:local_map __local_map) (instance srrg_core_ros::LocalMapMsg :init))
    )
   (send-super :init)
   (setq _local_map_id (round __local_map_id))
   (setq _local_map __local_map)
   self)
  (:local_map_id
   (&optional __local_map_id)
   (if __local_map_id (setq _local_map_id __local_map_id)) _local_map_id)
  (:local_map
   (&rest __local_map)
   (if (keywordp (car __local_map))
       (send* _local_map __local_map)
     (progn
       (if __local_map (setq _local_map (car __local_map)))
       _local_map)))
  (:serialization-length
   ()
   (+
    ;; int32 _local_map_id
    4
    ;; srrg_core_ros/LocalMapMsg _local_map
    (send _local_map :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _local_map_id
       (write-long _local_map_id s)
     ;; srrg_core_ros/LocalMapMsg _local_map
       (send _local_map :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _local_map_id
     (setq _local_map_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; srrg_core_ros/LocalMapMsg _local_map
     (send _local_map :deserialize buf ptr-) (incf ptr- (send _local_map :serialization-length))
   ;;
   self)
  )

(defclass srrg_core_ros::LocalMapByIdSrv
  :super ros::object
  :slots ())

(setf (get srrg_core_ros::LocalMapByIdSrv :md5sum-) "86714e02c2f6d08f328d93e752a3bf37")
(setf (get srrg_core_ros::LocalMapByIdSrv :datatype-) "srrg_core_ros/LocalMapByIdSrv")
(setf (get srrg_core_ros::LocalMapByIdSrv :request) srrg_core_ros::LocalMapByIdSrvRequest)
(setf (get srrg_core_ros::LocalMapByIdSrv :response) srrg_core_ros::LocalMapByIdSrvResponse)

(defmethod srrg_core_ros::LocalMapByIdSrvRequest
  (:response () (instance srrg_core_ros::LocalMapByIdSrvResponse :init)))

(setf (get srrg_core_ros::LocalMapByIdSrvRequest :md5sum-) "86714e02c2f6d08f328d93e752a3bf37")
(setf (get srrg_core_ros::LocalMapByIdSrvRequest :datatype-) "srrg_core_ros/LocalMapByIdSrvRequest")
(setf (get srrg_core_ros::LocalMapByIdSrvRequest :definition-)
      "int32 local_map_id
---
int32 local_map_id
LocalMapMsg local_map

================================================================================
MSG: srrg_core_ros/LocalMapMsg
#cloud with trajectory, id and pose
int32 id
float64 timestamp
geometry_msgs/Pose transform
int32[] parents
int32[] trajectory
TrajectoryNodeMsg[] trajfull
int32[] relations
int32 cloud_id
CloudMsg cloud

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: srrg_core_ros/TrajectoryNodeMsg
#node of a trajectory
uint32 seq
time stamp
string topic
geometry_msgs/Pose transform

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
")

(setf (get srrg_core_ros::LocalMapByIdSrvResponse :md5sum-) "86714e02c2f6d08f328d93e752a3bf37")
(setf (get srrg_core_ros::LocalMapByIdSrvResponse :datatype-) "srrg_core_ros/LocalMapByIdSrvResponse")
(setf (get srrg_core_ros::LocalMapByIdSrvResponse :definition-)
      "int32 local_map_id
---
int32 local_map_id
LocalMapMsg local_map

================================================================================
MSG: srrg_core_ros/LocalMapMsg
#cloud with trajectory, id and pose
int32 id
float64 timestamp
geometry_msgs/Pose transform
int32[] parents
int32[] trajectory
TrajectoryNodeMsg[] trajfull
int32[] relations
int32 cloud_id
CloudMsg cloud

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: srrg_core_ros/TrajectoryNodeMsg
#node of a trajectory
uint32 seq
time stamp
string topic
geometry_msgs/Pose transform

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
")



(provide :srrg_core_ros/LocalMapByIdSrv "86714e02c2f6d08f328d93e752a3bf37")


