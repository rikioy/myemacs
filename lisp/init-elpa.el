(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/"))

(setq package-user-dir "~/.emacs.d/myemacs/elpa")
(package-initialize)

(provide 'init-elpa)