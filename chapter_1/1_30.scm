(define (sum-iter term a next b)
	(define (iter a result)
		(if (> a b) result
			(iter (next a) ((+ (term a) result)))))
	(iter a 0))		


(define (inc a) (+ 1 a))

(define (sum-cubes a b)
	(sum-iter cube a inc b))

(define (cube n)(* n n n))



(define (pi-sum a b) 
  (define (pi-term x) 
          (/ 1.0 (* x (+ x 2)))) 
  (define (pi-next x) 
          (+ x 4)) 
  (sum-iter pi-term a pi-next b))

(* 8 (pi-sum 1 1000))  

