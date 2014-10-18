(define (* a b) (add a b 0))

(define (add a b r) (if (= b 0) r
	(add  a (- b 1) (+ a r ))))

(define (double b) (add b b 0))

(define (half n) (/ n 2))

(define (exp-fast b n) 
	(exp-iter b n 1))

(define (exp-iter b n r)   
	(cond((<= n 0)1) ((= n 1)(if (= r 1 )(* b r) r ))
	((even? n)(exp-iter b (half n)(* r (double b))))
	(else (exp-iter b (- n 1) (* r b)))))

(define (even? n)(= (remainder n 2)0))
