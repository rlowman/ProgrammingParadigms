;;; namer.scm simulates and tests an Scheme Name type.
;;; Begun by: Dr. Jump, CS 315 at King's
;;; Completed by: Robert Lowman
;;; Date: 2016 Fall

(load "./name.scm")

(define (assert msg b)
 ( if ( not b) (reporterr msg)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; A simple driver for our Name functions. ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(begin
  (let ((aName (Name "John" "Paul" "Jones"))) ; build a Name
    (begin
      (assert "first name wrong\n" (equal? (getFirst aName) "John"))  ; test it
      (assert "middle name wrong\n" (equal? (getMiddle aName) "Paul"))
      (assert "last name wrong\n" (equal? (getLast aName) "Jones"))
      (assert "full name wrong\n" (equal? (getFullName aName) "John Paul Jones"))
      (display "Printed as ")
      (printName aName)                         ; output
      (display "\n")
      (display "All tests passed!\n")
      (quit))))
