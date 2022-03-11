;; Setup the clang language server
(use-package eglot
  :hook ((c-mode . eglot-ensure)
	 (c++-mode . eglot-ensure)))

(use-package cc-mode
  :config
  (setq c-default-style "linux")
  (setq c-basic-offset 4)
  :bind
  (:map c-mode-map ("C-c c" . compile)))

(provide 'ap-lang-c)
