;; Guile
(use-package geiser)
(use-package geiser-guile
  :config
  (setq geiser-guile-binary "guile2.2"))

;; Racket
(use-package geiser-racket)

(provide 'ap-lang-lisp)
