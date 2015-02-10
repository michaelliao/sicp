#!/usr/bin/env petite

;; eval S-expression contains only +, -, *

(define (eval-exp exp)
  (cond ((list? exp) (eval-list exp))
        ((number? exp) exp)
        (else (raise "Invalid input"))))

(define (eval-list exp)
  (calc-exp (car exp)
            (map eval-exp (cdr exp))))

(define (calc-exp op args)
  (cond ((procedure? op) (apply op args))
        ((symbol? op) (apply (lookup op) args))
        (else (raise "Invalid operator"))))

(define (lookup sym)
  (cond ((eq? sym '+) +)
        ((eq? sym '-) -)
        ((eq? sym '*) *)
        ((eq? sym '/) /)
        (else (raise "Invalid operator"))))

;; test

(display "(* 1 2 3 4 5) = ")
(display (eval-exp (list * 1 2 3 4 5)))
(newline)

(display "(+ 1 2 3) = ")
(display (eval-exp '(+ 1 2 3)))
(newline)

(display "(* (+ 2 3) (- 9 4)) = ")
(display (eval-exp '(* (+ 2 3) (- 9 4))))
(newline)

;; should throw "Invalid input"

(display "(* 1 2 + 4 5) = ")
(display (eval-exp '(* 1 2 + 4 5)))
