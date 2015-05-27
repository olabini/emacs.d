(setq
 erc-user-full-name "Ola Bini"
 erc-email-userid "ola@olabini.se"
 erc-nick "olabini"
)

(require 'im-notifications)
(im-notifications-line-mode t)
(im-notifications-updated)

(defun erc-freenode ()
  (interactive)
  (erc :server "freenode.irc.local" :port 16333 :nick "olabini"))

(defun erc-oftc ()
  (interactive)
  (erc :server "oftc.irc.local" :port 16335 :nick "olabini"))

(defun erc-all ()
  "Connect to IRC."
  (interactive)
  (erc-freenode)
  (erc-oftc))

(defun update-notification-hook (begin end length notification-name)
  (let ((cb (current-buffer))
        (wb (window-buffer)))
    (if (eq cb wb)
        (im-notifications-ensure-clear-update notification-name)
        (im-notifications-ensure-added-normal-update notification-name))))

(defun figure-out-xmpp-account-name ()
  (let ((bn (buffer-name (current-buffer))))
    (substring (substring bn 7) 0 -1)))

(defun xmpp-client (account)
  "Start XMPP client"
  (interactive)
  (ansi-term (concat "/home/olabini/bin/xmpp-client_" account) (concat "xmpp: " account))
  (with-current-buffer (concat "*xmpp: " account "*")
    (add-hook 'after-change-functions '(lambda (begin end length) (update-notification-hook begin end length (figure-out-xmpp-account-name))) t t)))

(defun xmpp-all ()
  (interactive)
  (xmpp-client "ola.bini@jabber.ccc.de")
)

(defun pond ()
  (interactive)
  (ansi-term "/home/olabini/bin/pond-cli" "pond")
  (with-current-buffer "*pond*"
    (add-hook 'after-change-functions '(lambda (begin end length) (update-notification-hook begin end length "pond")) t t)))
