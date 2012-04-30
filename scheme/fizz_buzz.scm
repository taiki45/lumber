#!/usr/bin/env gosh
(define (fizz? num)
  (if (= 0 (remainder num 3))
    #t
    #f))

(define (buzz? num)
  (if (= 0 (remainder num 5))
    #t
    #f))

(define (fizz_buzz num)
  (dotimes (i (+ num 1) 0)
    (cond
      ((= 0 i) ())
      ((and (fizz? i) (buzz? i))
           (display "FizzBuzz\n"))
      ((fizz? i)
       (display "Fizz\n"))
      ((buzz? i)
       (display "Buzz\n"))
      (else
        (display #`",(number->string i)\n")))))

(define (main argv)
  (if (null? (cdr argv))
    (display "no arguments\n")
    (fizz_buzz (string->number (car (cdr argv))))))
