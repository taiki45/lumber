(define (jud point)
  (cond
    ((<= 80 point) "A")
    ((<= 60 point 79) "B")
    ((<= 40 point 59) "C")
    ((< pont 40) "D")
    (else "error")))
(display (string-append (jud 80) "\n"))
