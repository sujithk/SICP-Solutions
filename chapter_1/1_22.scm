(define (time-prime-test? n)
	(newline)
	(display n)
 	(start-prime-test n (runtime)))


(define (start-prime-test n start-time)
	(if (prime? n)
		(report-prime (- (runtime) start-time))))

(define (report-prime elapsed-time)
	(display " *** ")
	(display elapsed-time))

(define (small-div n)(div n 2))

(define (div n d)
		(cond((> (square d) n) n)
			((= (remainder n d) 0)d)
			(else (div n (+ d 1)))))

(define (square d)(* d d))

(define (prime? n)
	(= (small-div n) n))


(define (search-for-primes n count)
	(if(= count 3) (display "Finished")
	( (if (prime? n) (and (time-prime-test n) (search-for-primes (+ 1 n)(+ 1 count) )) (search-for-primes (+ n 1) count)))))
	
