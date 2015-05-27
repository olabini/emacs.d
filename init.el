(setq load-path
      (remove "/usr/local/share/emacs/24.5/lisp/org"
              (append
               (mapcar
                'expand-file-name
                '(
                  "~/.emacs.d/main"
                  "~/.emacs.d/site-lisp/jde/lisp"
                  "~/.emacs.d/site-lisp/downloaded"
                  "~/.emacs.d/site-lisp/own"
                  "~/.emacs.d/site-lisp/erc-sasl"
                  )) load-path)))

(setq custom-file (expand-file-name "~/.emacs.d/main/emacs-custom.el"))

(require 'emacs-custom)
(require 'emacs-packages)
(require 'emacs-require)
(require 'emacs-vars)
(require 'emacs-automode)
(require 'emacs-jde)
(require 'emacs-functions)
(require 'emacs-hooks)
(require 'emacs-keys)
(require 'emacs-mac)
(require 'emacs-utf8)
(require 'emacs-short)
(require 'emacs-looks)

;; This file contains user specific customization and should not be checked in to the shared repository
;; No error will be displayed if it can't be loaded
(load "emacs-im" t)
(load "emacs-user-init" t)
(put 'downcase-region 'disabled nil)
(server-start)
