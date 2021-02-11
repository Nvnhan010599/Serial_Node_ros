
(cl:in-package :asdf)

(defsystem "vidu1-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "vidu1_srv1" :depends-on ("_package_vidu1_srv1"))
    (:file "_package_vidu1_srv1" :depends-on ("_package"))
  ))