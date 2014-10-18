(define (fibonacci n) (fib-iter 1 0 n))

(define (fib-iter a b count)
	(if(= count 0)  a  (fib-iter (+ a b) a (- count 1))))
