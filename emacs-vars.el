(setq
 tls-program                        '("openssl s_client -connect %h:%p -no_ssl2 -ign_eof"
;;                                      "gnutls-cli --priority secure256 -p %p %h"
)
 inhibit-startup-message             t
 line-number-mode                    t
 column-number-mode                  t
 make-backup-files                   nil
 message-send-mail-function          'smtpmail-send-it
 smtpmail-default-smtp-server        "smtp.gmail.com"
 visible-bell                        t
 track-eol                           t
 org-log-done                        t
 transient-mark-mode                 t
 require-final-newline               t
 next-line-add-newlines              nil
 display-time-24hr-format            t
 interpreter-mode-alist              (append '(("ruby" . ruby-mode)) interpreter-mode-alist)
 Info-default-directory-list         (append Info-default-directory-list '("~/.emacs.d/info"))
 lisp-indent-function                'common-lisp-indent-function
 common-lisp-hyperspec-root          (concat "file://" (expand-file-name "~/.emacs.d/HyperSpec"))
 common-lisp-hyperspec-symbol-table  (concat common-lisp-hyperspec-root "/Data/Map_Sym.txt")
 slime-startup-animation             nil
 hippie-expand-try-functions-listccc '(try-complete-abbrev try-complete-file-name try-expand-dabbrev try-expand-list try-expand-line)
 rails-use-mongrel                   t
 cssm-indent-function                'cssm-c-style-indenter
 diff-switches                       "-u"
 semanticdb-default-save-directory   (expand-file-name "~/tmp/semantic.cache")
 tempo-show-completion-buffer        t
 tempo-interactive                   t
 font-lock-maximum-decoration        t
 rails-tags-dirs                     '("app" "lib" "test" "db" "vendor")
 efc-query-options-function          (lambda (options prompt title)
                                       (smenu-choose options (or prompt "Choose:")))
 ispell-program-name                 "aspell"
 ispell-extra-args                   '("--sug-mode=ultra")
 ibuffer-expert                      t
 ibuffer-show-empty-filter-groups    nil
 inferior-lisp-program               "sbcl"
 interprogram-paste-function 'x-cut-buffer-or-selection-value
)

(auto-compression-mode t)
(auto-insert-mode t)
(global-font-lock-mode t)
(show-paren-mode t)
(display-time)
(column-number-mode 1)
(pending-delete-mode 1)
(setq-default ispell-program-name "aspell")
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)

(setenv "TERM" "dumb")


(setq ibuffer-saved-filter-groups
      (quote (("default"
               ("Ioke"
                (filename . "workspace/ioke"))
               ("Seph"
                (filename . "workspace/seph"))
               ("JRuby"
                (filename . "workspace/jruby"))
               ("Annai"
                (filename . "workspace/tw/annai"))
               ("Programming"
                (or
                 (mode . ioke-mode)
                 (mode . ruby-mode)
                 (mode . python-mode)
                 (mode . emacs-lisp-mode)
                 (mode . jde-mode)
                 (name . "^\\*.c$")
                 (name . "^\\*.h$")
                 (name . "^\\*SConstruct$")
                 ))
               ("IRC"   (mode . erc-mode))
               ("Book"   (name . ".pml"))
               ("Org"
                (or
                 (mode . org-mode)
                 (name . "^\\*Org Agenda\\*$")))
               ("Emacs"
                (or
                 (name . "^\\*scratch\\*$")
                 (name . "^\\*Messages\\*$")))
               ))))


(put 'upcase-region 'disabled nil)

(provide 'emacs-vars)
