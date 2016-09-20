;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; yearcodes.scm
;;; Returns the code for a givena cademic yar.
;;;
;;; Input: year, a string
;;; Precondition: year is one of (freshman, sophomore, junior, or senior)
;;; Output: the integer code corresponding to year (1, 2, 3, or 4)
;;;
;;; Begun by Dr Jump for CS 315 at King's College
;;; Completed by: Robert Lowman
;;; Date: 9/20/16
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Replace this line with the definition of function yearCode()
(define (yearCode year)
  (if (eqv? year 'freshman)
      1
      (if (eqv? year 'sophomore)
	  2
	  (if (eqv? year 'junior)
	      3
	      (if(eqv? year 'senior)
		 4
		 0))))) 

;;; Starting point for running program
(begin
  (display "Enter your academic year: ")
  (let ((year (read)))
    (display (yearCode year))
    (newline)
    (quit)))
