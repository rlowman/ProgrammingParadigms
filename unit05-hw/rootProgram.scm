;;; rootProgram.scm gets a value from our equation
;;;
;;; Input: a, the value of a in the equation,
;;;        b, the value of b in the equation,
;;;        c, the value of c in the equation.
;;; Output: the value of the equation
;;;
;;; Completed by: Robert Lowman
;;; Date: 10/9/2016
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;:;
;;; quadraticRoots() determines if given variables are 
;;; valid and then finds roots              
;;;  
;;; Receive: a, the value for a in the equation,    
;;;          b, the value for b in the equation, 
;;;          c, the value for c in the equation,
;;;
;;; Return: root1 - the value for the first root,     
;;;         root2 - the value for the second root
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(define (quadraticRoots a b c)
  (if (!== a 0)
      (begin
  )))

;;; Starting point for running program
(begin
  (display "Enter the string to be split: ")
  (let ((aString (read)))
    (display "Enter the split position: ")
    (let ((pos (read)))
      (let ((result (split (symbol->string aString) pos)))
        (begin
          (display "The first part is ")
          (display (car result))
          (display "\nand the second part is ")
          (display (car (cdr result)))
          (display "\n")
(quit))))))
