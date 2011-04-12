
(setq load-path 
      (append 
       (mapcar 
        'expand-file-name 
        '(
          "~/.emacs.d/site-lisp/cedet/common"
          "~/.emacs.d/site-lisp/ecb"
          "~/.emacs.d/site-lisp/elib"
          "~/.emacs.d/site-lisp/emacs-rails"
          "~/.emacs.d/site-lisp/erc"
          "~/.emacs.d/site-lisp/fsharp"
          "~/.emacs.d/site-lisp/fuel"
          "~/.emacs.d/site-lisp/git"
          "~/.emacs.d/site-lisp/haskell-mode-2.4"
          "~/.emacs.d/site-lisp/jde/lisp"
          "~/.emacs.d/site-lisp/mmm"
          "~/.emacs.d/site-lisp/mozart"
          "~/.emacs.d/site-lisp/nxml"
          "~/.emacs.d/site-lisp/ocaml"
          "~/.emacs.d/site-lisp/slime"
          "~/.emacs.d/site-lisp/slime/contrib"
          "~/.emacs.d/site-lisp/sml"
          "~/.emacs.d/site-lisp/org"
          "~/.emacs.d/site-lisp/own"
          "~/.emacs.d/site-lisp"
          "~/.emacs.d/"
          )) load-path))

(setq custom-file (expand-file-name "~/.emacs.d/emacs-custom.el"))

(require 'emacs-custom)
(require 'emacs-require)
(require 'emacs-vars)
(require 'emacs-automode)
(require 'emacs-jde)
(require 'emacs-functions)
(require 'emacs-hooks)
(require 'emacs-keys)
(require 'emacs-mac)
(require 'emacs-utf8)

;; This file contains user specific customization and should not be checked in to the shared repository
;; No error will be displayed if it can't be loaded
(load "emacs-user-init" t)
