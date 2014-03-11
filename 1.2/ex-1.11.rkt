#lang racket

; Exercise 1.11: A function f is defined by the rule that

; f(n) = n if n < 3
; f(n) = f(n - 1) + 2 * f(n - 2) + 3 * f(n - 3) if n >= 3

; Write a procedure that computes f by means of a recursive process.
; Write a procedure that computes f by means of an iterative process.

(define (f-rec n)
  (cond ((< n 3) n)
        (else (+ (f-rec (- n 1))
                 (* 2 (f-rec (- n 2)))
                 (* 3 (f-rec (- n 3)))))))

(f-rec 0)
(f-rec 1)
(f-rec 2)
(f-rec 3)
(f-rec 4)
(f-rec 5)
(f-rec 6)

(define (f-ite n)
  (f-it 0 1 2 n))

(define (f-it k1 k2 k3 n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        ((= n 2) k3)
        (else (f-it k2 k3 (+ k3 (* 2 k2) (* 3 k1)) (- n 1)))))

(f-ite 0)
(f-ite 1)
(f-ite 2)
(f-ite 3)
(f-ite 4)
(f-ite 5)
(f-ite 6)


