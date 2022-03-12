;; Configure the garbage-collector
(setq gc-cons-threshold (* 50 1000 1000))

;; Show startup time in the minibuffer
(defun ap/display-startup-time ()
  (message "Emacs loaded in %s with %d garbage collections."
           (format "%.2f seconds"
                   (float-time
                     (time-subtract after-init-time before-init-time)))
           gcs-done))

(add-hook 'emacs-startup-hook #'ap/display-startup-time)

;; Maximize window on startup
(add-hook 'window-setup-hook 'toggle-frame-maximized t)

;; Custom
(setq custom-file (concat user-emacs-directory "custom.el"))
(load custom-file 'noerror)

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'ap-elpa)
(require 'ap-backups)
(require 'ap-completion)
(require 'ap-dev)
(require 'ap-dired)
(require 'ap-eshell)
(require 'ap-minibuffer)
(require 'ap-movement)
(require 'ap-org)
(require 'ap-ui)

(add-to-list 'load-path (expand-file-name "langs" user-emacs-directory))

(require 'ap-lang-c)
(require 'ap-lang-haskell)
(require 'ap-lang-python)
