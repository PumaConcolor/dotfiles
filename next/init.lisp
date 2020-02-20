(in-package :next-user)

; set buffer
(defclass my-buffer (buffer)
  ; default modes
  ((default-modes :initform
                  (append 
                    '(vi-normal-mode)
                    (get-default 'buffer 'default-modes)))))

(setf *buffer-class* 'my-buffer)

; set remote interface
(defclass my-remote-interface (remote-interface)
  ; search engines
  ((search-engines :initform
    (append
      '(("aur" . "https://aur.archlinux.org/packages.php?O=0&K=~a&do_Search=Go")
        ("pack" . 
         "https://www.archlinux.org/packages/?sort=&q=~a&maintainer=&flagged=")
        ("awiki" . "https://wiki.archlinux.org/index.php?search=~a")
        ("ddg" . "https://duckduckgo.com/?q=~a")
        ("wiki" . "https://en.wikipedia.org/w/index.php?search=~a")
        ("wpita" . "https://it.wikipedia.org/w/index.php?search=~a"))
      (get-default 'remote-interface 'search-engines)))))

(setf *remote-interface-class* 'my-remote-interface)

; TODO: startup options
(setf next:*use-session* nil)

