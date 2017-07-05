; Auto-generated. Do not edit!


(cl:in-package srrg_core_ros-msg)


;//! \htmlinclude CloudMsg.msg.html

(cl:defclass <CloudMsg> (roslisp-msg-protocol:ros-message)
  ((points
    :reader points
    :initarg :points
    :type (cl:vector srrg_core_ros-msg:RichPointMsg)
   :initform (cl:make-array 0 :element-type 'srrg_core_ros-msg:RichPointMsg :initial-element (cl:make-instance 'srrg_core_ros-msg:RichPointMsg))))
)

(cl:defclass CloudMsg (<CloudMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CloudMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CloudMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name srrg_core_ros-msg:<CloudMsg> is deprecated: use srrg_core_ros-msg:CloudMsg instead.")))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <CloudMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srrg_core_ros-msg:points-val is deprecated.  Use srrg_core_ros-msg:points instead.")
  (points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CloudMsg>) ostream)
  "Serializes a message object of type '<CloudMsg>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CloudMsg>) istream)
  "Deserializes a message object of type '<CloudMsg>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'srrg_core_ros-msg:RichPointMsg))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CloudMsg>)))
  "Returns string type for a message object of type '<CloudMsg>"
  "srrg_core_ros/CloudMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CloudMsg)))
  "Returns string type for a message object of type 'CloudMsg"
  "srrg_core_ros/CloudMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CloudMsg>)))
  "Returns md5sum for a message object of type '<CloudMsg>"
  "d658c7b8c6bf89babd2dfd35e61083ce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CloudMsg)))
  "Returns md5sum for a message object of type 'CloudMsg"
  "d658c7b8c6bf89babd2dfd35e61083ce")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CloudMsg>)))
  "Returns full string definition for message of type '<CloudMsg>"
  (cl:format cl:nil "#RawCloud msg s simple float32 collection of rich points~%RichPointMsg[] points~%================================================================================~%MSG: srrg_core_ros/RichPointMsg~%# rich point message, a point  with normal and confidence~%geometry_msgs/Point32 point~%geometry_msgs/Point32 normal~%geometry_msgs/Point32 rgb~%float32 accumulator~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CloudMsg)))
  "Returns full string definition for message of type 'CloudMsg"
  (cl:format cl:nil "#RawCloud msg s simple float32 collection of rich points~%RichPointMsg[] points~%================================================================================~%MSG: srrg_core_ros/RichPointMsg~%# rich point message, a point  with normal and confidence~%geometry_msgs/Point32 point~%geometry_msgs/Point32 normal~%geometry_msgs/Point32 rgb~%float32 accumulator~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CloudMsg>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CloudMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'CloudMsg
    (cl:cons ':points (points msg))
))
