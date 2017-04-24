(add-to-list 
    'load-path 
    (expand-file-name "myemacs/lisp" user-emacs-directory))

(setq package-user-dir "~/.emacs.d/myemacs/elpa")

(require 'init-elpa)            ;; elpa
(require 'init-proxy)           ;; proxy
(require 'init-base)            ;; 一些基本的设置
(require 'init-evil)            ;; evil
(require 'init-orgmode)         ;; orgmode
(require 'init-key)             ;; key
;;(require 'init-phpmode)       ;;
(require 'init-ace-jump-mode)   ;;
(require 'init-yasnippet)       ;;