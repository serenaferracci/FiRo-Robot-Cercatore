; Auto-generated. Do not edit!


(cl:in-package srrg_core_ros-msg)


;//! \htmlinclude MultiCameraInfoMsg.msg.html

(cl:defclass <MultiCameraInfoMsg> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (offset
    :reader offset
    :initarg :offset
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (topic
    :reader topic
    :initarg :topic
    :type cl:string
    :initform "")
   (frame_id
    :reader frame_id
    :initarg :frame_id
    :type cl:string
    :initform "")
   (depth_scale
    :reader depth_scale
    :initarg :depth_scale
    :type cl:float
    :initform 0.0)
   (subcamera_ids
    :reader subcamera_ids
    :initarg :subcamera_ids
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass MultiCameraInfoMsg (<MultiCameraInfoMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MultiCameraInfoMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MultiCameraInfoMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name srrg_core_ros-msg:<MultiCameraInfoMsg> is deprecated: use srrg_core_ros-msg:MultiCameraInfoMsg instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <MultiCameraInfoMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srrg_core_ros-msg:id-val is deprecated.  Use srrg_core_ros-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'offset-val :lambda-list '(m))
(cl:defmethod offset-val ((m <MultiCameraInfoMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srrg_core_ros-msg:offset-val is deprecated.  Use srrg_core_ros-msg:offset instead.")
  (offset m))

(cl:ensure-generic-function 'topic-val :lambda-list '(m))
(cl:defmethod topic-val ((m <MultiCameraInfoMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srrg_core_ros-msg:topic-val is deprecated.  Use srrg_core_ros-msg:topic instead.")
  (topic m))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <MultiCameraInfoMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srrg_core_ros-msg:frame_id-val is deprecated.  Use srrg_core_ros-msg:frame_id instead.")
  (frame_id m))

(cl:ensure-generic-function 'depth_scale-val :lambda-list '(m))
(cl:defmethod depth_scale-val ((m <MultiCameraInfoMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srrg_core_ros-msg:depth_scale-val is deprecated.  Use srrg_core_ros-msg:depth_scale instead.")
  (depth_scale m))

(cl:ensure-generic-function 'subcamera_ids-val :lambda-list '(m))
(cl:defmethod subcamera_ids-val ((m <MultiCameraInfoMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srrg_core_ros-msg:subcamera_ids-val is deprecated.  Use srrg_core_ros-msg:subcamera_ids instead.")
  (subcamera_ids m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MultiCameraInfoMsg>) ostream)
  "Serializes a message object of type '<MultiCameraInfoMsg>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'offset) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'topic))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'frame_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'frame_id))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'depth_scale))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'subcamera_ids))))
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
   (cl:slot-value msg 'subcamera_ids))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MultiCameraInfoMsg>) istream)
  "Deserializes a message object of type '<MultiCameraInfoMsg>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'offset) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'topic) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'topic) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'frame_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'frame_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'depth_scale) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'subcamera_ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'subcamera_ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MultiCameraInfoMsg>)))
  "Returns string type for a message object of type '<MultiCameraInfoMsg>"
  "srrg_core_ros/MultiCameraInfoMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MultiCameraInfoMsg)))
  "Returns string type for a message object of type 'MultiCameraInfoMsg"
  "srrg_core_ros/MultiCameraInfoMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MultiCameraInfoMsg>)))
  "Returns md5sum for a message object of type '<MultiCameraInfoMsg>"
  "59f10adeead6803979a53c6477d0fae4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MultiCameraInfoMsg)))
  "Returns md5sum for a message object of type 'MultiCameraInfoMsg"
  "59f10adeead6803979a53c6477d0fae4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MultiCameraInfoMsg>)))
  "Returns full string definition for message of type '<MultiCameraInfoMsg>"
  (cl:format cl:nil "int32 id~%geometry_msgs/Pose offset~%string topic~%string frame_id~%float32 depth_scale~%int32[] subcamera_ids~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MultiCameraInfoMsg)))
  "Returns full string definition for message of type 'MultiCameraInfoMsg"
  (cl:format cl:nil "int32 id~%geometry_msgs/Pose offset~%string topic~%string frame_id~%float32 depth_scale~%int32[] subcamera_ids~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MultiCameraInfoMsg>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'offset))
     4 (cl:length (cl:slot-value msg 'topic))
     4 (cl:length (cl:slot-value msg 'frame_id))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'subcamera_ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MultiCameraInfoMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'MultiCameraInfoMsg
    (cl:cons ':id (id msg))
    (cl:cons ':offset (offset msg))
    (cl:cons ':topic (topic msg))
    (cl:cons ':frame_id (frame_id msg))
    (cl:cons ':depth_scale (depth_scale msg))
    (cl:cons ':subcamera_ids (subcamera_ids msg))
))
