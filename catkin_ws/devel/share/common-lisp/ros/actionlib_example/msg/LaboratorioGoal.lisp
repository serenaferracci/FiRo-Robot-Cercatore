; Auto-generated. Do not edit!


(cl:in-package actionlib_example-msg)


;//! \htmlinclude LaboratorioGoal.msg.html

(cl:defclass <LaboratorioGoal> (roslisp-msg-protocol:ros-message)
  ((order
    :reader order
    :initarg :order
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass LaboratorioGoal (<LaboratorioGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaboratorioGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaboratorioGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name actionlib_example-msg:<LaboratorioGoal> is deprecated: use actionlib_example-msg:LaboratorioGoal instead.")))

(cl:ensure-generic-function 'order-val :lambda-list '(m))
(cl:defmethod order-val ((m <LaboratorioGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib_example-msg:order-val is deprecated.  Use actionlib_example-msg:order instead.")
  (order m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaboratorioGoal>) ostream)
  "Serializes a message object of type '<LaboratorioGoal>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'order))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'order))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaboratorioGoal>) istream)
  "Deserializes a message object of type '<LaboratorioGoal>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'order) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'order)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaboratorioGoal>)))
  "Returns string type for a message object of type '<LaboratorioGoal>"
  "actionlib_example/LaboratorioGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaboratorioGoal)))
  "Returns string type for a message object of type 'LaboratorioGoal"
  "actionlib_example/LaboratorioGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaboratorioGoal>)))
  "Returns md5sum for a message object of type '<LaboratorioGoal>"
  "815e5b155f124a21ff08b076ec07fb8b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaboratorioGoal)))
  "Returns md5sum for a message object of type 'LaboratorioGoal"
  "815e5b155f124a21ff08b076ec07fb8b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaboratorioGoal>)))
  "Returns full string definition for message of type '<LaboratorioGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition inviata dal client al server~%float64[] order~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaboratorioGoal)))
  "Returns full string definition for message of type 'LaboratorioGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition inviata dal client al server~%float64[] order~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaboratorioGoal>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'order) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaboratorioGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'LaboratorioGoal
    (cl:cons ':order (order msg))
))