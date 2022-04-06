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
  (load-theme 'sanityinc-tomorrow-day t)
  (let ((line (face-attribute 'mode-line :underline)))
    (set-face-attribute 'mode-line          nil :overline   line)
    (set-face-attribute 'mode-line-inactive nil :overline   line)
    (set-face-attribute 'mode-line-inactive nil :underline  line)
    (set-face-attribute 'mode-line          nil :box        nil)
    (set-face-attribute 'mode-line-inactive nil :box        nil)))

;; Modeline configuration
(use-package moody
  :config
  (if (string= (system-name) "thinkbook")
      (setq moody-mode-line-height 50)
    (setq moody-mode-line-height 25))
  (setq x-underline-at-descent-line t)
  (moody-replace-mode-line-buffer-identification)
  (moody-replace-vc-mode)
  (moody-replace-eldoc-minibuffer-message-function))

(use-package minions
  :config
  (setq minions-mode-line-lighter "~")
  (minions-mode 1))

(column-number-mode 1)
(display-time-mode 1)
(setq display-time-24hr-format t)
(setq display-time-default-load-average nil)

;; Font configuration
(set-face-attribute 'default nil :font "Iosevka" :height 130)
(set-face-attribute 'fixed-pitch nil :font "Iosevka" :height 130)
(set-face-attribute 'variable-pitch nil :font "DejaVu Sans" :height 120)
(set-fontset-font t 'symbol (font-spec :family "Noto Color Emoji"))

(provide 'ap-ui)
