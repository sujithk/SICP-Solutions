(define (small-div n)(div n 2))

(define (div n d)
		(cond((> (square d) n) n)
			((= (remainder n d) 0)d)
			(else (div n (+ d 1)))))

(define (square d)(* d d))

(define (prime n)
	(= (small-div n) n))
