(define (fib n)
    (if (< n 2) n (+ (fib (- n 2)) (fib (- n 1)))))

(display (fib 10))
(display "\n")
