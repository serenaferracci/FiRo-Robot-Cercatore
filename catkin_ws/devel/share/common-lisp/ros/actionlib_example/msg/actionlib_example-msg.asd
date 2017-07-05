
(cl:in-package :asdf)

(defsystem "actionlib_example-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "LaboratorioAction" :depends-on ("_package_LaboratorioAction"))
    (:file "_package_LaboratorioAction" :depends-on ("_package"))
    (:file "LaboratorioActionFeedback" :depends-on ("_package_LaboratorioActionFeedback"))
    (:file "_package_LaboratorioActionFeedback" :depends-on ("_package"))
    (:file "LaboratorioActionGoal" :depends-on ("_package_LaboratorioActionGoal"))
    (:file "_package_LaboratorioActionGoal" :depends-on ("_package"))
    (:file "LaboratorioActionResult" :depends-on ("_package_LaboratorioActionResult"))
    (:file "_package_LaboratorioActionResult" :depends-on ("_package"))
    (:file "LaboratorioFeedback" :depends-on ("_package_LaboratorioFeedback"))
    (:file "_package_LaboratorioFeedback" :depends-on ("_package"))
    (:file "LaboratorioGoal" :depends-on ("_package_LaboratorioGoal"))
    (:file "_package_LaboratorioGoal" :depends-on ("_package"))
    (:file "LaboratorioResult" :depends-on ("_package_LaboratorioResult"))
    (:file "_package_LaboratorioResult" :depends-on ("_package"))
  ))