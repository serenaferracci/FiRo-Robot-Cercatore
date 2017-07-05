; Auto-generated. Do not edit!


(cl:in-package srrg_core_ros-msg)


;//! \htmlinclude MapNodeUpdateMsg.msg.html

(cl:defclass <MapNodeUpdateMsg> (roslisp-msg-protocol:ros-message)
  ((node_id
    :reader node_id
    :initarg :node_id
    :type cl:integer
    :initform 0)
   (transform
    :reader transform
    :initarg :transform
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass MapNodeUpdateMsg (<MapNodeUpdateMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapNodeUpdateMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapNodeUpdateMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name srrg_core_ros-msg:<MapNodeUpdateMsg> is deprecated: use srrg_core_ros-msg:MapNodeUpdateMsg instead.")))

(cl:ensure-generic-function 'node_id-val :lambda-list '(m))
(cl:defmethod node_id-val ((m <MapNodeUpdateMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srrg_core_ros-msg:node_id-val is deprecated.  Use srrg_core_ros-msg:node_id instead.")
  (node_id m))

(cl:ensure-generic-function 'transform-val :lambda-list '(m))
(cl:defmethod transform-val ((m <MapNodeUpdateMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srrg_core_ros-msg:transform-val is deprecated.  Use srrg_core_ros-msg:transform instead.")
  (transform m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapNodeUpdateMsg>) ostream)
  "Serializes a message object of type '<MapNodeUpdateMsg>"
  (cl:let* ((signed (cl:slot-value msg 'node_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'transform) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapNodeUpdateMsg>) istream)
  "Deserializes a message object of type '<MapNodeUpdateMsg>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'node_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'transform) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapNodeUpdateMsg>)))
  "Returns string type for a message object of type '<MapNodeUpdateMsg>"
  "srrg_core_ros/MapNodeUpdateMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapNodeUpdateMsg)))
  "Returns string type for a message object of type 'MapNodeUpdateMsg"
  "srrg_core_ros/MapNodeUpdateMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapNodeUpdateMsg>)))
  "Returns md5sum for a message object of type '<MapNodeUpdateMsg>"
  "eb2be7510cb456fa24aa7a97c30dafbc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapNodeUpdateMsg)))
  "Returns md5sum for a message object of type 'MapNodeUpdateMsg"
  "eb2be7510cb456fa24aa7a97c30dafbc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapNodeUpdateMsg>)))
  "Returns full string definition for message of type '<MapNodeUpdateMsg>"
  (cl:format cl:nil "int32 node_id~%geometry_msgs/Pose transform~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapNodeUpdateMsg)))
  "Returns full string definition for message of type 'MapNodeUpdateMsg"
  (cl:format cl:nil "int32 node_id~%geometry_msgs/Pose transform~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapNodeUpdateMsg>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'transform))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapNodeUpdateMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'MapNodeUpdateMsg
    (cl:cons ':node_id (node_id msg))
    (cl:cons ':transform (transform msg))
))
