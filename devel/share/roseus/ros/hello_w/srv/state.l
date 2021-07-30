;; Auto-generated. Do not edit!


(when (boundp 'hello_w::state)
  (if (not (find-package "HELLO_W"))
    (make-package "HELLO_W"))
  (shadow 'state (find-package "HELLO_W")))
(unless (find-package "HELLO_W::STATE")
  (make-package "HELLO_W::STATE"))
(unless (find-package "HELLO_W::STATEREQUEST")
  (make-package "HELLO_W::STATEREQUEST"))
(unless (find-package "HELLO_W::STATERESPONSE")
  (make-package "HELLO_W::STATERESPONSE"))

(in-package "ROS")





(defclass hello_w::stateRequest
  :super ros::object
  :slots (_x _y _theta _v _w ))

(defmethod hello_w::stateRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:theta __theta) 0.0)
    ((:v __v) 0.0)
    ((:w __w) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _theta (float __theta))
   (setq _v (float __v))
   (setq _w (float __w))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:v
   (&optional __v)
   (if __v (setq _v __v)) _v)
  (:w
   (&optional __w)
   (if __w (setq _w __w)) _w)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _theta
    4
    ;; float32 _v
    4
    ;; float32 _w
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _v
       (sys::poke _v (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _w
       (sys::poke _w (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _theta
     (setq _theta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _v
     (setq _v (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _w
     (setq _w (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass hello_w::stateResponse
  :super ros::object
  :slots (_x2 _y2 ))

(defmethod hello_w::stateResponse
  (:init
   (&key
    ((:x2 __x2) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:y2 __y2) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _x2 __x2)
   (setq _y2 __y2)
   self)
  (:x2
   (&optional __x2)
   (if __x2 (setq _x2 __x2)) _x2)
  (:y2
   (&optional __y2)
   (if __y2 (setq _y2 __y2)) _y2)
  (:serialization-length
   ()
   (+
    ;; float32[] _x2
    (* 4    (length _x2)) 4
    ;; float32[] _y2
    (* 4    (length _y2)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _x2
     (write-long (length _x2) s)
     (dotimes (i (length _x2))
       (sys::poke (elt _x2 i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _y2
     (write-long (length _y2) s)
     (dotimes (i (length _y2))
       (sys::poke (elt _y2 i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _x2
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _x2 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _x2 i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _y2
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _y2 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _y2 i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass hello_w::state
  :super ros::object
  :slots ())

(setf (get hello_w::state :md5sum-) "5ac9a471a8e70b776d2c59e836a311ff")
(setf (get hello_w::state :datatype-) "hello_w/state")
(setf (get hello_w::state :request) hello_w::stateRequest)
(setf (get hello_w::state :response) hello_w::stateResponse)

(defmethod hello_w::stateRequest
  (:response () (instance hello_w::stateResponse :init)))

(setf (get hello_w::stateRequest :md5sum-) "5ac9a471a8e70b776d2c59e836a311ff")
(setf (get hello_w::stateRequest :datatype-) "hello_w/stateRequest")
(setf (get hello_w::stateRequest :definition-)
      "float32 x
float32 y
float32 theta
float32 v
float32 w
---
float32[] x2
float32[] y2

")

(setf (get hello_w::stateResponse :md5sum-) "5ac9a471a8e70b776d2c59e836a311ff")
(setf (get hello_w::stateResponse :datatype-) "hello_w/stateResponse")
(setf (get hello_w::stateResponse :definition-)
      "float32 x
float32 y
float32 theta
float32 v
float32 w
---
float32[] x2
float32[] y2

")



(provide :hello_w/state "5ac9a471a8e70b776d2c59e836a311ff")


