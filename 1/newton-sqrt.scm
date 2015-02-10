#!/usr/bin/env petite

;; newton-sqrt

(define (newton-sqrt x)

  (define (sqrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x) x)))

  (define (good-enough? guess x)
    (< (abs (- (* guess guess) x)) 0.0001))

  (define (average x y)
    (/ (+ x y) 2))

  (define (improve guess x)
    (average guess (/ x guess)))

  (sqrt-iter 1.0 x))

;; test

(display (newton-sqrt 2))
(newline)
(display (newton-sqrt 3))
(newline)
(exit)
