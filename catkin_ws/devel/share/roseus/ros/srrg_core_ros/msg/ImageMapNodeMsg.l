;; Auto-generated. Do not edit!


(when (boundp 'srrg_core_ros::ImageMapNodeMsg)
  (if (not (find-package "SRRG_CORE_ROS"))
    (make-package "SRRG_CORE_ROS"))
  (shadow 'ImageMapNodeMsg (find-package "SRRG_CORE_ROS")))
(unless (find-package "SRRG_CORE_ROS::IMAGEMAPNODEMSG")
  (make-package "SRRG_CORE_ROS::IMAGEMAPNODEMSG"))

(in-package "ROS")
;;//! \htmlinclude ImageMapNodeMsg.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass srrg_core_ros::ImageMapNodeMsg
  :super ros::object
  :slots (_id _timestamp _transform _parents _topic _seq _camera_info ))

(defmethod srrg_core_ros::ImageMapNodeMsg
  (:init
   (&key
    ((:id __id) 0)
    ((:timestamp __timestamp) 0.0)
    ((:transform __transform) (instance geometry_msgs::Pose :init))
    ((:parents __parents) (make-array 0 :initial-element 0 :element-type :integer))
    ((:topic __topic) "")
    ((:seq __seq) 0)
    ((:camera_info __camera_info) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _timestamp (float __timestamp))
   (setq _transform __transform)
   (setq _parents __parents)
   (setq _topic (string __topic))
   (setq _seq (round __seq))
   (setq _camera_info (round __camera_info))
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
  (:topic
   (&optional __topic)
   (if __topic (setq _topic __topic)) _topic)
  (:seq
   (&optional __seq)
   (if __seq (setq _seq __seq)) _seq)
  (:camera_info
   (&optional __camera_info)
   (if __camera_info (setq _camera_info __camera_info)) _camera_info)
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
    ;; string _topic
    4 (length _topic)
    ;; int32 _seq
    4
    ;; int32 _camera_info
    4
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
     ;; string _topic
       (write-long (length _topic) s) (princ _topic s)
     ;; int32 _seq
       (write-long _seq s)
     ;; int32 _camera_info
       (write-long _camera_info s)
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
   ;; string _topic
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _topic (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _seq
     (setq _seq (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _camera_info
     (setq _camera_info (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get srrg_core_ros::ImageMapNodeMsg :md5sum-) "e985cff8cfffd7e6dc32c72765456daa")
(setf (get srrg_core_ros::ImageMapNodeMsg :datatype-) "srrg_core_ros/ImageMapNodeMsg")
(setf (get srrg_core_ros::ImageMapNodeMsg :definition-)
      "int32 id
float64 timestamp
geometry_msgs/Pose transform
int32[] parents
string topic
int32 seq
int32 camera_info
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



(provide :srrg_core_ros/ImageMapNodeMsg "e985cff8cfffd7e6dc32c72765456daa")


