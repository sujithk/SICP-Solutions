;;factorial using another perceptive


(define (factorial n)( fact-iter 1 1 n))

(define (fact-iter c l n)
	(if (> c n) l(fact-iter (+ c 1)(* c l) n)))
