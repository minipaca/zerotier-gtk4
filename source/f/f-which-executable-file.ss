;; Copyright (c) 2019, 2023 Xu Xin <sxuxin@protonmail.com>

(define f-which-executable-file
  (lambda (name)
    ;;
    (define (string-split str delim)
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
    ;;
    (define executable-file?
      (lambda (file)
	(let ((n #b001000000)
	      (mode (get-mode file)))
	  (= (logand mode n) n))))
    ;;
    (let* ((delim (case (machine-type)
		    ((ta6nt ti3nt a6nt i3nt) #\;)
		    (else #\:)))
	   (path (string-split (getenv "PATH") delim)))
      (if (and (list? path)
	       (not (null? path)))
	  (let* ((seperator (case (machine-type)
			      ((ta6nt ti3nt a6nt i3nt) "\\")
			      (else "/")))
		 (files (map (lambda (s)
			       (string-append s seperator name))
			     path))
		 (lst (filter (lambda (file)
				(and (file-exists? file)
				     (executable-file? file)))
			      files)))
	    (if (null? lst)
		#f
		(car lst)))
	  #f))))

