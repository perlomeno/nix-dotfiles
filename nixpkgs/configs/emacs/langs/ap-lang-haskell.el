;; Setup the haskell-language-server LSP server
(use-package eglot
  :hook (haskell-mode . eglot-ensure))

;; Haskell mode configuration
(use-package haskell-mode)

(provide 'ap-lang-haskell)
