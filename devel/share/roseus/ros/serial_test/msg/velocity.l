;; Auto-generated. Do not edit!


(when (boundp 'serial_test::velocity)
  (if (not (find-package "SERIAL_TEST"))
    (make-package "SERIAL_TEST"))
  (shadow 'velocity (find-package "SERIAL_TEST")))
(unless (find-package "SERIAL_TEST::VELOCITY")
  (make-package "SERIAL_TEST::VELOCITY"))

(in-package "ROS")
;;//! \htmlinclude velocity.msg.html


(defclass serial_test::velocity
  :super ros::object
  :slots (_VelocityMotor ))

(defmethod serial_test::velocity
  (:init
   (&key
    ((:VelocityMotor __VelocityMotor) 0)
    )
   (send-super :init)
   (setq _VelocityMotor (round __VelocityMotor))
   self)
  (:VelocityMotor
   (&optional __VelocityMotor)
   (if __VelocityMotor (setq _VelocityMotor __VelocityMotor)) _VelocityMotor)
  (:serialization-length
   ()
   (+
    ;; int32 _VelocityMotor
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _VelocityMotor
       (write-long _VelocityMotor s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _VelocityMotor
     (setq _VelocityMotor (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get serial_test::velocity :md5sum-) "87e9b3f456f7fcb4b57cfde083310f87")
(setf (get serial_test::velocity :datatype-) "serial_test/velocity")
(setf (get serial_test::velocity :definition-)
      "int32 VelocityMotor

")



(provide :serial_test/velocity "87e9b3f456f7fcb4b57cfde083310f87")


