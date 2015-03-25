#lang racket

;; greatest common divisors

(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (modulo a b))))

;; test

(display "(gcd 1 20) ==> ")
(display (gcd 1 20))
(newline)

(display "(gcd 10 15) ==> ")
(display (gcd 10 15))
(newline)

(display "(gcd 42 24) ==> ")
(display (gcd 42 24))
(newline)

(display "(gcd 23 31) ==> ")
(display (gcd 23 31))
(newline)
