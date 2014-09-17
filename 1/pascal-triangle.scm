;; pascal's triangle
;;     1
;;    1 1
;;   1 2 1
;;  1 3 3 1
;; 1 4 6 4 1

(define (p-triangle n)
  ;; the next line can be built by:
  ;; current line: (1 a b c b a 1)
  ;; insert 0:     (0 1 a b c b a 1)
  ;; append 0:     (1 a b c b a 1 0)
  ;; apply      + -------------------
  ;;               (1 ? ? ? ? ? ? 1)
  (define (next-triangle lst)
    (map + (cons 0 lst)
           (append lst '(0))))

  (define (p-triangle-iter lst count)
    (if (= count 0)
        lst
        (p-triangle-iter (next-triangle lst) (- count 1))))

    (cond ((<= n 0) '())
          ((>= n 1) '(1) (p-triangle-iter '(1) (- n 1)))))

(display (p-triangle 0))
(newline)
(display (p-triangle 1))
(newline)
(display (p-triangle 2))
(newline)
(display (p-triangle 3))
(newline)
(display (p-triangle 4))
(newline)
(display (p-triangle 10))
