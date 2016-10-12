;;; average.el "test-drives" function average().
;;; Output: the average of a sequence of numbers.
;;;
;;; Begun by: Dr Jump for CS 315 at King's College
;;; Completed by: Robert Lowman
;;; Date: 10/11/2016
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; sum() sums the values in a vector.        ;;
;;; Receive: aVector, a vector of numbers,    ;;
;;;          itsSize, its size.               ;;
;;; Return: the sum of the values in aVector. ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(define (sum aVector itsSize)
  (if (vector? aVector)
      (if (<= itsSize 0)
	  0.0
	  (+
	   (vector-ref aVector (- itsSize 1))
	   (sum aVector (- itsSize 1)))))
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; average() computes the average of a vector of numbers. ;;
;;; Receive: aVector, a vector of numbers.                 ;;
;;; Return: the average of the numbers.                    ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(define (average aVector)
  (if (vector? aVector)
      (if (<= (vector-length aVector) 0)
	  0.0
	  (/ (sum aVector (vector-length aVector))
	     (vector-length aVector)
))))



;;; Starting point for running program
(begin
  (let ((first #()))
    (begin
;      (display "first sum is ")
;      (display (sum first (vector-length first)))
;      (display "\n")
      (display "first average is ")
      (display (average first))
      (display "\n")))
  (let ((second #(9.0 8.0 7.0 6.0)))
    (begin
;      (display "second sum is ")
;      (display (sum second (vector-length second)))
;      (display "\n")
      (display "second average is ")
      (display (average second))
      (display "\n")
      (quit))))
