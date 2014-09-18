(define (make-rat n d)
  (cons n d))

(define (number x)
  (car x))

(define (denom x)
  (cdr x))

(define (print-rat x)
  (display (number x))
  (display "/")
  (display (denom x))
  (newline))

;; test

(print-rat (make-rat 1 2))

(print-rat (make-rat 2 3))

