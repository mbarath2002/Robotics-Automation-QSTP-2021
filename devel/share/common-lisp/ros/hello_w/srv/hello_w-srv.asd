
(cl:in-package :asdf)

(defsystem "hello_w-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "omega" :depends-on ("_package_omega"))
    (:file "_package_omega" :depends-on ("_package"))
    (:file "state" :depends-on ("_package_state"))
    (:file "_package_state" :depends-on ("_package"))
  ))