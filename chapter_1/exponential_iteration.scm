(define (expp b n)
	(exp-iter b 1 1 n))

(define (exp-iter b count r n)
 (if (<= count n) (exp-iter b (+ count 1) (* r b)  n)r))
