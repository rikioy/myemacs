;;(if (eq system-type 'windows-nt)
;;  (setq url-proxy-services '(("http" . "dev-proxy.oa.com:8080")))
;;)

(when (string= system-name 'QINGRONGFU-PC1)
  (setq url-proxy-services '(("http" . "dev-proxy.oa.com:8080")))
)

(provide 'init-proxy)