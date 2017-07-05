; Auto-generated. Do not edit!


(cl:in-package srrg_core_ros-msg)


;//! \htmlinclude RichPointMsg.msg.html

(cl:defclass <RichPointMsg> (roslisp-msg-protocol:ros-message)
  ((point
    :reader point
    :initarg :point
    :type geometry_msgs-msg:Point32
    :initform (cl:make-instance 'geometry_msgs-msg:Point32))
   (normal
    :reader normal
    :initarg :normal
    :type geometry_msgs-msg:Point32
    :initform (cl:make-instance 'geometry_msgs-msg:Point32))
   (rgb
    :reader rgb
    :initarg :rgb
    :type geometry_msgs-msg:Point32
    :initform (cl:make-instance 'geometry_msgs-msg:Point32))
   (accumulator
    :reader accumulator
    :initarg :accumulator
    :type cl:float
    :initform 0.0))
)

(cl:defclass RichPointMsg (<RichPointMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RichPointMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RichPointMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name srrg_core_ros-msg:<RichPointMsg> is deprecated: use srrg_core_ros-msg:RichPointMsg instead.")))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <RichPointMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srrg_core_ros-msg:point-val is deprecated.  Use srrg_core_ros-msg:point instead.")
  (point m))

(cl:ensure-generic-function 'normal-val :lambda-list '(m))
(cl:defmethod normal-val ((m <RichPointMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srrg_core_ros-msg:normal-val is deprecated.  Use srrg_core_ros-msg:normal instead.")
  (normal m))

(cl:ensure-generic-function 'rgb-val :lambda-list '(m))
(cl:defmethod rgb-val ((m <RichPointMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srrg_core_ros-msg:rgb-val is deprecated.  Use srrg_core_ros-msg:rgb instead.")
  (rgb m))

(cl:ensure-generic-function 'accumulator-val :lambda-list '(m))
(cl:defmethod accumulator-val ((m <RichPointMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srrg_core_ros-msg:accumulator-val is deprecated.  Use srrg_core_ros-msg:accumulator instead.")
  (accumulator m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RichPointMsg>) ostream)
  "Serializes a message object of type '<RichPointMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'normal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rgb) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'accumulator))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RichPointMsg>) istream)
  "Deserializes a message object of type '<RichPointMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'normal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rgb) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'accumulator) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RichPointMsg>)))
  "Returns string type for a message object of type '<RichPointMsg>"
  "srrg_core_ros/RichPointMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RichPointMsg)))
  "Returns string type for a message object of type 'RichPointMsg"
  "srrg_core_ros/RichPointMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RichPointMsg>)))
  "Returns md5sum for a message object of type '<RichPointMsg>"
  "fb348908cec5c5b4e77306999cb55d27")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RichPointMsg)))
  "Returns md5sum for a message object of type 'RichPointMsg"
  "fb348908cec5c5b4e77306999cb55d27")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RichPointMsg>)))
  "Returns full string definition for message of type '<RichPointMsg>"
  (cl:format cl:nil "# rich point message, a point  with normal and confidence~%geometry_msgs/Point32 point~%geometry_msgs/Point32 normal~%geometry_msgs/Point32 rgb~%float32 accumulator~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RichPointMsg)))
  "Returns full string definition for message of type 'RichPointMsg"
  (cl:format cl:nil "# rich point message, a point  with normal and confidence~%geometry_msgs/Point32 point~%geometry_msgs/Point32 normal~%geometry_msgs/Point32 rgb~%float32 accumulator~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RichPointMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'normal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rgb))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RichPointMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'RichPointMsg
    (cl:cons ':point (point msg))
    (cl:cons ':normal (normal msg))
    (cl:cons ':rgb (rgb msg))
    (cl:cons ':accumulator (accumulator msg))
))
