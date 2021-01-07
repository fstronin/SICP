#lang sicp

(#%require rackunit)

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

(check-equal? (round (sqrt 81)) 9.0 "Is square root of 81 is 9?")
(check-equal? (round (sqrt 4096)) 64.0 "Is square root of 4096 is 64?")
(check-equal? (round (sqrt 9801)) 99.0 "Is square root of 9801 is 99?")
