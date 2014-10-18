(define (expp b n)(exp-iter b n 1))

(define (exp-iter b n r)   
	(cond((<= n 0)1) ((= n 1)(if (= r 1 )(* b r) r ))
	((even? n)(exp-iter b (/ n 2)(* r (square b))))
	(else (exp-iter b (- n 1) (* r b)))))

(define (even? n)(= (remainder n 2)0))
