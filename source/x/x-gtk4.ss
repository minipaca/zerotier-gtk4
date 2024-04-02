;; Copyright (c) 2024 Xu Xin <sxuxin@protonmail.com>

(define x-gtk4
  (lambda parameters
    (import (f-gtk4))
    ;;
    (define (on-activate gtk-app user-data)
      (let ((window (gtk-application-window-new gtk-app))
	    (start-button (gtk-button-new))
	    (stop-button (gtk-button-new))
	    (text "")
	    (text-buffer (gtk-text-buffer-new NULL))
	    (text-view (gtk-text-view-new))
	    (hbox (gtk-box-new GTK-ORIENTATION-HORIZONTAL 2))
	    (vbox (gtk-box-new GTK-ORIENTATION-VERTICAL 2))
	    (cbox (gtk-center-box-new)))
	;;
	(define service-active?
	  (lambda (service)
	    (let* ((command (string-append "systemctl is-active " service))
		   (port (car (process command)))
		   (str (get-string-all port)))
	      (string=? str "active\n"))))
	;;
	(define start-zerotier-service
	  (lambda (a b)
	    (begin
	      (set! text (string-append
			  text "\n" (cdr (f-t "Starting zerotier-one.service"))))
	      (gtk-text-buffer-set-text text-buffer text -1)
	      (system "systemctl start zerotier-one.service")
	      (if (service-active? "zerotier-one.service")
		  (begin
		    (set! text (string-append text " [OK]"))
		    (gtk-text-buffer-set-text text-buffer text -1))))))
	;;
	(define stop-zerotier-service
	  (lambda (a b)
	    (begin
	      (set! text (string-append
			  text "\n" (cdr (f-t "Stopping zerotier-one.service"))))
	      (gtk-text-buffer-set-text text-buffer text -1)
	      (system "systemctl stop zerotier-one.service")
	      (if (not (service-active? "zerotier-one.service"))
		  (begin
		    (set! text (string-append text " [OK]"))		    
		    (gtk-text-buffer-set-text text-buffer text -1))))))
	;;
	(gtk-button-set-label start-button (cdr (f-t "Start Zerotier")))
	(gtk-button-set-label stop-button (cdr (f-t "Stop Zerotier")))
	;;
	(set! text (string-append (cdr (f-e "app-name")) " "
				  (cdr (f-e "app-version"))))
	(gtk-text-buffer-set-text text-buffer text -1)
	;;
	(let ((service "zerotier-one.service"))
	  (if (service-active? service)
	      (set! text (string-append text "\n" service
					(cdr (f-t " is enabled"))))
	      (set! text (string-append text "\n" service
					(cdr (f-t " is disabled")))))
	  (gtk-text-buffer-set-text text-buffer text -1))
	;;
	(gtk-box-prepend hbox start-button)
	(gtk-box-append hbox stop-button)
	(gtk-box-prepend vbox hbox)
	(gtk-box-append vbox text-view)
	(gtk-center-box-set-center-widget cbox vbox)
	;;
	(gtk-text-view-set-editable text-view 0)
	(gtk-text-view-set-buffer text-view text-buffer)
	;;
	(let ((app-name (cdr (f-e "app-name"))))
	  (gtk-window-set-icon-name window app-name)
	  (gtk-window-set-title window app-name))
	;;
	(gtk-window-set-child window cbox)
	(gtk-window-set-resizable window 0)
	;;
	(g-signal-connect-object start-button "clicked"
				 (g-callback start-zerotier-service) 0 0)
	(g-signal-connect-object stop-button "clicked"
				 (g-callback stop-zerotier-service) 0 0)
	;;
	(gtk-widget-show window)))
    ;;
    (define (main)
      (let ((argc (length (command-line)))
	    (argv (command-line))
	    (app (gtk-application-new (string-append (cdr (f-e "app-name"))
						     ".gtk4.app")
				      0)))
	(g-signal-connect-object app "activate" (g-callback on-activate) 0 0)
	(g-application-run app 0 0)
	(g-object-unref app)))
    ;;
    (main)
    ""))
