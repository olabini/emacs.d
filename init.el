(setq load-path
      (append
       (mapcar
        'expand-file-name
        '(
          "~/.emacs.d/site-lisp/jde/lisp"
          "~/.emacs.d/site-lisp/downloaded"
          "~/.emacs.d/site-lisp/own"
          "~/.emacs.d/site-lisp/erc-sasl"
          "~/.emacs.d/"
          )) load-path))

(setq custom-file (expand-file-name "~/.emacs.d/emacs-custom.el"))

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
(require 'emacs-erc)

;; This file contains user specific customization and should not be checked in to the shared repository
;; No error will be displayed if it can't be loaded
(load "emacs-user-init" t)
(put 'downcase-region 'disabled nil)
