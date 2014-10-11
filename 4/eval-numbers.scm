;; calculate numbers

(define (eval-exp exp)
  (cond ((list? exp) (eval-list exp))
        ((number? exp) exp)
        (else (raise "Invalid input"))))

(define (eval-list exp)
  (calc-exp (car exp)
         (map eval-exp (cdr exp))))

(define (calc-exp op args)
  (cond ((procedure? op) (apply op args))
        ((symbol? op) (apply (eval op (interaction-environment)) args))
        (else (raise "Invalid operator"))))

;; test

(display (eval-exp (list * 1 2 3 4 5)))
(newline)
(display (eval-exp '(+ 1 2 3)))
(newline)
(display (eval-exp '(* (+ 2 3) (- 9 4))))
(newline)
(display (eval-exp '(* 1 2 + 4 5)))
