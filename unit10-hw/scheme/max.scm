;;; max.el searches a list for its maximum value.
;;;
;;; Begun by: Dr. Jump, CS 315 at King's College
;;; Completed by: Robert Lowman
;;; Date: 11/17/2016

(load "./mylist.scm")

;;;;;;;;;;;;;;;;;;;;;;;;;
;;; test function Max. ;;
;;;;;;;;;;;;;;;;;;;;;;;;;
(begin
  (let ((listOne (list 99 88 77 66 55))
        (listTwo (list 55 66 77 88 99))
        (listThree (list 55 77 99 88 66)))
    (display listOne)
    (display "\n")
    (display listTwo)
    (display "\n")
    (display listThree)
    (display "\n")

    (display "the max in listOne is ")
    (display (max listOne))
    (display "\n")

    (display "the max in listTwo is ")
    (display (max listTwo))
    (display "\n")

    (display "the max in listThree is ")
    (display (max listThree))
    (display "\n")

    (quit)))
