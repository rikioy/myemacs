(require 'package)
(add-to-list 'package-archives
              '("melpa" . "http://melpa.org/packages/") t)
(when (< emacs-major-version 24)
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

(require 'evil)
(evil-mode 1)

(add-to-list 'load-path "~/.emacs.d/myemacs/elpa-mirror")
(require 'elpa-mirror)
(setq elpamr-default-output-directory "~/.emacs.d/myemacs/myelpa")
