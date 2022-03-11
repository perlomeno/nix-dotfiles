;; Setup fonts for org-mode
(defun ap/org-fonts-setup ()
  (font-lock-add-keywords 'org-mode
                          '(("^ *\\([-]\\) "
                             (0 (prog1 () (compose-region (match-beginning 1) (match-end 1) "•"))))))
  (dolist (face '((org-level-1 . 1.20)
                  (org-level-2 . 1.15)
                  (org-level-3 . 1.10)
                  (org-level-4 . 1.05)
                  (org-level-5 . 1.00)
                  (org-level-6 . 1.00)
                  (org-level-7 . 1.00)
                  (org-level-8 . 1.00)))
    (set-face-attribute (car face) nil :font "Iosevka" :weight 'bold :height (cdr face))))

;; Org-mode hook
(defun ap/org-mode-setup ()
  (setq visual-fill-column-width 100)
  (setq visual-fill-column-center-text t)
  (visual-fill-column-mode 1)
  (hl-line-mode -1)
  (display-line-numbers-mode -1)
  (org-bullets-mode 1)
  (org-indent-mode)
  (visual-line-mode 1))

;; Center text in org-mode
(use-package visual-fill-column)

;; UTF-8 bullets for org-mode
(use-package org-bullets)

;; Add latex completion in org-mode
(use-package tex-mode
  :ensure auctex)

(use-package cdlatex
  :config
  (add-hook 'org-mode-hook #'turn-on-org-cdlatex))

(use-package org
  :commands org-capture
  :config
  (ap/org-fonts-setup)
  (setq org-ellipsis " ▼")
  (setq org-export-with-toc nil)
  (setq org-latex-packages-alist '(("margin=2cm" "geometry")))
  (setq org-goto-auto-isearch nil)
  :hook
  (org-mode . ap/org-mode-setup))

(provide 'ap-org)
