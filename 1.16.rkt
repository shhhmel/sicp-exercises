(define (odd? n)
  (= (remainder n 2) 1))

(define (double n)
  (+ n n))

(define (half n)
  (/ n 2))

(define (fast-expt a n)
	(define (iter a n acc)
		(cond ((= n 0) acc)
				((odd? n) (iter a (- n 1) (* a acc)))
				(else (iter (double a) (half n) acc))))
	(iter a n 1))