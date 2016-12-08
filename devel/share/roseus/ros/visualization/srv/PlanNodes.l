;; Auto-generated. Do not edit!


(when (boundp 'visualization::PlanNodes)
  (if (not (find-package "VISUALIZATION"))
    (make-package "VISUALIZATION"))
  (shadow 'PlanNodes (find-package "VISUALIZATION")))
(unless (find-package "VISUALIZATION::PLANNODES")
  (make-package "VISUALIZATION::PLANNODES"))
(unless (find-package "VISUALIZATION::PLANNODESREQUEST")
  (make-package "VISUALIZATION::PLANNODESREQUEST"))
(unless (find-package "VISUALIZATION::PLANNODESRESPONSE")
  (make-package "VISUALIZATION::PLANNODESRESPONSE"))

(in-package "ROS")





(defclass visualization::PlanNodesRequest
  :super ros::object
  :slots (_nodes _solution ))

(defmethod visualization::PlanNodesRequest
  (:init
   (&key
    ((:nodes __nodes) "")
    ((:solution __solution) "")
    )
   (send-super :init)
   (setq _nodes (string __nodes))
   (setq _solution (string __solution))
   self)
  (:nodes
   (&optional __nodes)
   (if __nodes (setq _nodes __nodes)) _nodes)
  (:solution
   (&optional __solution)
   (if __solution (setq _solution __solution)) _solution)
  (:serialization-length
   ()
   (+
    ;; string _nodes
    4 (length _nodes)
    ;; string _solution
    4 (length _solution)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _nodes
       (write-long (length _nodes) s) (princ _nodes s)
     ;; string _solution
       (write-long (length _solution) s) (princ _solution s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _nodes
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _nodes (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _solution
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _solution (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass visualization::PlanNodesResponse
  :super ros::object
  :slots (_sum ))

(defmethod visualization::PlanNodesResponse
  (:init
   (&key
    ((:sum __sum) 0)
    )
   (send-super :init)
   (setq _sum (round __sum))
   self)
  (:sum
   (&optional __sum)
   (if __sum (setq _sum __sum)) _sum)
  (:serialization-length
   ()
   (+
    ;; int64 _sum
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _sum
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _sum (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _sum) (= (length (_sum . bv)) 2)) ;; bignum
              (write-long (ash (elt (_sum . bv) 0) 0) s)
              (write-long (ash (elt (_sum . bv) 1) -1) s))
             ((and (class _sum) (= (length (_sum . bv)) 1)) ;; big1
              (write-long (elt (_sum . bv) 0) s)
              (write-long (if (>= _sum 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _sum s)(write-long (if (>= _sum 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _sum
#+(or :alpha :irix6 :x86_64)
      (setf _sum (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _sum (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass visualization::PlanNodes
  :super ros::object
  :slots ())

(setf (get visualization::PlanNodes :md5sum-) "44e8501b86ff5277c89b9e82d7c4f61a")
(setf (get visualization::PlanNodes :datatype-) "visualization/PlanNodes")
(setf (get visualization::PlanNodes :request) visualization::PlanNodesRequest)
(setf (get visualization::PlanNodes :response) visualization::PlanNodesResponse)

(defmethod visualization::PlanNodesRequest
  (:response () (instance visualization::PlanNodesResponse :init)))

(setf (get visualization::PlanNodesRequest :md5sum-) "44e8501b86ff5277c89b9e82d7c4f61a")
(setf (get visualization::PlanNodesRequest :datatype-) "visualization/PlanNodesRequest")
(setf (get visualization::PlanNodesRequest :definition-)
      "string nodes
string solution
---
int64 sum



")

(setf (get visualization::PlanNodesResponse :md5sum-) "44e8501b86ff5277c89b9e82d7c4f61a")
(setf (get visualization::PlanNodesResponse :datatype-) "visualization/PlanNodesResponse")
(setf (get visualization::PlanNodesResponse :definition-)
      "string nodes
string solution
---
int64 sum



")



(provide :visualization/PlanNodes "44e8501b86ff5277c89b9e82d7c4f61a")


