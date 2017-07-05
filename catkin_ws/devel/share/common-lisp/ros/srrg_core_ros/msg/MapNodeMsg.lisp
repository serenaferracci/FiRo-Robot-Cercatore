; Auto-generated. Do not edit!


(cl:in-package srrg_core_ros-msg)


;//! \htmlinclude MapNodeMsg.msg.html

(cl:defclass <MapNodeMsg> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (timestamp
    :reader timestamp
    :initarg :timestamp
    :type cl:float
    :initform 0.0)
   (transform
    :reader transform
    :initarg :transform
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (parents
    :reader parents
    :initarg :parents
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass MapNodeMsg (<MapNodeMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapNodeMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapNodeMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name srrg_core_ros-msg:<MapNodeMsg> is deprecated: use srrg_core_ros-msg:MapNodeMsg instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <MapNodeMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srrg_core_ros-msg:id-val is deprecated.  Use srrg_core_ros-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <MapNodeMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srrg_core_ros-msg:timestamp-val is deprecated.  Use srrg_core_ros-msg:timestamp instead.")
  (timestamp m))

(cl:ensure-generic-function 'transform-val :lambda-list '(m))
(cl:defmethod transform-val ((m <MapNodeMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srrg_core_ros-msg:transform-val is deprecated.  Use srrg_core_ros-msg:transform instead.")
  (transform m))

(cl:ensure-generic-function 'parents-val :lambda-list '(m))
(cl:defmethod parents-val ((m <MapNodeMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srrg_core_ros-msg:parents-val is deprecated.  Use srrg_core_ros-msg:parents instead.")
  (parents m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapNodeMsg>) ostream)
  "Serializes a message object of type '<MapNodeMsg>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'timestamp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'transform) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'parents))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'parents))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapNodeMsg>) istream)
  "Deserializes a message object of type '<MapNodeMsg>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'timestamp) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'transform) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'parents) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'parents)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapNodeMsg>)))
  "Returns string type for a message object of type '<MapNodeMsg>"
  "srrg_core_ros/MapNodeMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapNodeMsg)))
  "Returns string type for a message object of type 'MapNodeMsg"
  "srrg_core_ros/MapNodeMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapNodeMsg>)))
  "Returns md5sum for a message object of type '<MapNodeMsg>"
  "b4dfc7503338e0289ba1dfed1cad276b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapNodeMsg)))
  "Returns md5sum for a message object of type 'MapNodeMsg"
  "b4dfc7503338e0289ba1dfed1cad276b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapNodeMsg>)))
  "Returns full string definition for message of type '<MapNodeMsg>"
  (cl:format cl:nil "int32 id~%float64 timestamp~%geometry_msgs/Pose transform~%int32[] parents~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapNodeMsg)))
  "Returns full string definition for message of type 'MapNodeMsg"
  (cl:format cl:nil "int32 id~%float64 timestamp~%geometry_msgs/Pose transform~%int32[] parents~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapNodeMsg>))
  (cl:+ 0
     4
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'transform))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'parents) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapNodeMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'MapNodeMsg
    (cl:cons ':id (id msg))
    (cl:cons ':timestamp (timestamp msg))
    (cl:cons ':transform (transform msg))
    (cl:cons ':parents (parents msg))
))
