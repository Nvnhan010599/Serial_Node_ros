; Auto-generated. Do not edit!


(cl:in-package vidu1-msg)


;//! \htmlinclude vidu1_msg1.msg.html

(cl:defclass <vidu1_msg1> (roslisp-msg-protocol:ros-message)
  ((A
    :reader A
    :initarg :A
    :type cl:integer
    :initform 0)
   (B
    :reader B
    :initarg :B
    :type cl:integer
    :initform 0)
   (C
    :reader C
    :initarg :C
    :type cl:integer
    :initform 0))
)

(cl:defclass vidu1_msg1 (<vidu1_msg1>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <vidu1_msg1>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'vidu1_msg1)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vidu1-msg:<vidu1_msg1> is deprecated: use vidu1-msg:vidu1_msg1 instead.")))

(cl:ensure-generic-function 'A-val :lambda-list '(m))
(cl:defmethod A-val ((m <vidu1_msg1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vidu1-msg:A-val is deprecated.  Use vidu1-msg:A instead.")
  (A m))

(cl:ensure-generic-function 'B-val :lambda-list '(m))
(cl:defmethod B-val ((m <vidu1_msg1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vidu1-msg:B-val is deprecated.  Use vidu1-msg:B instead.")
  (B m))

(cl:ensure-generic-function 'C-val :lambda-list '(m))
(cl:defmethod C-val ((m <vidu1_msg1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vidu1-msg:C-val is deprecated.  Use vidu1-msg:C instead.")
  (C m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <vidu1_msg1>) ostream)
  "Serializes a message object of type '<vidu1_msg1>"
  (cl:let* ((signed (cl:slot-value msg 'A)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'B)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'C)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <vidu1_msg1>) istream)
  "Deserializes a message object of type '<vidu1_msg1>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'A) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'B) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'C) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<vidu1_msg1>)))
  "Returns string type for a message object of type '<vidu1_msg1>"
  "vidu1/vidu1_msg1")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'vidu1_msg1)))
  "Returns string type for a message object of type 'vidu1_msg1"
  "vidu1/vidu1_msg1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<vidu1_msg1>)))
  "Returns md5sum for a message object of type '<vidu1_msg1>"
  "e7a68ce4e0b75a9719b4950a7069c9d4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'vidu1_msg1)))
  "Returns md5sum for a message object of type 'vidu1_msg1"
  "e7a68ce4e0b75a9719b4950a7069c9d4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<vidu1_msg1>)))
  "Returns full string definition for message of type '<vidu1_msg1>"
  (cl:format cl:nil "int32 A~%int32 B~%int32 C~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'vidu1_msg1)))
  "Returns full string definition for message of type 'vidu1_msg1"
  (cl:format cl:nil "int32 A~%int32 B~%int32 C~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <vidu1_msg1>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <vidu1_msg1>))
  "Converts a ROS message object to a list"
  (cl:list 'vidu1_msg1
    (cl:cons ':A (A msg))
    (cl:cons ':B (B msg))
    (cl:cons ':C (C msg))
))
