#lang racket
(define (largest-two-square-sum n1 n2 n3)
  (cond ((> n1 n2) (+ (square n1) (square (larger n2 n3))))
        (else (+ (square n2) (square (larger n1 n3))))))

(define (square n)
  (* n n))

(define (larger n1 n2)
  (cond ((> n1 n2) n1)
        (else n2)))

(largest-two-square-sum 2 3 4)