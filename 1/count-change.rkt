#lang racket

;; giving amount of money, compute the number of ways to change

(define (changes amount kinds-of-coins)
  (cond [(= amount 0) 1] ;; found 1 kind of change
        [(< amount 0) 0] ;; not found
        [else (cond [(empty? kinds-of-coins) 0]
                    [else (let ([first-kind (car kinds-of-coins)]
                                [rest-kinds-of-coins (cdr kinds-of-coins)])
                            (+ (changes amount rest-kinds-of-coins)
                               (changes (- amount first-kind) kinds-of-coins)))])]))

(display "amount: 10, kinds: 2, 1, changes = ")
(display (changes 10 '(2 1)))
(newline)

(display "amount: 10, kinds: 10, 5, 2, 1, changes = ")
(display (changes 10 '(10 5 2 1)))
(newline)

(display "amount: 100, kinds: 10, 5, 2, 1, changes = ")
(display (changes 100 '(10 5 2 1)))
(newline)

(display "amount: 100, kinds: 50, 25, 10, 5, 1, changes = ")
(display (changes 100 '(50 25 10 5 1)))
(newline)

(display "amount: 120, kinds: 20, 10, 5, 2, 1, changes = ")
(display (changes 120 '(20 10 5 2 1)))
(newline)

(display "amount: 120, kinds: 50, 20, 10, 5, 2, 1, changes = ")
(display (changes 120 '(50 20 10 5 2 1)))
(newline)
