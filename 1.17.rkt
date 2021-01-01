(define (even? n)
  (= (remainder n 2) 0))

(define (double n)
  (+ n n))

(define (half n)
  (/ n 2))

(define (* a b)
  (cond ((or (= 0 b) (= 0 a)) 0)
        ((= 1 b) a)
        ((= 2 b) (double a))
        ((even? b) (double (* a (half b))))
        (else (+ a (* a (- b 1))))))

;(* 2 2) = (double 2) = 4
;(* 2 3) = (+ 2 (* 2 2)) = 6
;(* 2 4) = (double (* 2 2)) = 8
;(* 2 5) = (+ 2 (* 2 4)) = 10
;(* 2 6) = (double (* 2 3)) = 12
;(* 2 7) = (+ 2 (* 2 6)) = 10