;; Copyright (c) 2019 Xu Xin <sxuxin@protonmail.com>

(define f-datum-file-read
  (lambda (path)
    (let* ((port (open-input-file path))
	   (datum (read port)))
      (close-port port)
      datum)))

