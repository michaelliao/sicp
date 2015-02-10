#!/usr/bin/env petite

;; rational operations

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

(define (add-rat x y)
  (make-rat (+ (* (number x) (denom y))
               (* (number y) (denom x)))
            (* (denom x) (denom y))))

(define (sub-rat x y)
  (make-rat (- (* (number x) (denom y))
               (* (number y) (denom x)))
            (* (denom x) (denom y))))

(define (mul-rat x y)
  (make-rat (* (number x) (number y))
            (* (denom x) (denom y))))

(define (div-rat x y)
  (make-rat (* (number x) (denom y))
            (* (denom x) (number y))))

(define (equal-rat? x y)
  (= (* (number x) (denom y))
     (* (number y) (denom x))))

;; test

(print-rat (make-rat 1 2))

(print-rat (make-rat 2 3))

(print-rat (add-rat (make-rat 1 2) (make-rat 1 3)))

(print-rat (sub-rat (make-rat 1 2) (make-rat 1 3)))

(print-rat (mul-rat (make-rat 1 2) (make-rat 2 3)))

(print-rat (div-rat (make-rat 1 2) (make-rat 1 3)))

(exit)
