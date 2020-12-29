(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1))
         (* 2 (f (- n 2)))
         (* 3 (f (- n 3))))))


(define (f2 n)
  (define (iter x y z count)
    (cond ((< n 3) n)
          ((< count 3) z)
          (else (iter y z (+ z (* 2 y) (* 3 x)) (- count 1)))))
  (iter 0 1 2 n))