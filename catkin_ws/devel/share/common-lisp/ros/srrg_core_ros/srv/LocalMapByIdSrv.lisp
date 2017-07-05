; Auto-generated. Do not edit!


(cl:in-package srrg_core_ros-srv)


;//! \htmlinclude LocalMapByIdSrv-request.msg.html

(cl:defclass <LocalMapByIdSrv-request> (roslisp-msg-protocol:ros-message)
  ((local_map_id
    :reader local_map_id
    :initarg :local_map_id
    :type cl:integer
    :initform 0))
)

(cl:defclass LocalMapByIdSrv-request (<LocalMapByIdSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocalMapByIdSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocalMapByIdSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name srrg_core_ros-srv:<LocalMapByIdSrv-request> is deprecated: use srrg_core_ros-srv:LocalMapByIdSrv-request instead.")))

(cl:ensure-generic-function 'local_map_id-val :lambda-list '(m))
(cl:defmethod local_map_id-val ((m <LocalMapByIdSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srrg_core_ros-srv:local_map_id-val is deprecated.  Use srrg_core_ros-srv:local_map_id instead.")
  (local_map_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocalMapByIdSrv-request>) ostream)
  "Serializes a message object of type '<LocalMapByIdSrv-request>"
  (cl:let* ((signed (cl:slot-value msg 'local_map_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocalMapByIdSrv-request>) istream)
  "Deserializes a message object of type '<LocalMapByIdSrv-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'local_map_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocalMapByIdSrv-request>)))
  "Returns string type for a service object of type '<LocalMapByIdSrv-request>"
  "srrg_core_ros/LocalMapByIdSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocalMapByIdSrv-request)))
  "Returns string type for a service object of type 'LocalMapByIdSrv-request"
  "srrg_core_ros/LocalMapByIdSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocalMapByIdSrv-request>)))
  "Returns md5sum for a message object of type '<LocalMapByIdSrv-request>"
  "86714e02c2f6d08f328d93e752a3bf37")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocalMapByIdSrv-request)))
  "Returns md5sum for a message object of type 'LocalMapByIdSrv-request"
  "86714e02c2f6d08f328d93e752a3bf37")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocalMapByIdSrv-request>)))
  "Returns full string definition for message of type '<LocalMapByIdSrv-request>"
  (cl:format cl:nil "int32 local_map_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocalMapByIdSrv-request)))
  "Returns full string definition for message of type 'LocalMapByIdSrv-request"
  (cl:format cl:nil "int32 local_map_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocalMapByIdSrv-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocalMapByIdSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LocalMapByIdSrv-request
    (cl:cons ':local_map_id (local_map_id msg))
))
;//! \htmlinclude LocalMapByIdSrv-response.msg.html

(cl:defclass <LocalMapByIdSrv-response> (roslisp-msg-protocol:ros-message)
  ((local_map_id
    :reader local_map_id
    :initarg :local_map_id
    :type cl:integer
    :initform 0)
   (local_map
    :reader local_map
    :initarg :local_map
    :type srrg_core_ros-msg:LocalMapMsg
    :initform (cl:make-instance 'srrg_core_ros-msg:LocalMapMsg)))
)

(cl:defclass LocalMapByIdSrv-response (<LocalMapByIdSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocalMapByIdSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocalMapByIdSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name srrg_core_ros-srv:<LocalMapByIdSrv-response> is deprecated: use srrg_core_ros-srv:LocalMapByIdSrv-response instead.")))

(cl:ensure-generic-function 'local_map_id-val :lambda-list '(m))
(cl:defmethod local_map_id-val ((m <LocalMapByIdSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srrg_core_ros-srv:local_map_id-val is deprecated.  Use srrg_core_ros-srv:local_map_id instead.")
  (local_map_id m))

(cl:ensure-generic-function 'local_map-val :lambda-list '(m))
(cl:defmethod local_map-val ((m <LocalMapByIdSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srrg_core_ros-srv:local_map-val is deprecated.  Use srrg_core_ros-srv:local_map instead.")
  (local_map m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocalMapByIdSrv-response>) ostream)
  "Serializes a message object of type '<LocalMapByIdSrv-response>"
  (cl:let* ((signed (cl:slot-value msg 'local_map_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'local_map) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocalMapByIdSrv-response>) istream)
  "Deserializes a message object of type '<LocalMapByIdSrv-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'local_map_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'local_map) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocalMapByIdSrv-response>)))
  "Returns string type for a service object of type '<LocalMapByIdSrv-response>"
  "srrg_core_ros/LocalMapByIdSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocalMapByIdSrv-response)))
  "Returns string type for a service object of type 'LocalMapByIdSrv-response"
  "srrg_core_ros/LocalMapByIdSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocalMapByIdSrv-response>)))
  "Returns md5sum for a message object of type '<LocalMapByIdSrv-response>"
  "86714e02c2f6d08f328d93e752a3bf37")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocalMapByIdSrv-response)))
  "Returns md5sum for a message object of type 'LocalMapByIdSrv-response"
  "86714e02c2f6d08f328d93e752a3bf37")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocalMapByIdSrv-response>)))
  "Returns full string definition for message of type '<LocalMapByIdSrv-response>"
  (cl:format cl:nil "int32 local_map_id~%LocalMapMsg local_map~%~%================================================================================~%MSG: srrg_core_ros/LocalMapMsg~%#cloud with trajectory, id and pose~%int32 id~%float64 timestamp~%geometry_msgs/Pose transform~%int32[] parents~%int32[] trajectory~%TrajectoryNodeMsg[] trajfull~%int32[] relations~%int32 cloud_id~%CloudMsg cloud~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: srrg_core_ros/TrajectoryNodeMsg~%#node of a trajectory~%uint32 seq~%time stamp~%string topic~%geometry_msgs/Pose transform~%~%================================================================================~%MSG: srrg_core_ros/CloudMsg~%#RawCloud msg s simple float32 collection of rich points~%RichPointMsg[] points~%================================================================================~%MSG: srrg_core_ros/RichPointMsg~%# rich point message, a point  with normal and confidence~%geometry_msgs/Point32 point~%geometry_msgs/Point32 normal~%geometry_msgs/Point32 rgb~%float32 accumulator~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocalMapByIdSrv-response)))
  "Returns full string definition for message of type 'LocalMapByIdSrv-response"
  (cl:format cl:nil "int32 local_map_id~%LocalMapMsg local_map~%~%================================================================================~%MSG: srrg_core_ros/LocalMapMsg~%#cloud with trajectory, id and pose~%int32 id~%float64 timestamp~%geometry_msgs/Pose transform~%int32[] parents~%int32[] trajectory~%TrajectoryNodeMsg[] trajfull~%int32[] relations~%int32 cloud_id~%CloudMsg cloud~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: srrg_core_ros/TrajectoryNodeMsg~%#node of a trajectory~%uint32 seq~%time stamp~%string topic~%geometry_msgs/Pose transform~%~%================================================================================~%MSG: srrg_core_ros/CloudMsg~%#RawCloud msg s simple float32 collection of rich points~%RichPointMsg[] points~%================================================================================~%MSG: srrg_core_ros/RichPointMsg~%# rich point message, a point  with normal and confidence~%geometry_msgs/Point32 point~%geometry_msgs/Point32 normal~%geometry_msgs/Point32 rgb~%float32 accumulator~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocalMapByIdSrv-response>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'local_map))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocalMapByIdSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LocalMapByIdSrv-response
    (cl:cons ':local_map_id (local_map_id msg))
    (cl:cons ':local_map (local_map msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LocalMapByIdSrv)))
  'LocalMapByIdSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LocalMapByIdSrv)))
  'LocalMapByIdSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocalMapByIdSrv)))
  "Returns string type for a service object of type '<LocalMapByIdSrv>"
  "srrg_core_ros/LocalMapByIdSrv")