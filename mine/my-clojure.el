(add-hook 'nrepl-interaction-mode-hook
  'nrepl-turn-on-eldoc-mode)

(setq nrepl-popup-stacktraces nil)

(add-to-list 'same-window-buffer-names "*nrepl*")

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages '(clojure-mode
                      ac-nrepl
                      nrepl
                      nrepl-ritz))

(dolist (p my-packages)
  (djr/ensure-package p))

(require 'ac-nrepl)

(add-hook 'nrepl-mode-hook 'ac-nrepl-setup)
(add-hook 'nrepl-interaction-mode-hook 'ac-nrepl-setup)

(eval-after-load "auto-complete"
  '(add-to-list 'ac-modes 'nrepl-mode))

(provide 'my-clojure)
