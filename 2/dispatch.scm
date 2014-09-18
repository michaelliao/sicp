;; using procedure to represent pair

(define (cons x y)
  (define (dispatch m)
    (cond ((= m 0) x)
          ((= m 1) y)))
  dispatch)

(define (car z)
  (z 0))

(define (cdr z)
  (z 1))

;; test
(define x (cons "A" "B"))
(display x)
(newline)
(display (car x))
(newline)
(display (cdr x))
(newline)
