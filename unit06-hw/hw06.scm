;;; average.el "test-drives" function average().
;;; Output: the average of a sequence of numbers.
;;;
;;; Completed by: Robert Lowman
;;; Date: 10/17/2016
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; read reads in an array of integers.        
;;; Receive: aVector, a vector of numbers,    
;;;          currentIndex, the current Index we are reading in
(define (read aVector currentIndex)
  (if (vector? aVector)
     (if(< currentIndex (vector-length aVector))
	   (begin
	     (vector-set! aVector currentIndex (read))
	     (read aVector (+ currentIndex 1)))
)))

;;; average() computes the average of a vector of numbers. 
;;; Receive: aVector, a vector of numbers.
;;;          currentIndex, the current Index we are printing            
(define (print aVector currentIndex)
  (if (vector? aVector)
      (if(< currentIndex (vector-length aVector)
	    (begin
	      (display
	       (vector-ref aVector currentIndex))
	      (print aVector (+ currentIndex 1)))
))))


;;; Starting point for running program
(begin
  (let ((first (make-vector 8)))
    (begin
      (display "Enter 8 doubles:  ")
      (read first 0)
      (print first 0))
(quit)))
