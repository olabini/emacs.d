(setq socks-override-functions 1)
(setq socks-noproxy '("localhost"))
(setq socks-server (list "TOR socks5" "localhost" 9050 5))
(require 'socks)
(setq socks-server (list "TOR socks5" "localhost" 9050 5))

(provide 'emacs-socks)
