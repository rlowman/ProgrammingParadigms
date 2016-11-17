;;; TempFunction.scm creates a module for the Temperature Functions.
;;; Completed by: Robert Lowman
;;; Date: 2016 Fall

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Temperature constructs a name from three strings.      ;;
;;; Receive: scale, a char and degrees, a double  . ;;
;;; Return: the list of Temperature.        ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(define (Temperature scale degrees)
  (list scale degrees))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getScale extracts the scale of a Temperature object.
;;; Receive: theTemperature, a Temperature.
;;; Return: the scale in theTemperature.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(define (getScale theTemperature)
  (car theTemperature))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getDegrees extracts the degrees of a Temperature object.
;;; Receive: theTemperature, a Temperature.
;;; Return: the degrees in theTemperature.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(define (getDegrees theTemperature)
  (car (cdr theTemperature)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getLast extracts the last name of a name object.
;;; Receive: theName, a Name.
;;; Return: the third string in theName.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(define (getFahrenheit theTemperature)
  (cond
    ((or (eqv? (getScale theTemperature) 'F') (eqv? (getScale theTemperature) 'f'))
      theTemperature)
    ((or (eqv? (getScale theTemperature) 'C') (eqv? (getScale theTemperature) 'c'))
      (list 'F' (convertCtoF (getDegrees theTemperature))))
    ((or (eqv? (getScale theTemperature) 'K') (eqv? (getScale theTemperature) 'k'))
      (list 'F' (convertKtoF (getDegrees theTemperature))))
    (t "Invalid Temperature")))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getLast extracts the last name of a name object.
;;; Receive: theName, a Name.
;;; Return: the third string in theName.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(define (getCelsius theTemperature)
  (cond
    ((or (eqv? (getScale theTemperature) 'C') (eqv? (getScale theTemperature) 'c'))
      theTemperature)
    ((or (eqv? (getScale theTemperature) 'F') (eqv? (getScale theTemperature) 'f'))
      (list 'C' (convertFtoC (getDegrees theTemperature))))
    ((or (eqv? (getScale theTemperature) 'K') (eqv? (getScale theTemperature) 'k'))
      (list 'C' (convertKtoC (getDegrees theTemperature))))
    (else "Invalid Temperature")))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getKelvin sets the given Temperature to Kelvin
;;; Receive: theTemperature, a Temperature.
;;; Return: the third string in theName.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(define (getKelvin theTemperature)
  (cond
    ((or (eqv? (getScale theTemperature) 'K') (eqv? (getScale theTemperature) 'k'))
      theTemperature)
    ((or (eqv? (getScale theTemperature) 'C') (eqv? (getScale theTemperature) 'c'))
      (list 'K' (convertCtoK (getDegrees theTemperature))))
    ((or (eqv? (getScale theTemperature) 'F') (eqv? (getScale theTemperature) 'f'))
      (list 'K' (convertFtoK (getDegrees theTemperature))))
    (else "Invalid Temperature")))

(define (createTemperature)
  (let ((degrees (read)))
    (let ((scale (read)))
      (list scale degrees))))

(define (printInformation theTemperature)
  (display (getDegrees theTemperature))
  (display " ")
  (display (getScale theTemperature)))

(define (raise theTemperature raiser)
  (list
    (getScale theTemperature)
    (+ (getDegrees theTemperature) raiser)))

(define (lower theTemperature deg)
  (list
    (getScale theTemperature)
    (- (getDegrees theTemperature) deg)))

(define (convertFtoC theF)
  (* (/ 5.0 9.0) (theF 32.0)))

(define (convertFtoK theF)
  (+ (* (/ 5.0 9.0) (- theF 32.0)) 273.0))

(define (convertKtoF theK)
  (+ (* (/ 9.0 5.0) (- theK 273.0)) 32.0))

(define (convertKtoC theK)
  (- theK 273.0))

(define (convertCtoF theC)
  (+ (* (/ 9.0 5.0) theC) 32.0))

(define (convertCtoK theC)
  (+ theC 273.0))
