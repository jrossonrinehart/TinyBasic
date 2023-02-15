#lang racket
(define (sayHello name)
  (printf "hello, ~a" name))


(define (max-simple lis)
  (cond [(empty? lis) 0]
        [(empty? (cdr lis)) lis]
        [(< (car lis) (car(cdr lis))) (max-simple (cdr lis))]
        [else (max-simple (cons (car lis) (cdr (cdr lis))))]))

(define (max-deep lis)
  (if (empty? lis) 0
      (let* ([head (car lis)] [tail (max-deep (cdr lis))])
        (cond [(list? head) (if (< (max-deep head) tail) tail (max-deep head))]
              [(< head tail) tail]
              [else head]))))

(define (lensort a b)
  (< (length a) (length b)))

        



