#lang racket

;; using procedure to represent pair

(define (cons x y)
  (lambda (m)
    (cond ((= m 0) x)
          ((= m 1) y))))

(define (car z)
  (z 0))

(define (cdr z)
  (z 1))

;; test

(define x (cons "A" "B"))
(display "(cons A B) ==> x = ")
(display x)
(newline)

(display "(car x) ==> ")
(display (car x))
(newline)

(display "(cdr x) ==> ")
(display (cdr x))
(newline)
