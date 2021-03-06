(require 'guru-mode)

(defvar my-affected-bindings-list '(("C-x b" . "M-SPC")
				    ("C-x C-f" . "M-o")))

(dolist (cell my-affected-bindings-list)
  (define-key guru-mode-map
    (read-kbd-macro (car cell)) (guru-rebind (car cell) (cdr cell))))

(guru-global-mode +1)

(provide 'djr-guru-mode)
