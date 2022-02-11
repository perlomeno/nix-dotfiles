;; Setup the clang language server
(use-package eglot
  :hook ((c-mode . eglot-ensure)
	 (c++-mode . eglot-ensure)))

(provide 'ap-lang-c)
