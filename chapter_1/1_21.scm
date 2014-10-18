(define (small-div n)(div n 2))

(define (div n d)
		(cond((> (square d) n) n)
			((= (remainder n d) 0)d)
			(else (div n (+ d 1)))))

(define (square d)(* d d))



;(small-div 199)  = 199
;(small-div 1999) = 1999
;(small-div 19999)= 7
