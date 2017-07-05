;; Auto-generated. Do not edit!


(when (boundp 'srrg_core_ros::PinholeCameraInfoMsg)
  (if (not (find-package "SRRG_CORE_ROS"))
    (make-package "SRRG_CORE_ROS"))
  (shadow 'PinholeCameraInfoMsg (find-package "SRRG_CORE_ROS")))
(unless (find-package "SRRG_CORE_ROS::PINHOLECAMERAINFOMSG")
  (make-package "SRRG_CORE_ROS::PINHOLECAMERAINFOMSG"))

(in-package "ROS")
;;//! \htmlinclude PinholeCameraInfoMsg.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass srrg_core_ros::PinholeCameraInfoMsg
  :super ros::object
  :slots (_id _offset _topic _frame_id _depth_scale _camera_matrix ))

(defmethod srrg_core_ros::PinholeCameraInfoMsg
  (:init
   (&key
    ((:id __id) 0)
    ((:offset __offset) (instance geometry_msgs::Pose :init))
    ((:topic __topic) "")
    ((:frame_id __frame_id) "")
    ((:depth_scale __depth_scale) 0.0)
    ((:camera_matrix __camera_matrix) (make-array 9 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _offset __offset)
   (setq _topic (string __topic))
   (setq _frame_id (string __frame_id))
   (setq _depth_scale (float __depth_scale))
   (setq _camera_matrix __camera_matrix)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:offset
   (&rest __offset)
   (if (keywordp (car __offset))
       (send* _offset __offset)
     (progn
       (if __offset (setq _offset (car __offset)))
       _offset)))
  (:topic
   (&optional __topic)
   (if __topic (setq _topic __topic)) _topic)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:depth_scale
   (&optional __depth_scale)
   (if __depth_scale (setq _depth_scale __depth_scale)) _depth_scale)
  (:camera_matrix
   (&optional __camera_matrix)
   (if __camera_matrix (setq _camera_matrix __camera_matrix)) _camera_matrix)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; geometry_msgs/Pose _offset
    (send _offset :serialization-length)
    ;; string _topic
    4 (length _topic)
    ;; string _frame_id
    4 (length _frame_id)
    ;; float32 _depth_scale
    4
    ;; float32[9] _camera_matrix
    (* 4    9)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; geometry_msgs/Pose _offset
       (send _offset :serialize s)
     ;; string _topic
       (write-long (length _topic) s) (princ _topic s)
     ;; string _frame_id
       (write-long (length _frame_id) s) (princ _frame_id s)
     ;; float32 _depth_scale
       (sys::poke _depth_scale (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[9] _camera_matrix
     (dotimes (i 9)
       (sys::poke (elt _camera_matrix i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Pose _offset
     (send _offset :deserialize buf ptr-) (incf ptr- (send _offset :serialization-length))
   ;; string _topic
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _topic (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _depth_scale
     (setq _depth_scale (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[9] _camera_matrix
   (dotimes (i (length _camera_matrix))
     (setf (elt _camera_matrix i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get srrg_core_ros::PinholeCameraInfoMsg :md5sum-) "5ea9b63340a8b9a4c75f6d5e80c8df0c")
(setf (get srrg_core_ros::PinholeCameraInfoMsg :datatype-) "srrg_core_ros/PinholeCameraInfoMsg")
(setf (get srrg_core_ros::PinholeCameraInfoMsg :definition-)
      "int32 id
geometry_msgs/Pose offset
string topic
string frame_id
float32 depth_scale
float32[9] camera_matrix
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



(provide :srrg_core_ros/PinholeCameraInfoMsg "5ea9b63340a8b9a4c75f6d5e80c8df0c")


