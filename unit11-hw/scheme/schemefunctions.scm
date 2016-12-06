;;; schemefunctions.scm | scheme functions for hw11 Part #2
;;;
;;; Completed by: Robert Lowman
;;; Date: 12/5/16
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; 1a.
(define (my-reverse aList)
 (if (null? aList)
     '()
     (append (my-reverse (cdr aList)) (list (car aList)))
  )
)
;; (my-reverse '(a b (c d) (e (f g))))
;; Returns: ((e (f g)) (c d) b a)

;; 1b.
(define (super-reverse aList)
    (define (super-reverse-helper aList returnList)
      (if (null? aList)
          returnList
          (if (list? (car aList))
              (super-reverse-helper (cdr aList) (cons (super-reverse (car aList)) returnList))
              (super-reverse-helper (cdr aList) (cons (car aList) returnList)))))
      (super-reverse-helper aList '()))
;; (super-reverse '(a b (c d) (e (f g))))
;; Returns: (((g f) e) (d c) b a)

;; 2a.
(define (mem value aList)
  (if (null? aList)
    'nil
    (if (equal? value (car aList))
        't
        (mem value (cdr aList))
        )))

;; (mem '(a b) '((a b) (e (f g))))
;; Returns: t
;; (mem 'a '((a b) (e f g)))
;; Returns: nil
