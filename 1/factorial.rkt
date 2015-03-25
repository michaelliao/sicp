#lang racket

;; f(n) = n * f(n-1)

(define (factorial n)
  (define (fact-iter sum n)
    (if (= n 1)
        sum
        (fact-iter (* sum n) (- n 1))))
  (fact-iter 1 n))

;; test

(display (factorial 1))
(newline)
(display (factorial 3))
(newline)
(display (factorial 10))
(newline)
