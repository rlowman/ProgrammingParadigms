;;; mylist.el is a "module" of list operations.
;;;
;;; Begun by: Dr. Jump, CS 315 at King's College
;;; Completed by:
;;; Date:

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; MaxOfTwo finds the maximum of two values.       ;;
;;; Receive: val1, val2, two values.            ;;
;;; PRE: val1 and val2 can be compared using <. ;;
;;; Return: the maximum of val1 and val2.       ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(define (MaxOfTwo val1 val2)
  (if (> val1 val2)
      val1 val2))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Max finds the maximum value in a list.         ;;
;;; Receive: aList, a list of values.              ;;
;;; PRE: values in aList can be compared using <.  ;;
;;; Return: the maximum value in aList.            ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;