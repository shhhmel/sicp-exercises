(define (even? n)
  (= (remainder n 2) 0))

(define (double n)
  (+ n n))

(define (half n)
  (/ n 2))

(define (* a b)
  (define (iter a b acc)
    (cond ((= a 1) ( + b acc))
          ((or (= a 0) (= b 0)) 0)
          ((even? a) (iter (half a) (double b) acc))
          (else (iter (half (- a 1)) (double b) (+ acc b)))))
  (iter a b 0))