;;; Lisp
(unless (package-installed-p 'paredit)
  (package-install 'paredit))

(defun prelude--enter-lisp ()
  (paredit-mode 1))

(add-hook 'lisp-mode-hook #'prelude--enter-lisp)
(add-hook 'emacs-lisp-mode-hook #'prelude--enter-lisp)

(provide 'prelude-lang-lisp)
