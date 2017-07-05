
(cl:in-package :asdf)

(defsystem "navig_robot-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :nav_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "navigAction" :depends-on ("_package_navigAction"))
    (:file "_package_navigAction" :depends-on ("_package"))
    (:file "navigActionFeedback" :depends-on ("_package_navigActionFeedback"))
    (:file "_package_navigActionFeedback" :depends-on ("_package"))
    (:file "navigActionGoal" :depends-on ("_package_navigActionGoal"))
    (:file "_package_navigActionGoal" :depends-on ("_package"))
    (:file "navigActionResult" :depends-on ("_package_navigActionResult"))
    (:file "_package_navigActionResult" :depends-on ("_package"))
    (:file "navigFeedback" :depends-on ("_package_navigFeedback"))
    (:file "_package_navigFeedback" :depends-on ("_package"))
    (:file "navigGoal" :depends-on ("_package_navigGoal"))
    (:file "_package_navigGoal" :depends-on ("_package"))
    (:file "navigResult" :depends-on ("_package_navigResult"))
    (:file "_package_navigResult" :depends-on ("_package"))
  ))