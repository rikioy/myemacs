(autoload
    'ace-jump-mode
    "ace-jump-mode"
    "Emacs quick move minor mode"
    t)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

(provide 'init-ace-jump-mode)