(require 'evil)
(require 'evil-leader)

(global-evil-leader-mode)
(evil-mode 1)

(evil-leader/set-key
  "e" 'find-file
  "b" 'switch-to-buffer
  "k" 'kill-buffer)

(provide 'init-evil)