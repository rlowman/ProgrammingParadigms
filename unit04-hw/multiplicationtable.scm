;;; multiplicationtable.scm displays a multiplication table of given size
;;;
;;; Input: size of the multiplication table.
;;; PRE: size > 0.
;;; Output: A multiplication table of the given size
;;;
;;; Author: Robert Lowman
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Functions that implements the inside of the loop algorithm
;;;
;;; Parameter: j The inner loop index
;;; Parameter: i The outer loop index
;;; Parameter: size The size of the table
;;; Returns: void
(define (innerLoop j i size)
  (if (<= j size)
      (begin
      (display (* i j))
      (display "\t")
      (innerLoop (+ j 1) i size
  ))))

;;; Functions that implements the outside of the loop algorithm
;;;
;;; Parameter: i The outer loop index
;;; Parameter: size The size of the table
;;; Returns: void
(define (displayMultiTable i size)
  (if (<= i size)
      (begin
	(innerLoop 1 i size)
	(newline)
      (displayMultiTable (+ i 1) size
    ))))


;;; Starting point for running program
(begin
  (display "Enter the size of the table: ")
  (let ((size (read)))
    (displayMultiTable 1 size)
    (quit)))
