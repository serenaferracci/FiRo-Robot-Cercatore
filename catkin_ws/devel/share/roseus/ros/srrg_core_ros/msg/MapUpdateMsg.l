;; Auto-generated. Do not edit!


(when (boundp 'srrg_core_ros::MapUpdateMsg)
  (if (not (find-package "SRRG_CORE_ROS"))
    (make-package "SRRG_CORE_ROS"))
  (shadow 'MapUpdateMsg (find-package "SRRG_CORE_ROS")))
(unless (find-package "SRRG_CORE_ROS::MAPUPDATEMSG")
  (make-package "SRRG_CORE_ROS::MAPUPDATEMSG"))

(in-package "ROS")
;;//! \htmlinclude MapUpdateMsg.msg.html


(defclass srrg_core_ros::MapUpdateMsg
  :super ros::object
  :slots (_seq _updates ))

(defmethod srrg_core_ros::MapUpdateMsg
  (:init
   (&key
    ((:seq __seq) 0)
    ((:updates __updates) (let (r) (dotimes (i 0) (push (instance srrg_core_ros::MapNodeUpdateMsg :init) r)) r))
    )
   (send-super :init)
   (setq _seq (round __seq))
   (setq _updates __updates)
   self)
  (:seq
   (&optional __seq)
   (if __seq (setq _seq __seq)) _seq)
  (:updates
   (&rest __updates)
   (if (keywordp (car __updates))
       (send* _updates __updates)
     (progn
       (if __updates (setq _updates (car __updates)))
       _updates)))
  (:serialization-length
   ()
   (+
    ;; int32 _seq
    4
    ;; srrg_core_ros/MapNodeUpdateMsg[] _updates
    (apply #'+ (send-all _updates :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _seq
       (write-long _seq s)
     ;; srrg_core_ros/MapNodeUpdateMsg[] _updates
     (write-long (length _updates) s)
     (dolist (elem _updates)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _seq
     (setq _seq (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; srrg_core_ros/MapNodeUpdateMsg[] _updates
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _updates (let (r) (dotimes (i n) (push (instance srrg_core_ros::MapNodeUpdateMsg :init) r)) r))
     (dolist (elem- _updates)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get srrg_core_ros::MapUpdateMsg :md5sum-) "9e0d375602fbc50cf3d9837f15efb92a")
(setf (get srrg_core_ros::MapUpdateMsg :datatype-) "srrg_core_ros/MapUpdateMsg")
(setf (get srrg_core_ros::MapUpdateMsg :definition-)
      "int32 seq
MapNodeUpdateMsg[] updates
================================================================================
MSG: srrg_core_ros/MapNodeUpdateMsg
int32 node_id
geometry_msgs/Pose transform

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

")



(provide :srrg_core_ros/MapUpdateMsg "9e0d375602fbc50cf3d9837f15efb92a")


