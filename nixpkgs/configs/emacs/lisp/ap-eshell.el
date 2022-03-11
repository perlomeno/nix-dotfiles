(use-package eshell
  :hook
  (eshell-mode . (lambda ()
		   (display-line-numbers-mode 0)
		   (setq-local global-hl-line-mode nil)
		   (setq-local corfu-auto nil)
		   (corfu-mode)))
  :config
  (setq eshell-hist-ignoredups t)
  (setq eshell-cmpl-ignore-case t))

(use-package eshell-git-prompt
  :config
  (eshell-git-prompt-use-theme 'git-radar))

(provide 'ap-eshell)
