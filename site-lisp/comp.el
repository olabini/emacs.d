
(require 'ido)
(ido-mode t)

(defun ido-find-file-in-tag-files ()
  (interactive)
  (save-excursion
    (let ((enable-recursive-minibufferes t))
      (visit-tags-table-buffer))
    (ido-completing-read "Project file: "
                         (tags-table-files)
                         nil t)))

(add-hook 'ido-setup-hook 
          (lambda () 
            (define-key ido-completion-map "\C-w" 'ido-delete-backward-updir)))

(provide 'comp)
