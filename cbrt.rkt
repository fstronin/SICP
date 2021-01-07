#lang racket

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

(provide cbrt)
