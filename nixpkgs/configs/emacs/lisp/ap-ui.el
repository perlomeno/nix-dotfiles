;; Disable menu bar, scroll bar, tool bar and startup screen
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)
(setq inhibit-startup-screen t)

;; Display line numbers and highlight current line
(global-display-line-numbers-mode)
(global-hl-line-mode)

;; Theme configuration
(use-package color-theme-sanityinc-tomorrow
  :config
  (load-theme 'sanityinc-tomorrow-day t))

;; Modeline configuration
(use-package minions
  :config
  (setq minions-mode-line-lighter "~")
  (minions-mode 1))

;; Font configuration
(set-face-attribute 'default nil :font "Iosevka" :height 130)
(set-face-attribute 'fixed-pitch nil :font "Iosevka" :height 130)
(set-face-attribute 'variable-pitch nil :font "DejaVu Sans" :height 120)
(set-fontset-font t 'symbol (font-spec :family "Noto Color Emoji"))

(provide 'ap-ui)
