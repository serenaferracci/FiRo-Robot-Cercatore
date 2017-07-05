;; Auto-generated. Do not edit!


(when (boundp 'srrg_core_ros::IdsSrv)
  (if (not (find-package "SRRG_CORE_ROS"))
    (make-package "SRRG_CORE_ROS"))
  (shadow 'IdsSrv (find-package "SRRG_CORE_ROS")))
(unless (find-package "SRRG_CORE_ROS::IDSSRV")
  (make-package "SRRG_CORE_ROS::IDSSRV"))
(unless (find-package "SRRG_CORE_ROS::IDSSRVREQUEST")
  (make-package "SRRG_CORE_ROS::IDSSRVREQUEST"))
(unless (find-package "SRRG_CORE_ROS::IDSSRVRESPONSE")
  (make-package "SRRG_CORE_ROS::IDSSRVRESPONSE"))

(in-package "ROS")





(defclass srrg_core_ros::IdsSrvRequest
  :super ros::object
  :slots ())

(defmethod srrg_core_ros::IdsSrvRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass srrg_core_ros::IdsSrvResponse
  :super ros::object
  :slots (_local_map_ids ))

(defmethod srrg_core_ros::IdsSrvResponse
  (:init
   (&key
    ((:local_map_ids __local_map_ids) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _local_map_ids __local_map_ids)
   self)
  (:local_map_ids
   (&optional __local_map_ids)
   (if __local_map_ids (setq _local_map_ids __local_map_ids)) _local_map_ids)
  (:serialization-length
   ()
   (+
    ;; int32[] _local_map_ids
    (* 4    (length _local_map_ids)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _local_map_ids
     (write-long (length _local_map_ids) s)
     (dotimes (i (length _local_map_ids))
       (write-long (elt _local_map_ids i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _local_map_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _local_map_ids (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _local_map_ids i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass srrg_core_ros::IdsSrv
  :super ros::object
  :slots ())

(setf (get srrg_core_ros::IdsSrv :md5sum-) "a8cde7006a101b5bad3531b015ef87fb")
(setf (get srrg_core_ros::IdsSrv :datatype-) "srrg_core_ros/IdsSrv")
(setf (get srrg_core_ros::IdsSrv :request) srrg_core_ros::IdsSrvRequest)
(setf (get srrg_core_ros::IdsSrv :response) srrg_core_ros::IdsSrvResponse)

(defmethod srrg_core_ros::IdsSrvRequest
  (:response () (instance srrg_core_ros::IdsSrvResponse :init)))

(setf (get srrg_core_ros::IdsSrvRequest :md5sum-) "a8cde7006a101b5bad3531b015ef87fb")
(setf (get srrg_core_ros::IdsSrvRequest :datatype-) "srrg_core_ros/IdsSrvRequest")
(setf (get srrg_core_ros::IdsSrvRequest :definition-)
      "---
int32[] local_map_ids
")

(setf (get srrg_core_ros::IdsSrvResponse :md5sum-) "a8cde7006a101b5bad3531b015ef87fb")
(setf (get srrg_core_ros::IdsSrvResponse :datatype-) "srrg_core_ros/IdsSrvResponse")
(setf (get srrg_core_ros::IdsSrvResponse :definition-)
      "---
int32[] local_map_ids
")



(provide :srrg_core_ros/IdsSrv "a8cde7006a101b5bad3531b015ef87fb")


