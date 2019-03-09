
(cl:in-package :asdf)

(defsystem "nessie_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "LBLTimeDelay" :depends-on ("_package_LBLTimeDelay"))
    (:file "_package_LBLTimeDelay" :depends-on ("_package"))
    (:file "TeledyneExplDvl" :depends-on ("_package_TeledyneExplDvl"))
    (:file "_package_TeledyneExplDvl" :depends-on ("_package"))
  ))