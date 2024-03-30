;; Copyright (c) 2024 Xu Xin <sxuxin@protonmail.com>

(define x-usage
  (lambda parameters
    (string-append
     "\n"
     "  " "Creates virtual Ethernet networks of almost unlimited size. GTK4 UI." "\n"
     "\n"
     "Usage:" "\n"
     "\n"
     "        " (cdr (f-e "app-name")) " -x [command]" "\n"
     "        " (cdr (f-e "app-name")) " <shortcut>" "\n"
     "\n"
     "The commands are:" "\n"
     "\n"
     "        " "gtk4" "           " "start gtk4 GUI" "\n"
     "        " "version" "        " "print version" "\n"
     "        " "usage" "          " "show usage" "\n"
     "\n"
     "The shortcuts are:" "\n"
     "\n"
     "        " "-v" "             " "shortcut for '-x version'" "\n"
     "        " "-h" "             " "shortcut for '-x usage'" "\n"
     )))

