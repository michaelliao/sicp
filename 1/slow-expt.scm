;; b ^ n = b * b ^ (n-1)
;; b ^ 0 = 1

(define (slow-expt b n)
  (if (= n 0)
      1
      (* b (slow-expt b (- n 1)))))

;; test

(display (slow-expt 3 5))
(newline)
(display (slow-expt 2 20))
