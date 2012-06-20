(define (count-leaves item)
  (cond ((null? item) 0)
        ((not (pair? item)) 1)
        (else (+ (count-leaves (car item))
                 (count-leaves (cdr item))))))
