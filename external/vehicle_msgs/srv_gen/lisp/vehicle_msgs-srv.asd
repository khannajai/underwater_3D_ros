
(cl:in-package :asdf)

(defsystem "vehicle_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :diagnostic_msgs-msg
               :std_msgs-msg
               :vehicle_msgs-msg
)
  :components ((:file "_package")
    (:file "PathService" :depends-on ("_package_PathService"))
    (:file "_package_PathService" :depends-on ("_package"))
    (:file "FloatService" :depends-on ("_package_FloatService"))
    (:file "_package_FloatService" :depends-on ("_package"))
    (:file "BooleanService" :depends-on ("_package_BooleanService"))
    (:file "_package_BooleanService" :depends-on ("_package"))
    (:file "StringService" :depends-on ("_package_StringService"))
    (:file "_package_StringService" :depends-on ("_package"))
    (:file "DictionaryService" :depends-on ("_package_DictionaryService"))
    (:file "_package_DictionaryService" :depends-on ("_package"))
  ))