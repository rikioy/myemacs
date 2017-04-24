;;系统剪贴板快捷键（C-c C-c复制，C-c C-v粘贴）  
(global-set-key "\C-cc" 'clipboard-kill-ring-save)  
(global-set-key "\C-cv" 'clipboard-yank)

;;更顺手的M-x（可以用C-x C-m或C-c C-m来触发）  
(global-set-key "\C-x\C-m" 'execute-extended-command)

(provide 'init-key)