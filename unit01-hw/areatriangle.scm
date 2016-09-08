;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; areatriangle.scm
;;; Computes the area of a triangle.
;;; 
;;; Input: The height of a triangle.
;;; Input: The width of a triangle. 
;;; Precondition: The height is a positive number.
;;; Precondition: The width is a positive number.
;;; Output: The area of the triangle.
;;; 
;;; Completed by: Robert Lowman
;;; Date: 9/7/16
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Function that computes the area of a triangle.
;;;
;;; Parameter: h The height of the triangle.
;;; Parameter: w The width of the triangle.
;;; Precondition: h > 0
;;; Precondition: w > 0 
;;; Returns: The area of the triangle.
(define (computeArea h w) ;; define function with 2 parameters
  (* .5 h w)) ;; calculate area of triangle with given parameters

;;; Starting point for running program
(begin
  (display "To compute the area of a triangle, enter its height: ") ;; print 
  (let ((height (read)))  ;; read data from keyboard and set value to variable
    (display "To compute the area of a triangle, enter its width: ") ;; print  
    (let ((width (read))) ;; read data from keyboard and set value to variable
    (display (computeArea height width)) ;; use function to calculate area and print
    (newline) ;; skip to next line  
    (quit)))) ;; end program
