;;; logtable.scm displays a table of logarithms.
;;;
;;; Input: start, stop and increment, three reals.
;;; PRE: start < stop and increment > 0.
;;; Output: A table of logarithms from start to stop,
;;;          with interval of increment.
;;;
;;; Begun by: Dr. Jump for CS 315 at King's College
;;; Completed by: Robert Lowman
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (log10 n)
  (/ (log n) (log 10)))

(define (displayLogTable start stop increment)
  (if (<= start stop)
      (begin
      (display "The logarithm of ")
      (display start)
      (display " is ")
      (display (log10 start))
      (display "\n")
      (display "\n")
      (displayLogTable (+ start increment) stop increment))
    ))


;;; Starting point for running program
(begin
  (display "Enter starting value: ")
  (let ((start (read)))
    (display "Enter stopping value: ")
    (let ((stop (read)))
      (display "Enter increment value: ")
      (let ((increment (read)))
        (begin
          (displayLogTable start stop increment)
          (quit))))))
