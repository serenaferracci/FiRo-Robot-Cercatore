
(cl:in-package :asdf)

(defsystem "srrg_core_ros-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :srrg_core_ros-msg
)
  :components ((:file "_package")
    (:file "IdsSrv" :depends-on ("_package_IdsSrv"))
    (:file "_package_IdsSrv" :depends-on ("_package"))
    (:file "LocalMapByIdSrv" :depends-on ("_package_LocalMapByIdSrv"))
    (:file "_package_LocalMapByIdSrv" :depends-on ("_package"))
  ))