; Auto-generated. Do not edit!


(cl:in-package srrg_core_ros-msg)


;//! \htmlinclude BinaryNodeRelationMsg.msg.html

(cl:defclass <BinaryNodeRelationMsg> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (from_id
    :reader from_id
    :initarg :from_id
    :type cl:integer
    :initform 0)
   (to_id
    :reader to_id
    :initarg :to_id
    :type cl:integer
    :initform 0)
   (parent_id
    :reader parent_id
    :initarg :parent_id
    :type cl:integer
    :initform 0)
   (transform
    :reader transform
    :initarg :transform
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (information_matrix
    :reader information_matrix
    :initarg :information_matrix
    :type (cl:vector cl:float)
   :initform (cl:make-array 36 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass BinaryNodeRelationMsg (<BinaryNodeRelationMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BinaryNodeRelationMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BinaryNodeRelationMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name srrg_core_ros-msg:<BinaryNodeRelationMsg> is deprecated: use srrg_core_ros-msg:BinaryNodeRelationMsg instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <BinaryNodeRelationMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srrg_core_ros-msg:id-val is deprecated.  Use srrg_core_ros-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'from_id-val :lambda-list '(m))
(cl:defmethod from_id-val ((m <BinaryNodeRelationMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srrg_core_ros-msg:from_id-val is deprecated.  Use srrg_core_ros-msg:from_id instead.")
  (from_id m))

(cl:ensure-generic-function 'to_id-val :lambda-list '(m))
(cl:defmethod to_id-val ((m <BinaryNodeRelationMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srrg_core_ros-msg:to_id-val is deprecated.  Use srrg_core_ros-msg:to_id instead.")
  (to_id m))

(cl:ensure-generic-function 'parent_id-val :lambda-list '(m))
(cl:defmethod parent_id-val ((m <BinaryNodeRelationMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srrg_core_ros-msg:parent_id-val is deprecated.  Use srrg_core_ros-msg:parent_id instead.")
  (parent_id m))

(cl:ensure-generic-function 'transform-val :lambda-list '(m))
(cl:defmethod transform-val ((m <BinaryNodeRelationMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srrg_core_ros-msg:transform-val is deprecated.  Use srrg_core_ros-msg:transform instead.")
  (transform m))

(cl:ensure-generic-function 'information_matrix-val :lambda-list '(m))
(cl:defmethod information_matrix-val ((m <BinaryNodeRelationMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srrg_core_ros-msg:information_matrix-val is deprecated.  Use srrg_core_ros-msg:information_matrix instead.")
  (information_matrix m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BinaryNodeRelationMsg>) ostream)
  "Serializes a message object of type '<BinaryNodeRelationMsg>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'from_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'to_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'parent_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'transform) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'information_matrix))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BinaryNodeRelationMsg>) istream)
  "Deserializes a message object of type '<BinaryNodeRelationMsg>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'from_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'to_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parent_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'transform) istream)
  (cl:setf (cl:slot-value msg 'information_matrix) (cl:make-array 36))
  (cl:let ((vals (cl:slot-value msg 'information_matrix)))
    (cl:dotimes (i 36)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BinaryNodeRelationMsg>)))
  "Returns string type for a message object of type '<BinaryNodeRelationMsg>"
  "srrg_core_ros/BinaryNodeRelationMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BinaryNodeRelationMsg)))
  "Returns string type for a message object of type 'BinaryNodeRelationMsg"
  "srrg_core_ros/BinaryNodeRelationMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BinaryNodeRelationMsg>)))
  "Returns md5sum for a message object of type '<BinaryNodeRelationMsg>"
  "c68e53a93d9563d0a4c40ba0ca0c3435")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BinaryNodeRelationMsg)))
  "Returns md5sum for a message object of type 'BinaryNodeRelationMsg"
  "c68e53a93d9563d0a4c40ba0ca0c3435")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BinaryNodeRelationMsg>)))
  "Returns full string definition for message of type '<BinaryNodeRelationMsg>"
  (cl:format cl:nil "int32 id~%int32 from_id~%int32 to_id~%int32 parent_id~%geometry_msgs/Pose transform~%float32[36] information_matrix~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BinaryNodeRelationMsg)))
  "Returns full string definition for message of type 'BinaryNodeRelationMsg"
  (cl:format cl:nil "int32 id~%int32 from_id~%int32 to_id~%int32 parent_id~%geometry_msgs/Pose transform~%float32[36] information_matrix~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BinaryNodeRelationMsg>))
  (cl:+ 0
     4
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'transform))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'information_matrix) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BinaryNodeRelationMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'BinaryNodeRelationMsg
    (cl:cons ':id (id msg))
    (cl:cons ':from_id (from_id msg))
    (cl:cons ':to_id (to_id msg))
    (cl:cons ':parent_id (parent_id msg))
    (cl:cons ':transform (transform msg))
    (cl:cons ':information_matrix (information_matrix msg))
))
