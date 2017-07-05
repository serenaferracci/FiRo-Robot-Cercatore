;; Auto-generated. Do not edit!


(when (boundp 'srrg_core_ros::TrajectoryNodeMsg)
  (if (not (find-package "SRRG_CORE_ROS"))
    (make-package "SRRG_CORE_ROS"))
  (shadow 'TrajectoryNodeMsg (find-package "SRRG_CORE_ROS")))
(unless (find-package "SRRG_CORE_ROS::TRAJECTORYNODEMSG")
  (make-package "SRRG_CORE_ROS::TRAJECTORYNODEMSG"))

(in-package "ROS")
;;//! \htmlinclude TrajectoryNodeMsg.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass srrg_core_ros::TrajectoryNodeMsg
  :super ros::object
  :slots (_seq _stamp _topic _transform ))

(defmethod srrg_core_ros::TrajectoryNodeMsg
  (:init
   (&key
    ((:seq __seq) 0)
    ((:stamp __stamp) (instance ros::time :init))
    ((:topic __topic) "")
    ((:transform __transform) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _seq (round __seq))
   (setq _stamp __stamp)
   (setq _topic (string __topic))
   (setq _transform __transform)
   self)
  (:seq
   (&optional __seq)
   (if __seq (setq _seq __seq)) _seq)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:topic
   (&optional __topic)
   (if __topic (setq _topic __topic)) _topic)
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
    ;; uint32 _seq
    4
    ;; time _stamp
    8
    ;; string _topic
    4 (length _topic)
    ;; geometry_msgs/Pose _transform
    (send _transform :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _seq
       (write-long _seq s)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; string _topic
       (write-long (length _topic) s) (princ _topic s)
     ;; geometry_msgs/Pose _transform
       (send _transform :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _seq
     (setq _seq (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _topic
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _topic (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose _transform
     (send _transform :deserialize buf ptr-) (incf ptr- (send _transform :serialization-length))
   ;;
   self)
  )

(setf (get srrg_core_ros::TrajectoryNodeMsg :md5sum-) "cfe959df40513fdc5fe3fbf96422c4cc")
(setf (get srrg_core_ros::TrajectoryNodeMsg :datatype-) "srrg_core_ros/TrajectoryNodeMsg")
(setf (get srrg_core_ros::TrajectoryNodeMsg :definition-)
      "#node of a trajectory
uint32 seq
time stamp
string topic
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



(provide :srrg_core_ros/TrajectoryNodeMsg "cfe959df40513fdc5fe3fbf96422c4cc")


