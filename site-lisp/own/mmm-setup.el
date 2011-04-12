(require 'mmm-mode)
(load-library '"mmm-auto")
(setq mmm-global-mode 'maybe)
(setq mmm-submode-decoration-level 2)
(set-face-background 'mmm-output-submode-face  "LemonChiffon2")
(set-face-background 'mmm-code-submode-face    "LavenderBlush2")
(set-face-background 'mmm-comment-submode-face "tan1")
(set-face-foreground 'mmm-output-submode-face "Black")
(set-face-foreground 'mmm-code-submode-face "Black")
(set-face-foreground 'mmm-comment-submode-face "Red")

;;(global-unset-key "\C-\M-o")
;;(global-set-key "\C-\M-o" 'mmm-parse-buffer)

(mmm-add-group 'jsp
               `((html-css-attribute
                  :submode css-mode
                  :face mmm-declaration-submode-face
                  :front "style=\""
                  :back "\"")
                 (erb-code
                  :submode ruby-mode
                  :match-face (("<%#" . mmm-comment-submode-face)
                               ("<%=" . mmm-output-submode-face)
                               ("<%"  . mmm-code-submode-face))
                  :front "<%[#=]?" 
                  :back "%>" 
                  :insert ((?% erb-code       nil @ "<%"  @ " " _ " " @ "%>" @)
                           (?# erb-comment    nil @ "<%#" @ " " _ " " @ "%>" @)
                           (?= erb-expression nil @ "<%=" @ " " _ " " @ "%>" @))
                  )
                 (embedded-css
                  :submode css-mode
                  :face mmm-declaration-submode-face
                  :front "")
                 (jsp-code
                  :submode java-mode
                  :match-face (("<%!" . mmm-declaration-submode-face)
                               ("<%=" . mmm-output-submode-face)
                               ("<%[^-]"  . mmm-code-submode-face))
                  :front "<%[!=]?"
                  :back "%>"
                  :insert ((?% jsp-code nil @ "<%" @ " " _ " " @ "%>" @)
                           (?! jsp-declaration nil @ "<%!" @ " " _ " " @ "%>" @)
                           (?= jsp-expression nil @ "<%=" @ " " _ " " @ "%>" @))
                  )
                 (jsp-expression
                  :submode java-mode
                  :front "<jsp:expression>"
                  :back "</jsp:expression>"
                  )
                 (jsp-scriptlet
                  :submode java-mode
                  :front "<jsp:scriptlet>"
                  :back "</jsp:scriptlet>"
                  )
                 (jsp-comment
                  :submode text-mode
                  :front "<%--"
                  :back "--%>"
                  )
                 (jsp-directive
                  :submode text-mode
                  :face mmm-special-submode-face
                  :front "<%@"
                  :back "%>"
                  :insert ((?@ jsp-directive nil @ "<%@" @ " " _ " " @ "%>" @))
                  )))

;; set up an mmm group for fancy html editing
(setq mmm-mode-ext-classes-alist nil)
(add-to-list 'mmm-mode-ext-classes-alist '(nil "\\.jsp\\'" jsp-code))
(add-to-list 'mmm-mode-ext-classes-alist '(nil "\\.jsp\\'" jsp-comment))
(add-to-list 'mmm-mode-ext-classes-alist '(nil "\\.jsp\\'" jsp-directive))
(add-to-list 'mmm-mode-ext-classes-alist '(nil "\\.jspf\\'" jsp-code))
(add-to-list 'mmm-mode-ext-classes-alist '(nil "\\.jspf\\'" jsp-comment))
(add-to-list 'mmm-mode-ext-classes-alist '(nil "\\.jspf\\'" jsp-directive))
;; torstein added
(add-to-list 'mmm-mode-ext-classes-alist '(nil "\\.jsp\\'" embedded-css))
(add-to-list 'mmm-mode-ext-classes-alist '(nil "\\.jsp\\'" html-css-attribute))
(add-to-list 'mmm-mode-ext-classes-alist '(nil "\\.jspf\\'" embedded-css))
(add-to-list 'mmm-mode-ext-classes-alist '(nil "\\.jspf\\'" html-css-attribute))

(add-to-list 'mmm-mode-ext-classes-alist '(nil "\\.rhtml\\'" erb-code))
;(add-to-list 'mmm-mode-ext-classes-alist '(nil "\\.rhtml\\'" erb-comment))
;(add-to-list 'mmm-mode-ext-classes-alist '(nil "\\.rhtml\\'" erb-expression))
;; /end torstein added
;; (add-to-list 'auto-mode-alist '("\\.jsp\\'" . mmm-mode))
;; (add-to-list 'auto-mode-alist '("\\.jspf\\'" . mmm-mode))

;; What features should be turned on in this html-mode?
(add-to-list 'mmm-mode-ext-classes-alist '(html-mode nil html-js))
(add-to-list 'mmm-mode-ext-classes-alist '(html-mode nil embedded-css))
;; (add-to-list 'mmm-mode-ext-classes-alist '(html-mode nil fancy-html))

;; What files to invoke the new html-mode for?
;(add-to-list 'auto-mode-alist '("\\.inc\\'" . sgml-mode))
;(add-to-list 'auto-mode-alist '("\\.phtml\\'" . sgml-mode))
;(add-to-list 'auto-mode-alist '("\\.php[34]?\\'" . sgml-mode))
;(add-to-list 'auto-mode-alist '("\\.[sj]?html?\\'" . sgml-mode))
;(add-to-list 'auto-mode-alist '("\\.jsp\\'" . sgml-mode))
;(add-to-list 'auto-mode-alist '("\\.jspf\\'" . sgml-mode))
;(add-to-list 'auto-mode-alist '("\\.rhtml\\'" . sgml-mode))

(provide 'mmm-setup)
