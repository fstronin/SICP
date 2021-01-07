#lang sicp

(#%require rackunit)

(define (cbrt x)
    (define (square n) (* n n))
    (define (improve guess)
        (/ (+ (* guess 2) (/ x (square guess))) 3))
    (define (good-enough? previous-guess guess)
        (< (abs (/ (- guess previous-guess) guess)) 0.00000000001))
    (define (cbrt-iter guess)
        (if (good-enough? guess (improve guess))
            guess
            (cbrt-iter (improve guess))))
    (cbrt-iter 1.0))

(check-equal? (round (cbrt 27)) 3.0 "Is cubic root of 27 is 3?")
(check-equal? (round (cbrt 1000)) 10.0 "Is cubic root of 1000 is 10?")
(check-equal? (round (cbrt 848471250563)) 9467.0 "Is cubic root of 848471250563 is 9467?")
