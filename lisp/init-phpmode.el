;; php mode and php syntax check
(require 'php-mode)
(eval-after-load 'php-mode
    '(require 'php-ext))

(provide 'init-phpmode)