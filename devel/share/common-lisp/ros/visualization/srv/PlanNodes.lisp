; Auto-generated. Do not edit!


(cl:in-package visualization-srv)


;//! \htmlinclude PlanNodes-request.msg.html

(cl:defclass <PlanNodes-request> (roslisp-msg-protocol:ros-message)
  ((nodes
    :reader nodes
    :initarg :nodes
    :type cl:string
    :initform "")
   (solution
    :reader solution
    :initarg :solution
    :type cl:string
    :initform ""))
)

(cl:defclass PlanNodes-request (<PlanNodes-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlanNodes-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlanNodes-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name visualization-srv:<PlanNodes-request> is deprecated: use visualization-srv:PlanNodes-request instead.")))

(cl:ensure-generic-function 'nodes-val :lambda-list '(m))
(cl:defmethod nodes-val ((m <PlanNodes-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visualization-srv:nodes-val is deprecated.  Use visualization-srv:nodes instead.")
  (nodes m))

(cl:ensure-generic-function 'solution-val :lambda-list '(m))
(cl:defmethod solution-val ((m <PlanNodes-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visualization-srv:solution-val is deprecated.  Use visualization-srv:solution instead.")
  (solution m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlanNodes-request>) ostream)
  "Serializes a message object of type '<PlanNodes-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'nodes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'nodes))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'solution))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'solution))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlanNodes-request>) istream)
  "Deserializes a message object of type '<PlanNodes-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'nodes) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'nodes) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'solution) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'solution) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlanNodes-request>)))
  "Returns string type for a service object of type '<PlanNodes-request>"
  "visualization/PlanNodesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanNodes-request)))
  "Returns string type for a service object of type 'PlanNodes-request"
  "visualization/PlanNodesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlanNodes-request>)))
  "Returns md5sum for a message object of type '<PlanNodes-request>"
  "44e8501b86ff5277c89b9e82d7c4f61a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlanNodes-request)))
  "Returns md5sum for a message object of type 'PlanNodes-request"
  "44e8501b86ff5277c89b9e82d7c4f61a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlanNodes-request>)))
  "Returns full string definition for message of type '<PlanNodes-request>"
  (cl:format cl:nil "string nodes~%string solution~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlanNodes-request)))
  "Returns full string definition for message of type 'PlanNodes-request"
  (cl:format cl:nil "string nodes~%string solution~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlanNodes-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'nodes))
     4 (cl:length (cl:slot-value msg 'solution))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlanNodes-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PlanNodes-request
    (cl:cons ':nodes (nodes msg))
    (cl:cons ':solution (solution msg))
))
;//! \htmlinclude PlanNodes-response.msg.html

(cl:defclass <PlanNodes-response> (roslisp-msg-protocol:ros-message)
  ((sum
    :reader sum
    :initarg :sum
    :type cl:integer
    :initform 0))
)

(cl:defclass PlanNodes-response (<PlanNodes-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlanNodes-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlanNodes-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name visualization-srv:<PlanNodes-response> is deprecated: use visualization-srv:PlanNodes-response instead.")))

(cl:ensure-generic-function 'sum-val :lambda-list '(m))
(cl:defmethod sum-val ((m <PlanNodes-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visualization-srv:sum-val is deprecated.  Use visualization-srv:sum instead.")
  (sum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlanNodes-response>) ostream)
  "Serializes a message object of type '<PlanNodes-response>"
  (cl:let* ((signed (cl:slot-value msg 'sum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlanNodes-response>) istream)
  "Deserializes a message object of type '<PlanNodes-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sum) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlanNodes-response>)))
  "Returns string type for a service object of type '<PlanNodes-response>"
  "visualization/PlanNodesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanNodes-response)))
  "Returns string type for a service object of type 'PlanNodes-response"
  "visualization/PlanNodesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlanNodes-response>)))
  "Returns md5sum for a message object of type '<PlanNodes-response>"
  "44e8501b86ff5277c89b9e82d7c4f61a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlanNodes-response)))
  "Returns md5sum for a message object of type 'PlanNodes-response"
  "44e8501b86ff5277c89b9e82d7c4f61a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlanNodes-response>)))
  "Returns full string definition for message of type '<PlanNodes-response>"
  (cl:format cl:nil "int64 sum~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlanNodes-response)))
  "Returns full string definition for message of type 'PlanNodes-response"
  (cl:format cl:nil "int64 sum~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlanNodes-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlanNodes-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PlanNodes-response
    (cl:cons ':sum (sum msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PlanNodes)))
  'PlanNodes-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PlanNodes)))
  'PlanNodes-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanNodes)))
  "Returns string type for a service object of type '<PlanNodes>"
  "visualization/PlanNodes")