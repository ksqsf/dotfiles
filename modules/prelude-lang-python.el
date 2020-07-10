;;; -*- lexical-binding: t; -*-

(use-package python
  :defer t
  :init
  (setq doom-modeline-env-python-executable "python3")
  (setq python-shell-interpreter "python3")
  :bind (:map python-mode-map
              ("C-x C-e" . python-shell-send-statement))
  :config
  (add-hook 'inferior-python-mode-hook
	  (lambda ()
	    (company-mode t))))

(use-package elpy
  :after (python)
  :hook (python-mode . elpy-enable)
  :config
  (setq elpy-rpc-python-command "python3"
        elpy-rpc-virtualenv-path (no-littering-expand-var-file-name "elpy/rpc-venv")
        elpy-get-info-from-shell t))

(provide 'prelude-lang-python)
