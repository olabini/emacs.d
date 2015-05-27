;;Sets standard JDE variables
(eval-after-load "jde"
  '(jde-set-variables
    '(jde-project-name "unnamed or unknown project")
    (list 'jde-make-working-directory default-directory)
    '(jde-build-function (quote (jde-ant-build)))
    '(jde-enable-abbrev-mode t)
    '(jde-imenu-sort (quote asc))
    '(jde-ant-args "-emacs")
    '(jde-ant-send-buffer nil)
    (list 'jde-ola-source-directory default-directory)))

(provide 'emacs-jde)
