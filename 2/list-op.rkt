#lang racket

;; list-op.scm

(define (list-ref items n)
  (if (= n 0)
      (car items)
      (list-ref (cdr items) (- n 1))))

(define (length items)
  (define (length-iter items n)
    (if (null? items)
        n
        (length-iter (cdr items) (+ n 1))))
  (length-iter items 0))

(define (last items)
  (let ((first (car items))
        (rest (cdr items)))
    (if (null? rest)
        first
        (last rest))))

;; test

(display (list-ref (list "A" "B" "C" "D") 0))
(newline)
(display (list-ref '("A" "B" "C" "D") 1))
(newline)
(display (list-ref '("A" "B" ("C" "D")) 2))
(newline)
(display (length '(1 2 3 4 5)))
(newline)
(display (length '(1 2 (3 4) 5)))
(newline)
(display (last '(1 2 3 4 5)))
(newline)
(display (last '(1 2 3 '(4 5))))
(newline)
