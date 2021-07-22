; Auto-generated. Do not edit!


(cl:in-package hello_w-srv)


;//! \htmlinclude omega-request.msg.html

(cl:defclass <omega-request> (roslisp-msg-protocol:ros-message)
  ((radius
    :reader radius
    :initarg :radius
    :type cl:float
    :initform 0.0))
)

(cl:defclass omega-request (<omega-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <omega-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'omega-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hello_w-srv:<omega-request> is deprecated: use hello_w-srv:omega-request instead.")))

(cl:ensure-generic-function 'radius-val :lambda-list '(m))
(cl:defmethod radius-val ((m <omega-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello_w-srv:radius-val is deprecated.  Use hello_w-srv:radius instead.")
  (radius m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <omega-request>) ostream)
  "Serializes a message object of type '<omega-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <omega-request>) istream)
  "Deserializes a message object of type '<omega-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'radius) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<omega-request>)))
  "Returns string type for a service object of type '<omega-request>"
  "hello_w/omegaRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'omega-request)))
  "Returns string type for a service object of type 'omega-request"
  "hello_w/omegaRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<omega-request>)))
  "Returns md5sum for a message object of type '<omega-request>"
  "5415f591ce3216ca03d8f91dffc8ffed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'omega-request)))
  "Returns md5sum for a message object of type 'omega-request"
  "5415f591ce3216ca03d8f91dffc8ffed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<omega-request>)))
  "Returns full string definition for message of type '<omega-request>"
  (cl:format cl:nil "float32 radius~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'omega-request)))
  "Returns full string definition for message of type 'omega-request"
  (cl:format cl:nil "float32 radius~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <omega-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <omega-request>))
  "Converts a ROS message object to a list"
  (cl:list 'omega-request
    (cl:cons ':radius (radius msg))
))
;//! \htmlinclude omega-response.msg.html

(cl:defclass <omega-response> (roslisp-msg-protocol:ros-message)
  ((angular
    :reader angular
    :initarg :angular
    :type cl:float
    :initform 0.0))
)

(cl:defclass omega-response (<omega-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <omega-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'omega-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hello_w-srv:<omega-response> is deprecated: use hello_w-srv:omega-response instead.")))

(cl:ensure-generic-function 'angular-val :lambda-list '(m))
(cl:defmethod angular-val ((m <omega-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello_w-srv:angular-val is deprecated.  Use hello_w-srv:angular instead.")
  (angular m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <omega-response>) ostream)
  "Serializes a message object of type '<omega-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angular))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <omega-response>) istream)
  "Deserializes a message object of type '<omega-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angular) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<omega-response>)))
  "Returns string type for a service object of type '<omega-response>"
  "hello_w/omegaResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'omega-response)))
  "Returns string type for a service object of type 'omega-response"
  "hello_w/omegaResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<omega-response>)))
  "Returns md5sum for a message object of type '<omega-response>"
  "5415f591ce3216ca03d8f91dffc8ffed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'omega-response)))
  "Returns md5sum for a message object of type 'omega-response"
  "5415f591ce3216ca03d8f91dffc8ffed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<omega-response>)))
  "Returns full string definition for message of type '<omega-response>"
  (cl:format cl:nil "float32 angular~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'omega-response)))
  "Returns full string definition for message of type 'omega-response"
  (cl:format cl:nil "float32 angular~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <omega-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <omega-response>))
  "Converts a ROS message object to a list"
  (cl:list 'omega-response
    (cl:cons ':angular (angular msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'omega)))
  'omega-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'omega)))
  'omega-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'omega)))
  "Returns string type for a service object of type '<omega>"
  "hello_w/omega")