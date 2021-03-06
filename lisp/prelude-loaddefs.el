;;; prelude-loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads nil "calctex" "calctex.el" (0 0 0 0))
;;; Generated autoloads from calctex.el

(autoload 'calctex-default-render-process "calctex" "\
The default function that calctex will use to render LaTeX SRC.

\(fn SRC)" nil nil)

(autoload 'calctex-mode "calctex" "\
Turn calc into an editor for rendered LaTeX equations.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "calctex" '("calctex-")))

;;;***

;;;### (autoloads nil "gud-lldb" "gud-lldb.el" (0 0 0 0))
;;; Generated autoloads from gud-lldb.el

(autoload 'lldb "gud-lldb" "\
Run lldb on program FILE in buffer *gud-FILE*.
The directory containing FILE becomes the initial working directory
and source-file directory for your debugger.

\(fn COMMAND-LINE)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "gud-lldb" '("lldb-" "gud-")))

;;;***

;;;### (autoloads nil "highlight-tail" "highlight-tail.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from highlight-tail.el

(autoload 'highlight-tail-mode "highlight-tail" "\
Draw a \"tail\" while you're typing.

This minor-mode draws a tail in real time, when you write.  It
changes the background color of some last typed characters and
smoothly fade them out.

If ARG is 0 or less than zero then the mode will be disabled.
If ARG is nil then the mode will be switched.
If ARG is greater than zero then this mode will be turned on.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "highlight-tail" '("highlight-tail-")))

;;;***

;;;### (autoloads nil "treefold" "treefold.el" (24246 54609 910049
;;;;;;  611000))
;;; Generated autoloads from treefold.el

(autoload 'treefold-toggle "treefold" "\
Toggle whether the current subtree is folded." t nil)

(autoload 'treefold-unfold-all "treefold" "\
Unfold all subtrees in this buffer." t nil)

(autoload 'treefold-forward-subtree "treefold" "\
Go to the position of the indicator for the next N-th subtree.

If N is negative, search backwards.

\(fn &optional N)" t nil)

(autoload 'treefold-backward-subtree "treefold" "\
Go to the position of the indicator for the previous N-th subtree.

If N is negative, search forward.

\(fn &optional N)" t nil)

(autoload 'treefold-mode "treefold" "\
Enable treefold functions in this buffer.

If called interactively, enable Treefold mode if ARG is positive,
and disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it if
ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treefold" '("treefold--")))

;;;***

;;;### (autoloads nil "valign" "valign.el" (24329 3014 231825 904000))
;;; Generated autoloads from valign.el

(autoload 'valign-mode "valign" "\
Visually align Org tables.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "valign" '(#("valign-" 0 7 (face font-lock-function-name-face fontified t)))))

;;;***

(provide 'prelude-loaddefs)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; prelude-loaddefs.el ends here
