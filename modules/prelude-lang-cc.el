;;; -*- lexical-binding: t; -*-
;;; Config for C/C++/Java/...

(cl-eval-when 'compile
  (require 'cc-mode))

(setq c-default-style '((java-mode . "java")
			(awk-mode . "awk")
			(c-mode . "k&r")
			(c++-mode . "stroustrup")
			(other . "gnu")))

(defun prelude/enter-cc ()
  (yas-minor-mode)
  (subword-mode)
  (define-key c-mode-map (kbd "<f5>") #'compile)
  (define-key c++-mode-map (kbd "<f5>") #'compile)
  (rainbow-turn-off))

(add-hook 'c-mode-common-hook #'prelude/enter-cc)
(add-hook 'c++-mode-hook #'prelude/enter-cc)

(with-eval-after-load 'cc-mode
  (define-key c-mode-base-map (kbd "[") (double-tap-to-insert ?\())
  (define-key c-mode-base-map (kbd "]") (double-tap-to-insert ?\)))
  (define-key c-mode-base-map (kbd "'") (double-tap-to-insert ?\"))
  (define-key c-mode-base-map (kbd "`") (double-tap-to-insert ?\")))

(provide 'prelude-lang-cc)
