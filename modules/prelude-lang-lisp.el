;;; -*- lexical-binding: t; -*-

(define-key emacs-lisp-mode-map (kbd "C-c C-c") #'eval-buffer)

(setq inferior-lisp-program "ccl64")

(use-package paredit
  :disabled
  :diminish "Ⓟ"
  :hook ((lisp-mode emacs-lisp-mode lisp-interaction-mode) . paredit-mode)
  :config
  (add-hook 'lisp-interaction-mode-hook #'(lambda () (define-key paredit-mode-map "\C-j" nil))))

(use-package parinfer
  :diminish ""
  :hook ((lisp-mode emacs-lisp-mode lisp-interaction-mode) . parinfer-mode))

(eval-after-load 'scheme
  (setq scheme-program-name "mechanics"))

(use-package geiser
  :mode (("\\.ss\\'" . geiser-mode))
  :config
  (setq geiser-default-implementation 'chez))

(defun mechanics ()
  (interactive)
  (run-scheme "/usr/local/scmutils/mit-scheme/bin/scheme --library /usr/local/scmutils/mit-scheme/lib"))

(use-package sly
  :commands (sly sly-mode)
  :mode (("\\.lisp\\'" . lisp-mode)))

(provide 'prelude-lang-lisp)
