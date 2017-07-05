;; Auto-generated. Do not edit!


(when (boundp 'srrg_core_ros::MapNodeUpdateMsg)
  (if (not (find-package "SRRG_CORE_ROS"))
    (make-package "SRRG_CORE_ROS"))
  (shadow 'MapNodeUpdateMsg (find-package "SRRG_CORE_ROS")))
(unless (find-package "SRRG_CORE_ROS::MAPNODEUPDATEMSG")
  (make-package "SRRG_CORE_ROS::MAPNODEUPDATEMSG"))

(in-package "ROS")
;;//! \htmlinclude MapNodeUpdateMsg.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass srrg_core_ros::MapNodeUpdateMsg
  :super ros::object
  :slots (_node_id _transform ))

(defmethod srrg_core_ros::MapNodeUpdateMsg
  (:init
   (&key
    ((:node_id __node_id) 0)
    ((:transform __transform) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _node_id (round __node_id))
   (setq _transform __transform)
   self)
  (:node_id
   (&optional __node_id)
   (if __node_id (setq _node_id __node_id)) _node_id)
  (:transform
   (&rest __transform)
   (if (keywordp (car __transform))
       (send* _transform __transform)
     (progn
       (if __transform (setq _transform (car __transform)))
       _transform)))
  (:serialization-length
   ()
   (+
    ;; int32 _node_id
    4
    ;; geometry_msgs/Pose _transform
    (send _transform :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _node_id
       (write-long _node_id s)
     ;; geometry_msgs/Pose _transform
       (send _transform :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _node_id
     (setq _node_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Pose _transform
     (send _transform :deserialize buf ptr-) (incf ptr- (send _transform :serialization-length))
   ;;
   self)
  )

(setf (get srrg_core_ros::MapNodeUpdateMsg :md5sum-) "eb2be7510cb456fa24aa7a97c30dafbc")
(setf (get srrg_core_ros::MapNodeUpdateMsg :datatype-) "srrg_core_ros/MapNodeUpdateMsg")
(setf (get srrg_core_ros::MapNodeUpdateMsg :definition-)
      "int32 node_id
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



(provide :srrg_core_ros/MapNodeUpdateMsg "eb2be7510cb456fa24aa7a97c30dafbc")


