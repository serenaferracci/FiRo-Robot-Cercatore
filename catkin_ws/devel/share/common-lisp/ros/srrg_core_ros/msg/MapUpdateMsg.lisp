; Auto-generated. Do not edit!


(cl:in-package srrg_core_ros-msg)


;//! \htmlinclude MapUpdateMsg.msg.html

(cl:defclass <MapUpdateMsg> (roslisp-msg-protocol:ros-message)
  ((seq
    :reader seq
    :initarg :seq
    :type cl:integer
    :initform 0)
   (updates
    :reader updates
    :initarg :updates
    :type (cl:vector srrg_core_ros-msg:MapNodeUpdateMsg)
   :initform (cl:make-array 0 :element-type 'srrg_core_ros-msg:MapNodeUpdateMsg :initial-element (cl:make-instance 'srrg_core_ros-msg:MapNodeUpdateMsg))))
)

(cl:defclass MapUpdateMsg (<MapUpdateMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapUpdateMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapUpdateMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name srrg_core_ros-msg:<MapUpdateMsg> is deprecated: use srrg_core_ros-msg:MapUpdateMsg instead.")))

(cl:ensure-generic-function 'seq-val :lambda-list '(m))
(cl:defmethod seq-val ((m <MapUpdateMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srrg_core_ros-msg:seq-val is deprecated.  Use srrg_core_ros-msg:seq instead.")
  (seq m))

(cl:ensure-generic-function 'updates-val :lambda-list '(m))
(cl:defmethod updates-val ((m <MapUpdateMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srrg_core_ros-msg:updates-val is deprecated.  Use srrg_core_ros-msg:updates instead.")
  (updates m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapUpdateMsg>) ostream)
  "Serializes a message object of type '<MapUpdateMsg>"
  (cl:let* ((signed (cl:slot-value msg 'seq)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'updates))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'updates))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapUpdateMsg>) istream)
  "Deserializes a message object of type '<MapUpdateMsg>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'seq) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'updates) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'updates)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'srrg_core_ros-msg:MapNodeUpdateMsg))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapUpdateMsg>)))
  "Returns string type for a message object of type '<MapUpdateMsg>"
  "srrg_core_ros/MapUpdateMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapUpdateMsg)))
  "Returns string type for a message object of type 'MapUpdateMsg"
  "srrg_core_ros/MapUpdateMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapUpdateMsg>)))
  "Returns md5sum for a message object of type '<MapUpdateMsg>"
  "9e0d375602fbc50cf3d9837f15efb92a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapUpdateMsg)))
  "Returns md5sum for a message object of type 'MapUpdateMsg"
  "9e0d375602fbc50cf3d9837f15efb92a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapUpdateMsg>)))
  "Returns full string definition for message of type '<MapUpdateMsg>"
  (cl:format cl:nil "int32 seq~%MapNodeUpdateMsg[] updates~%================================================================================~%MSG: srrg_core_ros/MapNodeUpdateMsg~%int32 node_id~%geometry_msgs/Pose transform~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapUpdateMsg)))
  "Returns full string definition for message of type 'MapUpdateMsg"
  (cl:format cl:nil "int32 seq~%MapNodeUpdateMsg[] updates~%================================================================================~%MSG: srrg_core_ros/MapNodeUpdateMsg~%int32 node_id~%geometry_msgs/Pose transform~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapUpdateMsg>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'updates) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapUpdateMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'MapUpdateMsg
    (cl:cons ':seq (seq msg))
    (cl:cons ':updates (updates msg))
))
