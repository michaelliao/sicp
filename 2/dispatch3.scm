;; using procedure to represent pair

(define (cons x y)
  (define (expt b n)
    (if (= n 0)
        1
        (* b (expt b (- n 1)))))
  (* (expt 2 x) (expt 3 y)))

(define (how-many n x)
  (define (how-many-iter m count)
    (if (= (modulo m x) 0)
        (how-many-iter (/ m x) (+ count 1))
        count))
  (how-many-iter n 0))

(define (car z)
  (how-many z 2))

(define (cdr z)
  (how-many z 3))

;; test
(define x (cons 9 6))
(display x)
(newline)
(display (car x))
(newline)
(display (cdr x))
(newline)
