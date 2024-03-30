;; Copyright (c) 2019 Xu Xin <sxuxin@protonmail.com>

(define (f-string-split str delim)
  (define in (open-input-string str))
  (let loop ((rv '()) (out (open-output-string)))
    (define c (read-char in))
    (cond ((eof-object? c)
           (reverse (cons (get-output-string out) rv)))
          ((char=? c delim)
           (loop (cons (get-output-string out) rv)
                 (open-output-string)))
          (else
           (write-char c out)
           (loop rv out)))))

