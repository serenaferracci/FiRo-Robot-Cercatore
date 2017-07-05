;; Auto-generated. Do not edit!


(when (boundp 'srrg_core_ros::BinaryNodeRelationMsg)
  (if (not (find-package "SRRG_CORE_ROS"))
    (make-package "SRRG_CORE_ROS"))
  (shadow 'BinaryNodeRelationMsg (find-package "SRRG_CORE_ROS")))
(unless (find-package "SRRG_CORE_ROS::BINARYNODERELATIONMSG")
  (make-package "SRRG_CORE_ROS::BINARYNODERELATIONMSG"))

(in-package "ROS")
;;//! \htmlinclude BinaryNodeRelationMsg.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass srrg_core_ros::BinaryNodeRelationMsg
  :super ros::object
  :slots (_id _from_id _to_id _parent_id _transform _information_matrix ))

(defmethod srrg_core_ros::BinaryNodeRelationMsg
  (:init
   (&key
    ((:id __id) 0)
    ((:from_id __from_id) 0)
    ((:to_id __to_id) 0)
    ((:parent_id __parent_id) 0)
    ((:transform __transform) (instance geometry_msgs::Pose :init))
    ((:information_matrix __information_matrix) (make-array 36 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _from_id (round __from_id))
   (setq _to_id (round __to_id))
   (setq _parent_id (round __parent_id))
   (setq _transform __transform)
   (setq _information_matrix __information_matrix)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:from_id
   (&optional __from_id)
   (if __from_id (setq _from_id __from_id)) _from_id)
  (:to_id
   (&optional __to_id)
   (if __to_id (setq _to_id __to_id)) _to_id)
  (:parent_id
   (&optional __parent_id)
   (if __parent_id (setq _parent_id __parent_id)) _parent_id)
  (:transform
   (&rest __transform)
   (if (keywordp (car __transform))
       (send* _transform __transform)
     (progn
       (if __transform (setq _transform (car __transform)))
       _transform)))
  (:information_matrix
   (&optional __information_matrix)
   (if __information_matrix (setq _information_matrix __information_matrix)) _information_matrix)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; int32 _from_id
    4
    ;; int32 _to_id
    4
    ;; int32 _parent_id
    4
    ;; geometry_msgs/Pose _transform
    (send _transform :serialization-length)
    ;; float32[36] _information_matrix
    (* 4    36)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; int32 _from_id
       (write-long _from_id s)
     ;; int32 _to_id
       (write-long _to_id s)
     ;; int32 _parent_id
       (write-long _parent_id s)
     ;; geometry_msgs/Pose _transform
       (send _transform :serialize s)
     ;; float32[36] _information_matrix
     (dotimes (i 36)
       (sys::poke (elt _information_matrix i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _from_id
     (setq _from_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _to_id
     (setq _to_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _parent_id
     (setq _parent_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Pose _transform
     (send _transform :deserialize buf ptr-) (incf ptr- (send _transform :serialization-length))
   ;; float32[36] _information_matrix
   (dotimes (i (length _information_matrix))
     (setf (elt _information_matrix i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get srrg_core_ros::BinaryNodeRelationMsg :md5sum-) "c68e53a93d9563d0a4c40ba0ca0c3435")
(setf (get srrg_core_ros::BinaryNodeRelationMsg :datatype-) "srrg_core_ros/BinaryNodeRelationMsg")
(setf (get srrg_core_ros::BinaryNodeRelationMsg :definition-)
      "int32 id
int32 from_id
int32 to_id
int32 parent_id
geometry_msgs/Pose transform
float32[36] information_matrix

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



(provide :srrg_core_ros/BinaryNodeRelationMsg "c68e53a93d9563d0a4c40ba0ca0c3435")


