;;; split.el splits a string into two substrings.
;;;
;;; Input: aString, the string to be split,
;;;        pos, the split position.
;;; Output: the substring of aString before pos, and
;;;         the substring of aString from pos onwards.
;;;
;;; Begun by: Dr. Jump for CS 315 at King's College
;;; Completed by: Robert Lowman
;;; Date: 10/4/2016
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;:;
;;; split() splits a string into its two substrings.
;;; Receive: aString, the string to be split,
;;;        pos, the split position.
;;; PRE: 0 <= pos < the length of aString.
;;; Return: the substring of aString before pos, and
;;;         the substring of aString from pos onwards.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; define split function here
(define (split aString pos)
  (list
   (substring aString 0 pos)
   (substring aString pos (string-length aString))
  ))

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
