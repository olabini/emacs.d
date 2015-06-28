(add-hook 'ruby-mode-hook
          '(lambda ()
            (ruby-electric-mode t)
            (define-key ruby-mode-map (kbd "<f1>") 'ri)
            (define-key ruby-mode-map "\M-\C-i" 'ri-ruby-complete-symbol)
            (define-key ruby-mode-map (kbd "<f5>") 'ri-ruby-show-args)
            (define-key ruby-mode-map (kbd "<f8>") 'ruby-test-function)
            (define-key ruby-mode-map "\C-c\C-d" 'ruby-run-ruby)
            (define-key ruby-mode-map [?\C-/] 'comment-or-uncomment-region)
            (tempo-use-tag-list 'ruby-tempo-tags)
            ) t)

(add-hook 'ruby-mode-hook
          '(lambda ()
            (if (string-match "_spec\\.rb$" (buffer-name))
                (progn
                  (rspec-mode t)
                  (define-key rspec-mode-map (kbd "<f1>") 'ri)
                  (define-key rspec-mode-map "\M-\C-i" 'ri-ruby-complete-symbol)
                  (define-key rspec-mode-map (kbd "<f5>") 'ri-ruby-show-args)
                  (define-key rspec-mode-map [?\C-/] 'comment-or-uncomment-region)))))

(defun ruby-find-tags-file (dir)
  (let* ((directory-sep-char ?/)
         (file (find "TAGS"
                     (directory-files dir) :test 'string=)))
    (if file
        (expand-file-name file dir)
        (let ((expanded (expand-file-name ".." dir)))
          (if (not (string= expanded "/"))
              (ruby-find-tags-file (expand-file-name ".." dir)))))))

(add-hook 'io-mode-hook
          '(lambda ()
            (tempo-use-tag-list 'io-tempo-tags)
            ) t)

(add-hook 'jde-mode-hook
          '(lambda ()
            (tempo-use-tag-list 'java-tempo-tags)
            ) t)

(mapc (lambda (h)
        (add-hook h '(lambda ()
                      (font-lock-mode t)) t)
        (add-hook h '(lambda ()
                      (local-set-key [tab] 'indent-or-complete)
                      (local-set-key [?\C-+] 'fontize-increase-font-size)
                      (local-set-key [?\C--] 'fontize-decrease-font-size)
                      (local-set-key [?\M-+] 'fontize-next-font)
                      (local-set-key [?\M--] 'fontize-previous-font)
                      ) t))
      '(php-mode-user-hook c-mode-hook emacs-lisp-mode-hook lisp-mode-hook html-mode-hook awk-mode-hook sgml-mode-hook
        perl-mode-hook shell-script-mode-hook nxml-mode-hook ruby-mode-hook sql-hook jde-mode-hook io-mode-hook))


(add-hook 'org-mode-hook (lambda ()
                           (local-set-key [?\C-+] 'fontize-increase-font-size)
                           (local-set-key [?\C--] 'fontize-decrease-font-size)
                           (local-set-key [?\M-+] 'fontize-next-font)
                           (local-set-key [?\M--] 'fontize-previous-font)))

(add-hook 'org-mode-hook (lambda ()
                           (auto-fill-mode 1)))

(add-hook 'comint-output-filter-functions 'comint-strip-ctrl-m)
(add-hook 'comint-output-filter-functions 'shell-strip-ctrl-m nil t)
(add-hook 'comint-output-filter-functions 'comint-watch-for-password-prompt nil t)

(add-hook 'lisp-mode-hook (lambda () (slime-mode t)))

(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

(add-hook 'c-mode-common-hook
          (function (lambda ()
            (setq c-basic-offset 4)
            (local-set-key [tab] 'indent-or-complete)
            (local-set-key [?\C-c tab] 'indent-region)
            )))

(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)

(add-hook 'ibuffer-mode-hook
          (lambda ()
            (ibuffer-auto-mode 1)
            (ibuffer-switch-to-saved-filter-groups "default")))

(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

(require 'ansi-color)
(defun colorize-compilation-buffer ()
  (interactive)
  (toggle-read-only nil)
  (ansi-color-apply-on-region (point-min) (point-max))
)
(add-hook 'compilation-filter-hook 'colorize-compilation-buffer)

(defun colorize-rails-compilation-buffer (start end len)
  (ansi-color-apply-on-region (point-min) (point-max))
)

(defun setup-ansi-color-for-rails-buffer ()
  (add-hook 'after-change-functions 'colorize-rails-compilation-buffer)
)
(add-hook 'rails-test:compilation-mode-hook 'setup-ansi-color-for-rails-buffer)

(add-hook 'dart-mode-hook
          (lambda ()
            (require 'run-dart)))

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(add-hook 'ido-setup-hook
          (lambda ()
            (define-key ido-completion-map "\C-w" 'ido-delete-backward-updir)))

(add-hook 'org-mode-hook
          (lambda ()
            (require 'org-custom)
            (require 'org-mode-notes-exporter)))

(eval-after-load "io-mode"
  '(progn
    (require 'io-templates)
    ))

(eval-after-load "jde"
  '(progn
    (require 'jde-ola)
    (require 'java-templates)
    ))

(eval-after-load "ruby-mode"
  '(progn
    (require 'ruby-electric)
    (require 'custom-ruby)
    (require 'ruby-templates)
    (require 'rvm)
    (rvm-use-default)
    ))

(add-hook 'before-save-hook 'gofmt-before-save)

(add-hook 'go-mode-hook 'set-local-envs)

(provide 'emacs-hooks)
