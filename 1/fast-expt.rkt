#lang racket

;; fast expt:

;; b ^ n = (b ^ (n/2)) ^ 2 if n is even
;; b ^ n = b * b ^ (n-1)   if n is odd

(define (fast-expt b n)

  (define (square x)
    (* x x))

  (cond ((= n 0) 1)
        ((odd? n) (* b (fast-expt b (- n 1))))
        (else (square (fast-expt b (/ n 2))))))

;; test

(display "3 ** 5 = ")
(display (fast-expt 3 5))
(newline)
(display "2 ** 20 = ")
(display (fast-expt 2 20))
(newline)
