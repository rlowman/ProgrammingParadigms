;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; CircleArea.cpp
;;; Computes the area of a circle.
;;; 
;;; Input: The radius of a circle.
;;; Precondition: The radius is a positive number.
;;; Output: The area of the circle.
;;; 
;;; Begun by Dr Jump for CS 315 at King's College
;;; Completed by: Robert Lowman
;;; Date: 9/1/16
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Define a constant
(define PI 3.1415927) 

;;; Function that computes the area of a circle.
;;;
;;; Parameter: r The radius of the circle.
;;; Precondition: r > 0
;;; Returns: The area of the circle.
(define (computeArea r) ;Defining the name of the function with parameter r
  (* PI r r)) ;Storing the value of the area equation

;;; Starting point for running program
(begin ;Call to start the execution of the program
  (display "To compute the area of a circle, enter its radius: ") ;Print string
  (let ((radius (read))) ;Creates variable 'radius', gets input from user and
    ;;stores value into variable 'radius'
    (display (computeArea radius)) ;prints out value of area after running the
    ;;funtion and prints next to previously printed string
    (newline) ;skips to next line
    (quit))) ;ends execution
