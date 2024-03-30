;; Copyright (c) 2019 Xu Xin <sxuxin@protonmail.com>

(define f-datum-file-write
  (lambda (obj path)
    (let ((port (open-output-file path)))
      (write obj port)
      (close-port port))))

