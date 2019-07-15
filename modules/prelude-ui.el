;; Don't show useless UI elements
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 1)

;; My vendor settings!
;; 1. Choose a better background color (thanks to Xah Lee)
;; 2. Better default size
;;
;; I strongly advise you write equivalent settings in your ~/.Xresources!
(setq default-frame-alist nil)
(setq initial-frame-alist nil)
(if (display-graphic-p)
    (progn
      (setq initial-frame-alist
            '((alpha . 0.92))))
  (progn
    (setq initial-frame-alist '((tool-bar-lines . 0)))
    (setq default-frame-alist '((tool-bar-lines . 0)))))

;; Use dracula theme by default
(ensure-package 'dracula-theme)
(load-theme 'dracula t)

;; Mode line
(ensure-package 'diminish)
(ensure-package 'doom-modeline)

(doom-modeline-mode t)
(setq doom-modeline-minor-modes nil)

(diminish 'undo-tree-mode)
(diminish 'eldoc-mode)
(diminish 'auto-revert-mode)

;; Ivy and Counsel
(ensure-package 'ivy)
(ensure-package 'counsel)

(ivy-mode 1)
(counsel-mode 1)

;; I'm the winner ;-)
(defvar winner-dont-bind-my-keys t)
(winner-mode t)
(define-key winner-mode-map (kbd "C-c ,") 'winner-undo)
(define-key winner-mode-map (kbd "C-c .") 'winner-redo)

;; Eye candy icons
(ensure-package 'all-the-icons)

(provide 'prelude-ui)
