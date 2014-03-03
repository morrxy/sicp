#lang racket

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

; (define (sqrt-iter guess x)
;   (if (good-enouth? guess x)
;       guess
;       (sqrt-iter (improve guess x) x)))

(define (sqrt-iter guess x)
  (new-if (good-enouth? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enouth? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (square x)
  (* x x))

(define (sqrt x)
  (sqrt-iter 1.0 x))

; (new-if (= 2 3) 0 5)
; (new-if (= 1 1) 0 5)

(sqrt 9)
(sqrt (+ 100 37))
