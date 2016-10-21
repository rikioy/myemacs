(require 'package)
(add-to-list 'package-archives
              '("melpa" . "http://melpa.org/packages/") t)
(when (< emacs-major-version 24)
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

(if (eq system-type 'windows-nt)
  (setq url-proxy-services '(("http" . "dev-proxy.oa.com:8080")))
)

;; 模板设置
(load-theme 'wombat t)
;; 语法检查
(global-font-lock-mode 1)
;; 关闭开始页面
(setq inhibit-startup-message t)
(setq gnus-inhibit-startup-message t)

(require 'evil)
(evil-mode 1)

(add-to-list 'load-path "~/myemacs/elpa-mirror")
(require 'elpa-mirror)
(setq elpamr-default-output-directory "~/myemacs/myelpa")

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
