(if (eq system-type 'windows-nt)
    ;;启动0.5秒后自动最大化 （windows下）
    (run-with-idle-timer 0.5 nil 'w32-send-sys-command 61488)
)

;; 模板设置
(load-theme 'wombat t)
;; 语法检查
(global-font-lock-mode 1)
;; 关闭开始页面
(setq inhibit-startup-message t)
(setq gnus-inhibit-startup-message t)

;;设定语言环境为utf-8  
(setq default-buffer-file-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;;默认进入text-mode，而不是没有什么功能的fundamental-mode  
(setq default-major-mode 'text-mode)  
(add-hook 'text-mode-hook 'turn-on-auto-fill)


;; 以 y/n代表 yes/no
(fset 'yes-or-no-p 'y-or-n-p)

;; 显示括号匹配
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;; 显示时间，格式如下
(display-time-mode 1)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)

;;启用ibuffer支持，增强*buffer*  
(require 'ibuffer) 
(global-set-key (kbd "C-x C-b") 'ibuffer)

;;(setq ido-enable-flex-matching t)
;;(setq ido-use-filename-at-point 'guess)
;;(setq ido-everywhere t)          
(ido-mode t)

;; auto-complate
(ac-config-default)

;; imenu-anywhere
(global-set-key (kbd "C-.") #'imenu-anywhere)
(autoload 'idomenu "idomenu" nil t)

(provide 'init-base)
