
(cl:in-package :asdf)

(defsystem "vidu1-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "vidu1_msg1" :depends-on ("_package_vidu1_msg1"))
    (:file "_package_vidu1_msg1" :depends-on ("_package"))
  ))