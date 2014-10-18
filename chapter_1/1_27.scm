(define (my-exp b n)
	(cond ((= n 0)1)
	((even? n)(square (fast-exp b (/ n 2))))
		(else (* b (fast-exp b (- n 1))))))

(define (square x)(* x x))

(define (even? n)(= (remainder n 2) 0))

(define (my-modulo a b)
		(remainder a b))

(define (fermat n) 
	(define (loop a n)
		(if (= a n) true
			(if (= (my-modulo (my-exp a n)n)a) (loop (+ a 1) n)false)))
	(loop 1 n))

(define (fermat-new n check)
	(if(= check n) #f 
		(= (my-modulo (my-exp check n) n)check)))
	

(define (fast-prime? n times)
	(cond ((= times 0) true)
		((fermat n)(fast-prime? n (- times 1)))
		(else false)))


(fermat 13)
(fermat 12)
(fermat 561)
(fermat 1105)
