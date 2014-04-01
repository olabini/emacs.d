
(setq emacs-erc-definitions '())

(defun emacs-erc-escape-addr (addr)
  (replace-regexp-in-string "\\." "\\\\."
                            (replace-regexp-in-string "irc\\." "" addr)))

(defun erc-user-settings-init (server-defs)
  (erc-match-mode)
  (erc-button-mode nil)
  (setq erc-log-insert-log-on-open nil)
  (setq erc-log-channels t)
  (setq erc-log-channels-directory "~/.irclogs/")
  (setq erc-save-buffer-on-part t)
  (setq erc-hide-timestamps nil)

  (dolist (server-def server-defs)
    (let* ((name (nth 0 server-def))
           (srv  (nth 1 server-def))
           (escaped-srv (emacs-erc-escape-addr srv))
           (port (nth 2 server-def))
           (user (nth 3 server-def))
           (pass (nth 4 server-def))
           (tp (nth 5 server-def))
           defn)

      (if (eql tp 'after-auth)
          (progn
            (add-hook 'erc-after-connect
                      `(lambda (SERVER NICK)
                         (message (concat "connecting to " SERVER))
                         (cond
                           ((string-match ,escaped-srv SERVER)
                            (erc-message "PRIVMSG" (concat "NickServ identify " ,pass))))))
            (setq defn (list :server srv :port port :nick user)))
          (progn
            (require 'erc-sasl-loader)
            (add-to-list 'erc-sasl-server-regexp-list escaped-srv)
            (setq defn (list :server srv :port port :nick user :password pass))))

      (add-to-list 'emacs-erc-definitions defn)

      (defalias (intern (concat "erc-named-" name))
          `(lambda () (interactive) (erc-tls ,@defn))))))

(defun erc-all ()
  "Connect to IRC."
  (interactive)
  (dolist (erc-def emacs-erc-definitions)
    (apply 'erc-tls erc-def)))

(provide 'emacs-erc)
