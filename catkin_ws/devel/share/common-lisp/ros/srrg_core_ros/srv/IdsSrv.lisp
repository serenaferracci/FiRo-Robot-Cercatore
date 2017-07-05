; Auto-generated. Do not edit!


(cl:in-package srrg_core_ros-srv)


;//! \htmlinclude IdsSrv-request.msg.html

(cl:defclass <IdsSrv-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass IdsSrv-request (<IdsSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IdsSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IdsSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name srrg_core_ros-srv:<IdsSrv-request> is deprecated: use srrg_core_ros-srv:IdsSrv-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IdsSrv-request>) ostream)
  "Serializes a message object of type '<IdsSrv-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IdsSrv-request>) istream)
  "Deserializes a message object of type '<IdsSrv-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IdsSrv-request>)))
  "Returns string type for a service object of type '<IdsSrv-request>"
  "srrg_core_ros/IdsSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IdsSrv-request)))
  "Returns string type for a service object of type 'IdsSrv-request"
  "srrg_core_ros/IdsSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IdsSrv-request>)))
  "Returns md5sum for a message object of type '<IdsSrv-request>"
  "a8cde7006a101b5bad3531b015ef87fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IdsSrv-request)))
  "Returns md5sum for a message object of type 'IdsSrv-request"
  "a8cde7006a101b5bad3531b015ef87fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IdsSrv-request>)))
  "Returns full string definition for message of type '<IdsSrv-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IdsSrv-request)))
  "Returns full string definition for message of type 'IdsSrv-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IdsSrv-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IdsSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'IdsSrv-request
))
;//! \htmlinclude IdsSrv-response.msg.html

(cl:defclass <IdsSrv-response> (roslisp-msg-protocol:ros-message)
  ((local_map_ids
    :reader local_map_ids
    :initarg :local_map_ids
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass IdsSrv-response (<IdsSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IdsSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IdsSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name srrg_core_ros-srv:<IdsSrv-response> is deprecated: use srrg_core_ros-srv:IdsSrv-response instead.")))

(cl:ensure-generic-function 'local_map_ids-val :lambda-list '(m))
(cl:defmethod local_map_ids-val ((m <IdsSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srrg_core_ros-srv:local_map_ids-val is deprecated.  Use srrg_core_ros-srv:local_map_ids instead.")
  (local_map_ids m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IdsSrv-response>) ostream)
  "Serializes a message object of type '<IdsSrv-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'local_map_ids))))
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
   (cl:slot-value msg 'local_map_ids))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IdsSrv-response>) istream)
  "Deserializes a message object of type '<IdsSrv-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'local_map_ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'local_map_ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IdsSrv-response>)))
  "Returns string type for a service object of type '<IdsSrv-response>"
  "srrg_core_ros/IdsSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IdsSrv-response)))
  "Returns string type for a service object of type 'IdsSrv-response"
  "srrg_core_ros/IdsSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IdsSrv-response>)))
  "Returns md5sum for a message object of type '<IdsSrv-response>"
  "a8cde7006a101b5bad3531b015ef87fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IdsSrv-response)))
  "Returns md5sum for a message object of type 'IdsSrv-response"
  "a8cde7006a101b5bad3531b015ef87fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IdsSrv-response>)))
  "Returns full string definition for message of type '<IdsSrv-response>"
  (cl:format cl:nil "int32[] local_map_ids~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IdsSrv-response)))
  "Returns full string definition for message of type 'IdsSrv-response"
  (cl:format cl:nil "int32[] local_map_ids~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IdsSrv-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'local_map_ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IdsSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'IdsSrv-response
    (cl:cons ':local_map_ids (local_map_ids msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'IdsSrv)))
  'IdsSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'IdsSrv)))
  'IdsSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IdsSrv)))
  "Returns string type for a service object of type '<IdsSrv>"
  "srrg_core_ros/IdsSrv")