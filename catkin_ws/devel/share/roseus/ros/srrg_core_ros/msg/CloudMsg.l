;; Auto-generated. Do not edit!


(when (boundp 'srrg_core_ros::CloudMsg)
  (if (not (find-package "SRRG_CORE_ROS"))
    (make-package "SRRG_CORE_ROS"))
  (shadow 'CloudMsg (find-package "SRRG_CORE_ROS")))
(unless (find-package "SRRG_CORE_ROS::CLOUDMSG")
  (make-package "SRRG_CORE_ROS::CLOUDMSG"))

(in-package "ROS")
;;//! \htmlinclude CloudMsg.msg.html


(defclass srrg_core_ros::CloudMsg
  :super ros::object
  :slots (_points ))

(defmethod srrg_core_ros::CloudMsg
  (:init
   (&key
    ((:points __points) (let (r) (dotimes (i 0) (push (instance srrg_core_ros::RichPointMsg :init) r)) r))
    )
   (send-super :init)
   (setq _points __points)
   self)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:serialization-length
   ()
   (+
    ;; srrg_core_ros/RichPointMsg[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; srrg_core_ros/RichPointMsg[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; srrg_core_ros/RichPointMsg[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance srrg_core_ros::RichPointMsg :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get srrg_core_ros::CloudMsg :md5sum-) "d658c7b8c6bf89babd2dfd35e61083ce")
(setf (get srrg_core_ros::CloudMsg :datatype-) "srrg_core_ros/CloudMsg")
(setf (get srrg_core_ros::CloudMsg :definition-)
      "#RawCloud msg s simple float32 collection of rich points
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



(provide :srrg_core_ros/CloudMsg "d658c7b8c6bf89babd2dfd35e61083ce")


