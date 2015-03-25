#lang racket

(define (map-list func items)
  (if (null? items)
      '()
      (cons (func (car items))
            (map-list func (cdr items)))))

(define (scale-list items factor)
  (map-list (lambda (x)
               (* x factor))
            items))

;; test

(display (scale-list '(1 2 3 4 5) 2))
(newline)
(display (scale-list '(1 3 5 7 9) 9))
(newline)
(display (map-list (lambda (x) (* x x x)) '(1 2 3 4 5)))
(newline)
