;;; namer.scm simulates and tests an Scheme Name type.
;;; Begun by: Dr. Jump, CS 315 at King's
;;; Completed by: Robert Lowman
;;; Date: 2016 Fall


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; assert tests to be sure that something is true  ;;
;;; Receive: a message and a boolean expression     ;;
;;; Return: if the boolean expression is true       ;;
;;;         or it reports an error                  ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(define (assert msg b)
 (if ( not b) (reporterr msg)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Name constructs a name from three strings.      ;;
;;; Receive: first, middle and last, three strings. ;;
;;; Return: the triplet (first middle last).        ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(define (Name first middle last)
  (list first middle last))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getFirst extracts the first name of a name object.
;;; Receive: theName, a Name.
;;; Return: the first string in theName.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(define (getFirst theName)
    (car theName))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getMiddle extracts the middle name of a name object.
;;; Receive: theName, a Name.
;;; Return: the second string in theName.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(define (getMiddle theName)
    (car (cdr theName)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getLast extracts the last name of a name object.
;;; Receive: theName, a Name.
;;; Return: the third string in theName.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(define (getLast theName)
    (car (cdr (cdr theName))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getFullName returns a full name in F-M-L order.
;;; Receive: theName, a Name.
;;; Return: myFirst, myMiddle, myLast.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(define (getFullName theName)
  (string-append
   (getFirst theName)
   " "
   (getMiddle theName)
   " "
   (getLast theName)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; printName displays a name object.             ;;
;;; Receive: theName, a Name                      ;;
;;; Output: the strings in theName                ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(define (printName theName)
  (display (getFullName theName)))


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
