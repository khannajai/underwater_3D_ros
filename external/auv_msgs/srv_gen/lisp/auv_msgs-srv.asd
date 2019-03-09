
(cl:in-package :asdf)

(defsystem "auv_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :auv_msgs-msg
)
  :components ((:file "_package")
    (:file "PlanVehicleSearchPath" :depends-on ("_package_PlanVehicleSearchPath"))
    (:file "_package_PlanVehicleSearchPath" :depends-on ("_package"))
    (:file "GenerateIPsFromOctomap" :depends-on ("_package_GenerateIPsFromOctomap"))
    (:file "_package_GenerateIPsFromOctomap" :depends-on ("_package"))
    (:file "SetInterventionConfig" :depends-on ("_package_SetInterventionConfig"))
    (:file "_package_SetInterventionConfig" :depends-on ("_package"))
  ))