;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; letterGrade.scm
;;; Returns the letter grade for the given numeric grade.
;;;
;;; Input: grade, a int
;;; Precondition: grade is between 0-100
;;; Output: the letter code for the corresponding grade (A, B, C, D, or E)
;;;
;;; Completed by: Robert Lowman
;;; Date: 9/26/16
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (letterCode grade)
  (cond
   ((> grade 89) "A")
   ((> grade 79) "B")
   ((> grade 69) "C")
   ((> grade 59) "D")
   (t "F")
  )
) 

;;; Starting point for running program
(begin
  (display "Enter your numeric grade (0-100): ")
  (let ((grade (read)))
    (display (letterCode grade))
    (newline)
(quit)))
