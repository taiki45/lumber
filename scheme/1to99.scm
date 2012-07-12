(provide #f)
(define (make-list proc st en)
  (cond ((= st en) (cons (proc en) '()))
        (else (cons (proc st)
                    (make-list proc
                                     (+ st 1)
                                     en)))))

(reduce + 0 (make-list (lambda (n) (+ 1 (* 2 n))) 0 49))
