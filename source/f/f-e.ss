;; Copyright (c) 2019 Xu Xin <sxuxin@protonmail.com>

(define f-e
  (let ((e '()))
    (lambda (obj)
      (cond
       ((atom? obj) (assoc obj e))
       ((and (pair? obj) (atom? (car obj))) (set! e (cons obj e)))
       (else (f-e))))))

