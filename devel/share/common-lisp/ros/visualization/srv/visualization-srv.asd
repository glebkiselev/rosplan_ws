
(cl:in-package :asdf)

(defsystem "visualization-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "PlanNodes" :depends-on ("_package_PlanNodes"))
    (:file "_package_PlanNodes" :depends-on ("_package"))
  ))