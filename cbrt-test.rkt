#lang racket/base

(require rackunit "cbrt.rkt")

(check-equal? (round (cbrt 27)) 3.0 "Is cubic root of 27 is 3?")
(check-equal? (round (cbrt 1000)) 10.0 "Is cubic root of 1000 is 10?")
(check-equal? (round (cbrt 848471250563)) 9467.0 "Is square root of 848471250563 is 9467?")
