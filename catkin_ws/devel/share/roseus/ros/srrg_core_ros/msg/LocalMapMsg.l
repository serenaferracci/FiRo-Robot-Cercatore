;; Auto-generated. Do not edit!


(when (boundp 'srrg_core_ros::LocalMapMsg)
  (if (not (find-package "SRRG_CORE_ROS"))
    (make-package "SRRG_CORE_ROS"))
  (shadow 'LocalMapMsg (find-package "SRRG_CORE_ROS")))
(unless (find-package "SRRG_CORE_ROS::LOCALMAPMSG")
  (make-package "SRRG_CORE_ROS::LOCALMAPMSG"))

(in-package "ROS")
;;//! \htmlinclude LocalMapMsg.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass srrg_core_ros::LocalMapMsg
  :super ros::object
  :slots (_id _timestamp _transform _parents _trajectory _trajfull _relations _cloud_id _cloud ))

(defmethod srrg_core_ros::LocalMapMsg
  (:init
   (&key
    ((:id __id) 0)
    ((:timestamp __timestamp) 0.0)
    ((:transform __transform) (instance geometry_msgs::Pose :init))
    ((:parents __parents) (make-array 0 :initial-element 0 :element-type :integer))
    ((:trajectory __trajectory) (make-array 0 :initial-element 0 :element-type :integer))
    ((:trajfull __trajfull) (let (r) (dotimes (i 0) (push (instance srrg_core_ros::TrajectoryNodeMsg :init) r)) r))
    ((:relations __relations) (make-array 0 :initial-element 0 :element-type :integer))
    ((:cloud_id __cloud_id) 0)
    ((:cloud __cloud) (instance srrg_core_ros::CloudMsg :init))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _timestamp (float __timestamp))
   (setq _transform __transform)
   (setq _parents __parents)
   (setq _trajectory __trajectory)
   (setq _trajfull __trajfull)
   (setq _relations __relations)
   (setq _cloud_id (round __cloud_id))
   (setq _cloud __cloud)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:transform
   (&rest __transform)
   (if (keywordp (car __transform))
       (send* _transform __transform)
     (progn
       (if __transform (setq _transform (car __transform)))
       _transform)))
  (:parents
   (&optional __parents)
   (if __parents (setq _parents __parents)) _parents)
  (:trajectory
   (&optional __trajectory)
   (if __trajectory (setq _trajectory __trajectory)) _trajectory)
  (:trajfull
   (&rest __trajfull)
   (if (keywordp (car __trajfull))
       (send* _trajfull __trajfull)
     (progn
       (if __trajfull (setq _trajfull (car __trajfull)))
       _trajfull)))
  (:relations
   (&optional __relations)
   (if __relations (setq _relations __relations)) _relations)
  (:cloud_id
   (&optional __cloud_id)
   (if __cloud_id (setq _cloud_id __cloud_id)) _cloud_id)
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
    ;; int32 _id
    4
    ;; float64 _timestamp
    8
    ;; geometry_msgs/Pose _transform
    (send _transform :serialization-length)
    ;; int32[] _parents
    (* 4    (length _parents)) 4
    ;; int32[] _trajectory
    (* 4    (length _trajectory)) 4
    ;; srrg_core_ros/TrajectoryNodeMsg[] _trajfull
    (apply #'+ (send-all _trajfull :serialization-length)) 4
    ;; int32[] _relations
    (* 4    (length _relations)) 4
    ;; int32 _cloud_id
    4
    ;; srrg_core_ros/CloudMsg _cloud
    (send _cloud :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; float64 _timestamp
       (sys::poke _timestamp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Pose _transform
       (send _transform :serialize s)
     ;; int32[] _parents
     (write-long (length _parents) s)
     (dotimes (i (length _parents))
       (write-long (elt _parents i) s)
       )
     ;; int32[] _trajectory
     (write-long (length _trajectory) s)
     (dotimes (i (length _trajectory))
       (write-long (elt _trajectory i) s)
       )
     ;; srrg_core_ros/TrajectoryNodeMsg[] _trajfull
     (write-long (length _trajfull) s)
     (dolist (elem _trajfull)
       (send elem :serialize s)
       )
     ;; int32[] _relations
     (write-long (length _relations) s)
     (dotimes (i (length _relations))
       (write-long (elt _relations i) s)
       )
     ;; int32 _cloud_id
       (write-long _cloud_id s)
     ;; srrg_core_ros/CloudMsg _cloud
       (send _cloud :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _timestamp
     (setq _timestamp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Pose _transform
     (send _transform :deserialize buf ptr-) (incf ptr- (send _transform :serialization-length))
   ;; int32[] _parents
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _parents (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _parents i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _trajectory
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _trajectory (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _trajectory i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; srrg_core_ros/TrajectoryNodeMsg[] _trajfull
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _trajfull (let (r) (dotimes (i n) (push (instance srrg_core_ros::TrajectoryNodeMsg :init) r)) r))
     (dolist (elem- _trajfull)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int32[] _relations
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _relations (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _relations i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32 _cloud_id
     (setq _cloud_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; srrg_core_ros/CloudMsg _cloud
     (send _cloud :deserialize buf ptr-) (incf ptr- (send _cloud :serialization-length))
   ;;
   self)
  )

(setf (get srrg_core_ros::LocalMapMsg :md5sum-) "7bc12ac363b3ff95c3f4c0b85fdf820b")
(setf (get srrg_core_ros::LocalMapMsg :datatype-) "srrg_core_ros/LocalMapMsg")
(setf (get srrg_core_ros::LocalMapMsg :definition-)
      "#cloud with trajectory, id and pose
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
float32 z
")



(provide :srrg_core_ros/LocalMapMsg "7bc12ac363b3ff95c3f4c0b85fdf820b")


