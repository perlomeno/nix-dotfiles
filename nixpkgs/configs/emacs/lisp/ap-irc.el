(use-package erc
  :config
  (setq erc-nick "ale-pi")
  (setq erc-user-full-name "Alessandro Perlo")
  (setq erc-server "irc.libera.chat")
  (setq erc-autojoin-channels-alist '(("libera.chat" "#btrfs" "#emacs" "#fedora" "#wayland")))
  (setq erc-kill-buffer-on-part t))

(provide 'ap-irc)
