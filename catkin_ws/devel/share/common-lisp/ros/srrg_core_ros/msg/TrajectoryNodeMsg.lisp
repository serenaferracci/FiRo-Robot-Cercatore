; Auto-generated. Do not edit!


(cl:in-package srrg_core_ros-msg)


;//! \htmlinclude TrajectoryNodeMsg.msg.html

(cl:defclass <TrajectoryNodeMsg> (roslisp-msg-protocol:ros-message)
  ((seq
    :reader seq
    :initarg :seq
    :type cl:integer
    :initform 0)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (topic
    :reader topic
    :initarg :topic
    :type cl:string
    :initform "")
   (transform
    :reader transform
    :initarg :transform
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass TrajectoryNodeMsg (<TrajectoryNodeMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrajectoryNodeMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrajectoryNodeMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name srrg_core_ros-msg:<TrajectoryNodeMsg> is deprecated: use srrg_core_ros-msg:TrajectoryNodeMsg instead.")))

(cl:ensure-generic-function 'seq-val :lambda-list '(m))
(cl:defmethod seq-val ((m <TrajectoryNodeMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srrg_core_ros-msg:seq-val is deprecated.  Use srrg_core_ros-msg:seq instead.")
  (seq m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <TrajectoryNodeMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srrg_core_ros-msg:stamp-val is deprecated.  Use srrg_core_ros-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'topic-val :lambda-list '(m))
(cl:defmethod topic-val ((m <TrajectoryNodeMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srrg_core_ros-msg:topic-val is deprecated.  Use srrg_core_ros-msg:topic instead.")
  (topic m))

(cl:ensure-generic-function 'transform-val :lambda-list '(m))
(cl:defmethod transform-val ((m <TrajectoryNodeMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srrg_core_ros-msg:transform-val is deprecated.  Use srrg_core_ros-msg:transform instead.")
  (transform m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrajectoryNodeMsg>) ostream)
  "Serializes a message object of type '<TrajectoryNodeMsg>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'seq)) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'topic))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'transform) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrajectoryNodeMsg>) istream)
  "Deserializes a message object of type '<TrajectoryNodeMsg>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'topic) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'topic) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'transform) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrajectoryNodeMsg>)))
  "Returns string type for a message object of type '<TrajectoryNodeMsg>"
  "srrg_core_ros/TrajectoryNodeMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrajectoryNodeMsg)))
  "Returns string type for a message object of type 'TrajectoryNodeMsg"
  "srrg_core_ros/TrajectoryNodeMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrajectoryNodeMsg>)))
  "Returns md5sum for a message object of type '<TrajectoryNodeMsg>"
  "cfe959df40513fdc5fe3fbf96422c4cc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrajectoryNodeMsg)))
  "Returns md5sum for a message object of type 'TrajectoryNodeMsg"
  "cfe959df40513fdc5fe3fbf96422c4cc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrajectoryNodeMsg>)))
  "Returns full string definition for message of type '<TrajectoryNodeMsg>"
  (cl:format cl:nil "#node of a trajectory~%uint32 seq~%time stamp~%string topic~%geometry_msgs/Pose transform~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrajectoryNodeMsg)))
  "Returns full string definition for message of type 'TrajectoryNodeMsg"
  (cl:format cl:nil "#node of a trajectory~%uint32 seq~%time stamp~%string topic~%geometry_msgs/Pose transform~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrajectoryNodeMsg>))
  (cl:+ 0
     4
     8
     4 (cl:length (cl:slot-value msg 'topic))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'transform))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrajectoryNodeMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'TrajectoryNodeMsg
    (cl:cons ':seq (seq msg))
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':topic (topic msg))
    (cl:cons ':transform (transform msg))
))
