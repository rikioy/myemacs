(if (eq system-type 'windows-nt)
    ;;����0.5����Զ���� ��windows�£�
    (run-with-idle-timer 0.5 nil 'w32-send-sys-command 61488)
)

;; ģ������
(load-theme 'wombat t)
;; �﷨���
(global-font-lock-mode 1)
;; �رտ�ʼҳ��
(setq inhibit-startup-message t)
(setq gnus-inhibit-startup-message t)

;;�趨���Ի���Ϊutf-8  
(setq default-buffer-file-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;;Ĭ�Ͻ���text-mode��������û��ʲô���ܵ�fundamental-mode  
(setq default-major-mode 'text-mode)  
(add-hook 'text-mode-hook 'turn-on-auto-fill)


;; �� y/n���� yes/no
(fset 'yes-or-no-p 'y-or-n-p)

;; ��ʾ����ƥ��
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;; ��ʾʱ�䣬��ʽ����
(display-time-mode 1)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)

;;����ibuffer֧�֣���ǿ*buffer*  
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
