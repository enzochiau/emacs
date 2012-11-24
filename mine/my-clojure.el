(when (not (package-installed-p 'nrepl))
  (package-install 'nrepl))

(when (not (package-installed-p 'clojure-mode))
  (package-install 'clojure-mode))

(when (not (package-installed-p 'ac-nrepl))
  (package-install 'ac-nrepl))

(add-hook 'nrepl-interaction-mode-hook
  'nrepl-turn-on-eldoc-mode)

(setq nrepl-popup-stacktraces nil)

(add-to-list 'same-window-buffer-names "*nrepl*")

(add-hook 'nrepl-interaction-mode 'paredit-mode)

(require 'ac-nrepl)

(add-hook 'nrepl-mode-hook 'ac-nrepl-setup)
(add-hook 'nrepl-interaction-mode-hook 'ac-nrepl-setup)

(eval-after-load "auto-complete"
  '(add-to-list 'ac-modes 'nrepl-mode))

(provide 'my-clojure)
