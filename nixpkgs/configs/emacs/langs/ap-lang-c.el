;; Setup the clang language server
(use-package eglot
  :hook ((c-mode . eglot-ensure)
	 (c++-mode . eglot-ensure)))

(use-package cc-mode
  :config
  (setq c-basic-offset 4))

(provide 'ap-lang-c)
