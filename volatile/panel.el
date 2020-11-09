(defun treemacs--switch-workspace-by-name (name)
  (require 'treemacs)
  (setf (treemacs-current-workspace) (treemacs--select-workspace-by-name name))
  (treemacs--invalidate-buffer-project-cache)
  (treemacs--rerender-after-workspace-change))

(defun k/course ()
  (interactive)
  (require 'treemacs)
  (dired (expand-file-name "~/Documents/2020 课程"))
  (treemacs--switch-workspace-by-name "Course"))

(defun k/mail (&optional arg)
  (interactive)
  (require 'notmuch)
  (if arg
      (notmuch-poll))
  (notmuch))

(defun k/work ()
  (interactive)
  (treemacs--switch-workspace-by-name "Work")
  (delete-other-windows)
  (dired "~/Documents/Writings/AutoGR")
  (find-file-other-window "~/Documents/Writings/AutoGR/Work.org")
  (treemacs)
  (other-window))

(defun k/scratch ()
  (interactive)
  (switch-to-buffer "*scratch*"))

(defhydra k/panel (global-map "C-c m")
  ("c" k/course "course")
  ("s" k/scratch "scratch")
  ("w" k/work "work")
  ("m" k/mail "mail")
  ("b" k/blog "blog"))
