(define (my-exp b n)
	(cond ((= n 0)1)
	((even? n)(square (fast-exp b (/ n 2))))
		(else (* b (fast-exp b (- n 1))))))

(define (square x)(* x x))

(define (even? n)(= (remainder n 2) 0))

(define (my-modulo a b)
		(remainder a b))

(define (fermat n)
	(define (try-it a)
		(= (my-modulo (my-exp a n) n)a))
	(try-it (+ 1 (random (- n 1)))))

(define (fast-prime? n times)
	(cond ((= times 0) true)
		((fermat n)(fast-prime? n (- times 1)))
		(else false)))
