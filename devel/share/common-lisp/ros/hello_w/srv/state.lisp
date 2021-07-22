; Auto-generated. Do not edit!


(cl:in-package hello_w-srv)


;//! \htmlinclude state-request.msg.html

(cl:defclass <state-request> (roslisp-msg-protocol:ros-message)
  ((x1
    :reader x1
    :initarg :x1
    :type cl:float
    :initform 0.0)
   (y1
    :reader y1
    :initarg :y1
    :type cl:float
    :initform 0.0)
   (theta1
    :reader theta1
    :initarg :theta1
    :type cl:float
    :initform 0.0)
   (v
    :reader v
    :initarg :v
    :type cl:float
    :initform 0.0)
   (w
    :reader w
    :initarg :w
    :type cl:float
    :initform 0.0))
)

(cl:defclass state-request (<state-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <state-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'state-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hello_w-srv:<state-request> is deprecated: use hello_w-srv:state-request instead.")))

(cl:ensure-generic-function 'x1-val :lambda-list '(m))
(cl:defmethod x1-val ((m <state-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello_w-srv:x1-val is deprecated.  Use hello_w-srv:x1 instead.")
  (x1 m))

(cl:ensure-generic-function 'y1-val :lambda-list '(m))
(cl:defmethod y1-val ((m <state-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello_w-srv:y1-val is deprecated.  Use hello_w-srv:y1 instead.")
  (y1 m))

(cl:ensure-generic-function 'theta1-val :lambda-list '(m))
(cl:defmethod theta1-val ((m <state-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello_w-srv:theta1-val is deprecated.  Use hello_w-srv:theta1 instead.")
  (theta1 m))

(cl:ensure-generic-function 'v-val :lambda-list '(m))
(cl:defmethod v-val ((m <state-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello_w-srv:v-val is deprecated.  Use hello_w-srv:v instead.")
  (v m))

(cl:ensure-generic-function 'w-val :lambda-list '(m))
(cl:defmethod w-val ((m <state-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello_w-srv:w-val is deprecated.  Use hello_w-srv:w instead.")
  (w m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <state-request>) ostream)
  "Serializes a message object of type '<state-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'theta1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'v))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'w))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <state-request>) istream)
  "Deserializes a message object of type '<state-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'w) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<state-request>)))
  "Returns string type for a service object of type '<state-request>"
  "hello_w/stateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'state-request)))
  "Returns string type for a service object of type 'state-request"
  "hello_w/stateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<state-request>)))
  "Returns md5sum for a message object of type '<state-request>"
  "a371dbc8e48639d98b2f53f083975699")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'state-request)))
  "Returns md5sum for a message object of type 'state-request"
  "a371dbc8e48639d98b2f53f083975699")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<state-request>)))
  "Returns full string definition for message of type '<state-request>"
  (cl:format cl:nil "float32 x1~%float32 y1~%float32 theta1~%float32 v~%float32 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'state-request)))
  "Returns full string definition for message of type 'state-request"
  (cl:format cl:nil "float32 x1~%float32 y1~%float32 theta1~%float32 v~%float32 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <state-request>))
  (cl:+ 0
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <state-request>))
  "Converts a ROS message object to a list"
  (cl:list 'state-request
    (cl:cons ':x1 (x1 msg))
    (cl:cons ':y1 (y1 msg))
    (cl:cons ':theta1 (theta1 msg))
    (cl:cons ':v (v msg))
    (cl:cons ':w (w msg))
))
;//! \htmlinclude state-response.msg.html

(cl:defclass <state-response> (roslisp-msg-protocol:ros-message)
  ((x2
    :reader x2
    :initarg :x2
    :type cl:float
    :initform 0.0)
   (y2
    :reader y2
    :initarg :y2
    :type cl:float
    :initform 0.0)
   (theta2
    :reader theta2
    :initarg :theta2
    :type cl:float
    :initform 0.0))
)

(cl:defclass state-response (<state-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <state-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'state-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hello_w-srv:<state-response> is deprecated: use hello_w-srv:state-response instead.")))

(cl:ensure-generic-function 'x2-val :lambda-list '(m))
(cl:defmethod x2-val ((m <state-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello_w-srv:x2-val is deprecated.  Use hello_w-srv:x2 instead.")
  (x2 m))

(cl:ensure-generic-function 'y2-val :lambda-list '(m))
(cl:defmethod y2-val ((m <state-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello_w-srv:y2-val is deprecated.  Use hello_w-srv:y2 instead.")
  (y2 m))

(cl:ensure-generic-function 'theta2-val :lambda-list '(m))
(cl:defmethod theta2-val ((m <state-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello_w-srv:theta2-val is deprecated.  Use hello_w-srv:theta2 instead.")
  (theta2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <state-response>) ostream)
  "Serializes a message object of type '<state-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'theta2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <state-response>) istream)
  "Deserializes a message object of type '<state-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta2) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<state-response>)))
  "Returns string type for a service object of type '<state-response>"
  "hello_w/stateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'state-response)))
  "Returns string type for a service object of type 'state-response"
  "hello_w/stateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<state-response>)))
  "Returns md5sum for a message object of type '<state-response>"
  "a371dbc8e48639d98b2f53f083975699")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'state-response)))
  "Returns md5sum for a message object of type 'state-response"
  "a371dbc8e48639d98b2f53f083975699")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<state-response>)))
  "Returns full string definition for message of type '<state-response>"
  (cl:format cl:nil "float32 x2~%float32 y2~%float32 theta2~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'state-response)))
  "Returns full string definition for message of type 'state-response"
  (cl:format cl:nil "float32 x2~%float32 y2~%float32 theta2~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <state-response>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <state-response>))
  "Converts a ROS message object to a list"
  (cl:list 'state-response
    (cl:cons ':x2 (x2 msg))
    (cl:cons ':y2 (y2 msg))
    (cl:cons ':theta2 (theta2 msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'state)))
  'state-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'state)))
  'state-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'state)))
  "Returns string type for a service object of type '<state>"
  "hello_w/state")