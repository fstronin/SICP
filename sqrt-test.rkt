#lang racket/base

(require rackunit "sqrt.rkt")

(check-equal? (round (sqrt 81)) 9.0 "Is square root of 81 is 9?")
(check-equal? (round (sqrt 4096)) 64.0 "Is square root of 4096 is 64?")
(check-equal? (round (sqrt 9801)) 99.0 "Is square root of 9801 is 99?")
