;;; lambdafun.scm | lets us examine a bit of lambda functions in Scheme.
;;;
;;; Begun by: Dr. Jump, for CS 315 at King's College.
;;; Completed by: Robert Lowman
;;; Date: 11/29/16
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(lamba (x) (+ x x))
;; returned: <CLOSURE <anon> (x) (+ x x)>

((lambda (x) (+ x x)) 17)
;; returned : 34

(lambda (a b c d) (max (abs a) (abs b) (abs c) (abs d)))
;; returned : <CLOSURE <anon> (a b c d) (max (abs a) (abs b) (abs c) (abs d))>

((lambda (x y z) (+ x y z)) 1 2 3)
;; returned : 6

((lambda (x) (* 8 x)) 17.2)
;; returned : 137.6

(let ((double (lambda (x) (+ x x))))
    (begin
      (display (double 17))
      (display "\n")))
;; returned : 34
;;            #<unspecified>

(let ((double (lambda (x) (+ x x))))
   (begin
     (display (double 17))
     (display "\n")
     (display (double 2))
     (display "\n")
     (display (double 15))
     (display "\n")))
;; returned : 34
;;            4
;;            30
;;            #<unspecified>

(let ((triple (lambda (x) (* 3 x))))
  (begin
    (display (triple 4))
    (display "\n")
    (display (triple 10))
    (display "\n")))
;; returned : 12
;;            30
;;            #<unspecified>

(let ((square (lambda (x) (expt x 2))))
  (begin
    (display (square 4))
    (display "\n")
    (display (square 10))
    (display "\n")))
;; returned : 16
;;            100
;;            #<unspecified>

(subtract-n 2 '(2 4 6))
;; returned : (0 2 4)

(define (sum-squares list)
  (apply + (map (lambda (x) (expt x 2)) list)))

(sum-squares '(1 2 3))
;; returned : 14

(sum-squares '(1 2 3 4 5))
;; returned : 55

(sum-squares '(-1 -2 -3 0 1))
;; returned : 15
