;;; SchemeMain.scm simulates and tests an Scheme Temperature type.
;;; Completed by: Robert Lowman
;;; Date: 2016 Fall

(load "./TempFunctions.scm")

(define (assert msg b)
 ( if ( not b) (reporterr msg)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; A simple driver for our Name functions. ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(begin
  (let ((baseTemp (createTemperature)))
    (let ((endTemp (createTemperature)))
      (let ((incTemp (createTemperature)))
      
  ))))
