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
  (if (= a 0)
      (begin
	(display "\n*** quadraticRoots(): a is zero!\n")
	(list 0 0 0))
      (begin
	(if (< (- (expt b 2) (* 4 a c)) 0)
	    (begin
	      (display "\n*** quadraticRoots(): b^2 - 4ac is negative!\n") 
	      (list 0 0 0))
	    (begin
	      (list 1
	       (/ (+ (* b -1) (sqrt (- (expt b 2) (* 4 a c)))) (* 2 a))
	       (/ (- (* b -1) (sqrt (- (expt b 2) (* 4 a c)))) (* 2 a))
	       )))
  )))

;;; Starting point for running program
(begin
  (display "Enter a: ")
  (let ((a (read)))
    (display "Enter b: ")
    (let ((b (read)))
       (display "Enter c: ")
       (let ((c (read)))
	 (let ((result (quadraticRoots a b c)))
	   (begin
	     (if (= 1 (car result))
		 (begin
		   (display "The first root is ")
		   (display (car (cdr result)))
		   (display "\nand the second root is ")
		   (display (car (cdr (cdr result))))
		   (display "\n")))
(quit)))))))
