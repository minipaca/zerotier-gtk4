;; Copyright (c) 2020 Xu Xin <sxuxin@protonmail.com>

;;;; Current language

(f-t (string->symbol (i-lang)))

;;;; User's input

(let ((x "x-gtk4")
      (parameters '()))
  ;;
  (if (>= (length (cdr (command-line))) 1)
      (begin
	(cond
	 ((string=? (cadr (command-line)) "-v") (set! x "x-version"))
	 ((string=? (cadr (command-line)) "-h") (set! x "x-usage")))
	(set! parameters (cddr (command-line)))))
  ;;
  (if (and (>= (length (cdr (command-line))) 2)
	   (string=? (cadr (command-line)) "-x"))
      (let ((s (caddr (command-line))))
	(case s
	 ("gtk4" (set! x "x-gtk4"))
	 ("version" (set! x "x-version"))
	 ("usage" (set! x "x-usage"))
	 (else (set! x "x-gtk4")))
	(set! parameters (cdddr (command-line)))))
  ;;
  (display (eval (cons (string->symbol x) parameters)))
  (newline))
