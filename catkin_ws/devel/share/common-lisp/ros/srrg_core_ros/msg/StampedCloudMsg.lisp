; Auto-generated. Do not edit!


(cl:in-package srrg_core_ros-msg)


;//! \htmlinclude StampedCloudMsg.msg.html

(cl:defclass <StampedCloudMsg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (cloud
    :reader cloud
    :initarg :cloud
    :type srrg_core_ros-msg:CloudMsg
    :initform (cl:make-instance 'srrg_core_ros-msg:CloudMsg)))
)

(cl:defclass StampedCloudMsg (<StampedCloudMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StampedCloudMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StampedCloudMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name srrg_core_ros-msg:<StampedCloudMsg> is deprecated: use srrg_core_ros-msg:StampedCloudMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <StampedCloudMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srrg_core_ros-msg:header-val is deprecated.  Use srrg_core_ros-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'cloud-val :lambda-list '(m))
(cl:defmethod cloud-val ((m <StampedCloudMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srrg_core_ros-msg:cloud-val is deprecated.  Use srrg_core_ros-msg:cloud instead.")
  (cloud m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StampedCloudMsg>) ostream)
  "Serializes a message object of type '<StampedCloudMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cloud) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StampedCloudMsg>) istream)
  "Deserializes a message object of type '<StampedCloudMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cloud) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StampedCloudMsg>)))
  "Returns string type for a message object of type '<StampedCloudMsg>"
  "srrg_core_ros/StampedCloudMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StampedCloudMsg)))
  "Returns string type for a message object of type 'StampedCloudMsg"
  "srrg_core_ros/StampedCloudMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StampedCloudMsg>)))
  "Returns md5sum for a message object of type '<StampedCloudMsg>"
  "dda9aa0382bcc16b522a22ce9cda26e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StampedCloudMsg)))
  "Returns md5sum for a message object of type 'StampedCloudMsg"
  "dda9aa0382bcc16b522a22ce9cda26e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StampedCloudMsg>)))
  "Returns full string definition for message of type '<StampedCloudMsg>"
  (cl:format cl:nil "#  cloud with header and frame id~%Header header~%CloudMsg cloud				~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: srrg_core_ros/CloudMsg~%#RawCloud msg s simple float32 collection of rich points~%RichPointMsg[] points~%================================================================================~%MSG: srrg_core_ros/RichPointMsg~%# rich point message, a point  with normal and confidence~%geometry_msgs/Point32 point~%geometry_msgs/Point32 normal~%geometry_msgs/Point32 rgb~%float32 accumulator~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StampedCloudMsg)))
  "Returns full string definition for message of type 'StampedCloudMsg"
  (cl:format cl:nil "#  cloud with header and frame id~%Header header~%CloudMsg cloud				~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: srrg_core_ros/CloudMsg~%#RawCloud msg s simple float32 collection of rich points~%RichPointMsg[] points~%================================================================================~%MSG: srrg_core_ros/RichPointMsg~%# rich point message, a point  with normal and confidence~%geometry_msgs/Point32 point~%geometry_msgs/Point32 normal~%geometry_msgs/Point32 rgb~%float32 accumulator~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StampedCloudMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cloud))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StampedCloudMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'StampedCloudMsg
    (cl:cons ':header (header msg))
    (cl:cons ':cloud (cloud msg))
))
