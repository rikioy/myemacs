(if (eq system-type 'windows-nt)
  (setq url-proxy-services '(("http" . "dev-proxy.oa.com:8080")))
)

(provide 'init-proxy)