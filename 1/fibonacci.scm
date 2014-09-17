;; get the nth Fibonacci number
;; (fib 0) ==> 0
;; (fib 1) ==> 1
;; (fib 2) ==> 1
;; (fib 3) ==> 2

(define (fib n)
  (define (fib-iter a b count)
    (if (= count 0)
        a
        (fib-iter b (+ a b) (- count 1))))
  (fib-iter 0 1 n))

;; test

(define (test lst n)
  (if (> n 20)
      lst
      (test (append lst (list (fib n))) (+ n 1))))

(display (test '() 0))
