(use-package eshell
  :hook
  (eshell-mode . (lambda ()
		   (display-line-numbers-mode 0)))
  (eshell-mode . (lambda ()
		   (setq-local global-hl-line-mode nil)))
  :config
  (setq eshell-hist-ignoredups t)
  (setq eshell-scroll-to-bottom-on-input t))

(provide 'ap-eshell)
