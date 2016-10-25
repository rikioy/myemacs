(require 'package)
(add-to-list 'package-archives
              '("melpa" . "http://melpa.org/packages/") t)
(when (< emacs-major-version 24)
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

;; 模板设置
(load-theme 'wombat t)
;; 语法检查
(global-font-lock-mode 1)
;; 关闭开始页面
(setq inhibit-startup-message t)
(setq gnus-inhibit-startup-message t)

(require 'evil)
(evil-mode 1)

(add-to-list 'load-path "~/.emacs.d/myemacs/elpa-mirror")
(require 'elpa-mirror)
(setq elpamr-default-output-directory "~/.emacs.d/myemacs/myelpa")

;; php mode and php syntax check
(require 'php-mode)
(require 'flymake-php)
(add-hook 'php-mode-hook 'flymake-php-load)

;; auto-complate
(ac-config-default)

(autoload
    'ace-jump-mode
    "ace-jump-mode"
    "Emacs quick move minor mode"
    t)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

;; The following lines are always needed. Choose your own keys.
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(add-hook 'org-mode-hook 'turn-on-font-lock) ; not needed when global-font-lock-mode is on
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
