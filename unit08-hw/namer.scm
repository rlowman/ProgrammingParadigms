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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; setFirst sets the first name of a name object.
;;; Receive: theName, a Name.
;;;          aFirst, the new first name
;;; Return: the revised Name object.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(define (setFirst theName aFirst)
    (list aFirst getMiddle(theName) getLast(theName)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getMiddle extracts the middle name of a name object.
;;; Receive: theName, a Name.
;;; Return: the second string in theName.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(define (getMiddle theName)
  (car (cdr theName)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; setMiddle sets the middle name of a name object.
;;; Receive: theName, a Name.
;;;          aMiddle, the new middle name
;;; Return: the revised Name object.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(define (setMiddle theName aMiddle)
    (list getFirst(theName) aMiddle  getLast(theName)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getLast extracts the last name of a name object.
;;; Receive: theName, a Name.
;;; Return: the third string in theName.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(define (getLast theName)
  (car (cdr (cdr theName))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; setLast sets the last name of a name object.
;;; Receive: theName, a Name.
;;;          aLast, the new last name
;;; Return: the revised Name object.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(define (setLast theName aLast)
    (list getFirst(theName) getMiddle(theName) aLast))

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
;;; lfmi() returns a string in for last, first,
;;;       middle initial
;;; Receive: theName, a Name
;;; Output: the string in the proper form
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(define (lfmi theName)
  (string-append
   (getLast theName)
   ", "
   (getFirst theName)
   " "
   (make-string 1 (string-ref (getMiddle theName) 0))
   "."))

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
     (assert "lfmi wrong\n" (equal? (lfmi aName) "Jones, John P."))
     (setFirst aName "Robert")
     (setMiddle aName "Craig")
     (setLast aName "Lowman")
     (assert "setters wrong wrong\n" (equal? (getFullName aName) "Robert Craig Lowman"))
     (display "Printed as ")
     (printName aName)                         ; output
      (display "\n")
      (display "All tests passed!(read() not implemented)\n")
      (quit))))
