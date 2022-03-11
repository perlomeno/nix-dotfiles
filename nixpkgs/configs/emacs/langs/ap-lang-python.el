;; Setup the python-language-server LSP server
(use-package eglot
  :hook (python-mode . eglot-ensure))

;; Python mode configuration
(use-package python
  :hook
  (inferior-python-mode . (lambda () (display-line-numbers-mode -1))))

(provide 'ap-lang-python)
