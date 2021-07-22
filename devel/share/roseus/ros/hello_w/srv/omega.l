;; Auto-generated. Do not edit!


(when (boundp 'hello_w::omega)
  (if (not (find-package "HELLO_W"))
    (make-package "HELLO_W"))
  (shadow 'omega (find-package "HELLO_W")))
(unless (find-package "HELLO_W::OMEGA")
  (make-package "HELLO_W::OMEGA"))
(unless (find-package "HELLO_W::OMEGAREQUEST")
  (make-package "HELLO_W::OMEGAREQUEST"))
(unless (find-package "HELLO_W::OMEGARESPONSE")
  (make-package "HELLO_W::OMEGARESPONSE"))

(in-package "ROS")





(defclass hello_w::omegaRequest
  :super ros::object
  :slots (_radius ))

(defmethod hello_w::omegaRequest
  (:init
   (&key
    ((:radius __radius) 0.0)
    )
   (send-super :init)
   (setq _radius (float __radius))
   self)
  (:radius
   (&optional __radius)
   (if __radius (setq _radius __radius)) _radius)
  (:serialization-length
   ()
   (+
    ;; float32 _radius
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _radius
       (sys::poke _radius (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _radius
     (setq _radius (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass hello_w::omegaResponse
  :super ros::object
  :slots (_angular ))

(defmethod hello_w::omegaResponse
  (:init
   (&key
    ((:angular __angular) 0.0)
    )
   (send-super :init)
   (setq _angular (float __angular))
   self)
  (:angular
   (&optional __angular)
   (if __angular (setq _angular __angular)) _angular)
  (:serialization-length
   ()
   (+
    ;; float32 _angular
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _angular
       (sys::poke _angular (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _angular
     (setq _angular (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass hello_w::omega
  :super ros::object
  :slots ())

(setf (get hello_w::omega :md5sum-) "5415f591ce3216ca03d8f91dffc8ffed")
(setf (get hello_w::omega :datatype-) "hello_w/omega")
(setf (get hello_w::omega :request) hello_w::omegaRequest)
(setf (get hello_w::omega :response) hello_w::omegaResponse)

(defmethod hello_w::omegaRequest
  (:response () (instance hello_w::omegaResponse :init)))

(setf (get hello_w::omegaRequest :md5sum-) "5415f591ce3216ca03d8f91dffc8ffed")
(setf (get hello_w::omegaRequest :datatype-) "hello_w/omegaRequest")
(setf (get hello_w::omegaRequest :definition-)
      "float32 radius
---
float32 angular

")

(setf (get hello_w::omegaResponse :md5sum-) "5415f591ce3216ca03d8f91dffc8ffed")
(setf (get hello_w::omegaResponse :datatype-) "hello_w/omegaResponse")
(setf (get hello_w::omegaResponse :definition-)
      "float32 radius
---
float32 angular

")



(provide :hello_w/omega "5415f591ce3216ca03d8f91dffc8ffed")


