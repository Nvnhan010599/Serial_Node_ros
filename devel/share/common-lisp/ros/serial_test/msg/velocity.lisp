; Auto-generated. Do not edit!


(cl:in-package serial_test-msg)


;//! \htmlinclude velocity.msg.html

(cl:defclass <velocity> (roslisp-msg-protocol:ros-message)
  ((VelocityMotor
    :reader VelocityMotor
    :initarg :VelocityMotor
    :type cl:integer
    :initform 0))
)

(cl:defclass velocity (<velocity>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <velocity>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'velocity)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name serial_test-msg:<velocity> is deprecated: use serial_test-msg:velocity instead.")))

(cl:ensure-generic-function 'VelocityMotor-val :lambda-list '(m))
(cl:defmethod VelocityMotor-val ((m <velocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_test-msg:VelocityMotor-val is deprecated.  Use serial_test-msg:VelocityMotor instead.")
  (VelocityMotor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <velocity>) ostream)
  "Serializes a message object of type '<velocity>"
  (cl:let* ((signed (cl:slot-value msg 'VelocityMotor)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <velocity>) istream)
  "Deserializes a message object of type '<velocity>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'VelocityMotor) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<velocity>)))
  "Returns string type for a message object of type '<velocity>"
  "serial_test/velocity")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'velocity)))
  "Returns string type for a message object of type 'velocity"
  "serial_test/velocity")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<velocity>)))
  "Returns md5sum for a message object of type '<velocity>"
  "87e9b3f456f7fcb4b57cfde083310f87")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'velocity)))
  "Returns md5sum for a message object of type 'velocity"
  "87e9b3f456f7fcb4b57cfde083310f87")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<velocity>)))
  "Returns full string definition for message of type '<velocity>"
  (cl:format cl:nil "int32 VelocityMotor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'velocity)))
  "Returns full string definition for message of type 'velocity"
  (cl:format cl:nil "int32 VelocityMotor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <velocity>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <velocity>))
  "Converts a ROS message object to a list"
  (cl:list 'velocity
    (cl:cons ':VelocityMotor (VelocityMotor msg))
))
