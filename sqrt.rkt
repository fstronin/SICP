#lang racket

(define (sqrt x)
    (define (square n) (* n n))
    (define (good-enough? previous-guess guess)
        (< (abs (/ (- guess previous-guess) guess)) 0.00000000001))
    (define (average x y)
        (/ (+ x y) 2))
    (define (improve guess)
        (average guess (/ x guess)))
    (define (sqrt-iter guess)
        (if (good-enough? guess (improve guess))
            guess
            (sqrt-iter (improve guess))))
    (sqrt-iter 1.0))

(provide sqrt)
