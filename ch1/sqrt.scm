(define (square x) (* x x))

(define (abs x)
  (cond ((< x 0) ( - x))
        (else x)))

(define (average x y)
  (/ (+ x y) 2))

(define (sqrt x)
  (define (good-enough? guess)
    (< (abs (- (square guess) x)) 0.001))
  (define (improve guess)
    (average guess (/ x guess)))
  (define (sqrt-iter guess)
    (if (good-enough? guess)
        guess
        (sqrt-iter (improve guess))))
  (sqrt-iter 1.0))



;; test
(print (square 2))
(print (abs -9))
(print (sqrt 4))
