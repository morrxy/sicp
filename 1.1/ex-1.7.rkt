; Exercise 1.7: the good-enough? test used in computing
; square roots will not be very effective for finding the square
; roots of very small numbers. Also, in real computers, arith-
; metic operations are almost always performed with limited
; precision. This makes our test inadequate for very large
; numbers. Explain these statements, with examples showing
; how the test fails for small and large numbers. An alternative
; strategy for implementing good-enough? is to watch
; how guess changes from one iteration to the next and to
; stop when the change is a very small fraction of the guess.
; Design a square-root procedure that uses this kind of end
; test. Does this work better for small and large numbers?


#lang racket

(define (sqrt-iter guess new-guess x)
  (if (good-enouth? guess new-guess)
      guess
      (sqrt-iter new-guess (improve new-guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enouth? guess new-guess)
  (< (/ (abs (- guess new-guess)) guess) 0.001))

(define (square x)
  (* x x))

(define (sqrt x)
  (sqrt-iter 1.0 (improve 1.0 x) x))

(sqrt 9)
(sqrt (+ 100 37))
(sqrt 0.0001)
(sqrt 1000000000000) 
(sqrt 10000000000000)