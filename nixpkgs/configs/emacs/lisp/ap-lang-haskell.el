(use-package haskell-mode)

;; Setup the haskell-language-server LSP server
(use-package eglot
  :hook (haskell-mode . eglot-ensure))

(provide 'ap-lang-haskell)
