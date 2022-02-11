(provide 'ap-lang-python)

;; Setup the python-language-server LSP server
(use-package eglot
  :hook (python-mode . eglot-ensure))

(use-package display-line-numbers
  :hook (inferior-python-mode . (lambda () (display-line-numbers-mode -1))))
