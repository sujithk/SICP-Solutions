(define (accumulate combiner null-value term a next b) 
    (if (> a b) null-value 
        (combiner (term a) (accumulate combiner null-value term (next a) next b))))



(define (sum term a next b) (accumulate + 0 term a next b)) 

(define (inc a) (+ 1 a))

(define (sum-cubes a b)
	(sum cube a inc b))

(define (cube n)(* n n n))


(sum-cubes 1 5)

