(global-set-key [f7] 'cut-ctrlM)

(define-key global-map (kbd "<f10>") 'slime-selector)

(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)
(global-set-key "\C-x\C-x" 'execute-extended-command)
(global-set-key "\C-x\C-g" 'grep)
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)
(global-set-key "\C-z" 'undo)
(global-set-key "\M-g" 'goto-line)

(global-set-key (kbd "M-<up>") 'chop-move-up)
(global-set-key (kbd "M-<down>") 'chop-move-down)

(global-set-key (kbd "\C-xu") 'cvs-update-dir)
(global-set-key [f4] 'revert-buffer)    ; F4

(global-set-key [?\C-,] 'point-to-top)
(global-set-key [?\C-.] 'point-to-bottom)


(global-set-key [S-mouse-3] 'imenu)
(eval-after-load "jde"
  '(progn
    (define-key jde-mode-map [S-mouse-3] 'imenu)
    (define-key jde-mode-map [f8] 'jde-build)
    (define-key jde-mode-map "\C-c\C-g" 'jde-open-class-at-point)
    (define-key jde-mode-map "\C-c\C-h" 'jde-open-class-source)
    (define-key jde-mode-map "\C-ci" 'jde-import-find-and-import)
    (define-key jde-mode-map [S-tab] 'jde-complete-minibuf)
    (define-key jde-mode-map [?\C-/] 'comment-or-uncomment-region)
    (define-key jde-mode-map [tab] 'indent-or-complete)))

(global-set-key [C-tab] 'dabbrev-expand)
(global-set-key [C-S-tab] 'hippie-expand)

(global-set-key "\M-\S-q" 'unfill-paragraph)

(define-key text-mode-map [tab] 'indent-or-complete)

(global-set-key [?\C-+] 'fontize-increase-font-size)
(global-set-key [?\C--] 'fontize-decrease-font-size)
(global-set-key [?\M-+] 'fontize-next-font)
(global-set-key [?\M--] 'fontize-previous-font)

(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)

(global-set-key [f9] '(lambda () (interactive) (org-todo-list nil) (enlarge-window 2000)))

(global-set-key (kbd "C-c S")
                (lambda ()
                  (interactive)
                  (ispell-change-dictionary "se")
                  (flyspell-buffer)))

(global-set-key (kbd "C-c E")
                (lambda ()
                  (interactive)
                  (ispell-change-dictionary "en")
                  (flyspell-buffer)))

(global-set-key (kbd "C-x C-b") 'ibuffer)

(global-set-key (vector '(shift super left))  'windmove-left)
(global-set-key (vector '(shift super right)) 'windmove-right)
(global-set-key (vector '(shift super up))    'windmove-up)
(global-set-key (vector '(shift super down))  'windmove-down)

(provide 'emacs-keys)
