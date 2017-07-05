;; Auto-generated. Do not edit!


(when (boundp 'srrg_core_ros::RichPointMsg)
  (if (not (find-package "SRRG_CORE_ROS"))
    (make-package "SRRG_CORE_ROS"))
  (shadow 'RichPointMsg (find-package "SRRG_CORE_ROS")))
(unless (find-package "SRRG_CORE_ROS::RICHPOINTMSG")
  (make-package "SRRG_CORE_ROS::RICHPOINTMSG"))

(in-package "ROS")
;;//! \htmlinclude RichPointMsg.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass srrg_core_ros::RichPointMsg
  :super ros::object
  :slots (_point _normal _rgb _accumulator ))

(defmethod srrg_core_ros::RichPointMsg
  (:init
   (&key
    ((:point __point) (instance geometry_msgs::Point32 :init))
    ((:normal __normal) (instance geometry_msgs::Point32 :init))
    ((:rgb __rgb) (instance geometry_msgs::Point32 :init))
    ((:accumulator __accumulator) 0.0)
    )
   (send-super :init)
   (setq _point __point)
   (setq _normal __normal)
   (setq _rgb __rgb)
   (setq _accumulator (float __accumulator))
   self)
  (:point
   (&rest __point)
   (if (keywordp (car __point))
       (send* _point __point)
     (progn
       (if __point (setq _point (car __point)))
       _point)))
  (:normal
   (&rest __normal)
   (if (keywordp (car __normal))
       (send* _normal __normal)
     (progn
       (if __normal (setq _normal (car __normal)))
       _normal)))
  (:rgb
   (&rest __rgb)
   (if (keywordp (car __rgb))
       (send* _rgb __rgb)
     (progn
       (if __rgb (setq _rgb (car __rgb)))
       _rgb)))
  (:accumulator
   (&optional __accumulator)
   (if __accumulator (setq _accumulator __accumulator)) _accumulator)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point32 _point
    (send _point :serialization-length)
    ;; geometry_msgs/Point32 _normal
    (send _normal :serialization-length)
    ;; geometry_msgs/Point32 _rgb
    (send _rgb :serialization-length)
    ;; float32 _accumulator
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point32 _point
       (send _point :serialize s)
     ;; geometry_msgs/Point32 _normal
       (send _normal :serialize s)
     ;; geometry_msgs/Point32 _rgb
       (send _rgb :serialize s)
     ;; float32 _accumulator
       (sys::poke _accumulator (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point32 _point
     (send _point :deserialize buf ptr-) (incf ptr- (send _point :serialization-length))
   ;; geometry_msgs/Point32 _normal
     (send _normal :deserialize buf ptr-) (incf ptr- (send _normal :serialization-length))
   ;; geometry_msgs/Point32 _rgb
     (send _rgb :deserialize buf ptr-) (incf ptr- (send _rgb :serialization-length))
   ;; float32 _accumulator
     (setq _accumulator (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get srrg_core_ros::RichPointMsg :md5sum-) "fb348908cec5c5b4e77306999cb55d27")
(setf (get srrg_core_ros::RichPointMsg :datatype-) "srrg_core_ros/RichPointMsg")
(setf (get srrg_core_ros::RichPointMsg :definition-)
      "# rich point message, a point  with normal and confidence
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



(provide :srrg_core_ros/RichPointMsg "fb348908cec5c5b4e77306999cb55d27")


