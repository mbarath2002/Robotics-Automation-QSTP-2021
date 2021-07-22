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
  :slots (_x1 _y1 _theta1 _v _w ))

(defmethod hello_w::stateRequest
  (:init
   (&key
    ((:x1 __x1) 0.0)
    ((:y1 __y1) 0.0)
    ((:theta1 __theta1) 0.0)
    ((:v __v) 0.0)
    ((:w __w) 0.0)
    )
   (send-super :init)
   (setq _x1 (float __x1))
   (setq _y1 (float __y1))
   (setq _theta1 (float __theta1))
   (setq _v (float __v))
   (setq _w (float __w))
   self)
  (:x1
   (&optional __x1)
   (if __x1 (setq _x1 __x1)) _x1)
  (:y1
   (&optional __y1)
   (if __y1 (setq _y1 __y1)) _y1)
  (:theta1
   (&optional __theta1)
   (if __theta1 (setq _theta1 __theta1)) _theta1)
  (:v
   (&optional __v)
   (if __v (setq _v __v)) _v)
  (:w
   (&optional __w)
   (if __w (setq _w __w)) _w)
  (:serialization-length
   ()
   (+
    ;; float32 _x1
    4
    ;; float32 _y1
    4
    ;; float32 _theta1
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
     ;; float32 _x1
       (sys::poke _x1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y1
       (sys::poke _y1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _theta1
       (sys::poke _theta1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _v
       (sys::poke _v (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _w
       (sys::poke _w (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x1
     (setq _x1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y1
     (setq _y1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _theta1
     (setq _theta1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _v
     (setq _v (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _w
     (setq _w (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass hello_w::stateResponse
  :super ros::object
  :slots (_x2 _y2 _theta2 ))

(defmethod hello_w::stateResponse
  (:init
   (&key
    ((:x2 __x2) 0.0)
    ((:y2 __y2) 0.0)
    ((:theta2 __theta2) 0.0)
    )
   (send-super :init)
   (setq _x2 (float __x2))
   (setq _y2 (float __y2))
   (setq _theta2 (float __theta2))
   self)
  (:x2
   (&optional __x2)
   (if __x2 (setq _x2 __x2)) _x2)
  (:y2
   (&optional __y2)
   (if __y2 (setq _y2 __y2)) _y2)
  (:theta2
   (&optional __theta2)
   (if __theta2 (setq _theta2 __theta2)) _theta2)
  (:serialization-length
   ()
   (+
    ;; float32 _x2
    4
    ;; float32 _y2
    4
    ;; float32 _theta2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x2
       (sys::poke _x2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y2
       (sys::poke _y2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _theta2
       (sys::poke _theta2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x2
     (setq _x2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y2
     (setq _y2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _theta2
     (setq _theta2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass hello_w::state
  :super ros::object
  :slots ())

(setf (get hello_w::state :md5sum-) "a371dbc8e48639d98b2f53f083975699")
(setf (get hello_w::state :datatype-) "hello_w/state")
(setf (get hello_w::state :request) hello_w::stateRequest)
(setf (get hello_w::state :response) hello_w::stateResponse)

(defmethod hello_w::stateRequest
  (:response () (instance hello_w::stateResponse :init)))

(setf (get hello_w::stateRequest :md5sum-) "a371dbc8e48639d98b2f53f083975699")
(setf (get hello_w::stateRequest :datatype-) "hello_w/stateRequest")
(setf (get hello_w::stateRequest :definition-)
      "float32 x1
float32 y1
float32 theta1
float32 v
float32 w
---
float32 x2
float32 y2
float32 theta2

")

(setf (get hello_w::stateResponse :md5sum-) "a371dbc8e48639d98b2f53f083975699")
(setf (get hello_w::stateResponse :datatype-) "hello_w/stateResponse")
(setf (get hello_w::stateResponse :definition-)
      "float32 x1
float32 y1
float32 theta1
float32 v
float32 w
---
float32 x2
float32 y2
float32 theta2

")



(provide :hello_w/state "a371dbc8e48639d98b2f53f083975699")


