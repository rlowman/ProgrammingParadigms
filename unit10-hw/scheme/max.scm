;;; max.el searches a list for its maximum value.
;;;
;;; Begun by: Dr. Jump, CS 315 at King's College
;;; Completed by: Robert Lowman
;;; Date: 11/29/2016

(load "./mylist.scm")

;;;;;;;;;;;;;;;;;;;;;;;;;
;;; test function Max. ;;
;;;;;;;;;;;;;;;;;;;;;;;;;
(begin
  (let ((listOne (list 99 88 77 66 55))
        (listTwo (list 55 66 77 88 99))
        (listThree (list 55 77 99 88 66))
        (listFour (list 55 77 33 88 66)))
    (display listOne)
    (display "\n")
    (display listTwo)
    (display "\n")
    (display listThree)
    (display "\n")
    (display listFour)
    (display "\n")

    (display "the max in listOne is ")
    (display (max listOne))
    (display "\n")
    (display "the position of 99 in listOne is ")
    (display (search listOne 99))
    (display "\n")

    (display "the max in listTwo is ")
    (display (max listTwo))
    (display "\n")
    (display "the position of 99 in listTwo is ")
    (display (search listTwo 99))
    (display "\n")

    (display "the max in listThree is ")
    (display (max listThree))
    (display "\n")
    (display "the position of 99 in listThree is ")
    (display (search listThree 99))
    (display "\n")

    (display "the max in listFour is ")
    (display (max listFour))
    (display "\n")
    (display "the position of 99 in listFour is ")
    (display (search listFour 99))
    (display "\n")

    (quit)))
