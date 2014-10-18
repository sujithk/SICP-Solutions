(define (next n) (if (= n 2) 3 (+ n 2)))

(define (small-div n)(div n 2))

(define (div n d)
		(cond((> (square d) n) n)
			((= (remainder n d) 0)d)
			(else (div n (next n)))))

(define (square d)(* d d))

(define (prime n)
	(= (small-div n) n))

(define (timed-prime-test n)
	 (start-prime-test n (runtime))) 
  
(define (start-prime-test n start-time) 
	(if (prime? n) 
           (report-prime n (- (runtime) start-time)))) 
  
(define (report-prime n elapsed-time) 
	   (newline) 
	   (display n) 
	   (display " *** ") 
	   (display elapsed-time)) 
