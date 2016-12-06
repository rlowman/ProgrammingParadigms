;;; schemefunctions.scm | scheme functions for hw11 Part #2
;;;
;;; Completed by: Robert Lowman
;;; Date: 12/5/16
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (my-reverse aList)
    (if (eqv? (length aList) 1)
      (car aList)
      (cons my-reverse (cdr aList) cdr aList)))
