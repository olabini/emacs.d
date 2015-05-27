(defun cut-ctrlM ()
  "Cut all visible ^M."
  (interactive)
  (save-excursion
    (goto-char (point-min))
    (while (search-forward "\r" nil t)
      (replace-match "" nil t))
    (not-modified)))

(defun cvs-update-dir ()
  "Customized cvs-update-other-window that doesn't prompt for a directory."
  (interactive)
  (if (and (boundp 'cvs-update-directory) cvs-update-directory)
      (cvs-update cvs-update-directory '("-P" "-d"))
      (cvs-update (file-name-directory (buffer-file-name)) '("-P" "-d"))))

(defun point-to-top ()
  "Put point on top line of window."
  (interactive)
  (move-to-window-line 0))

(defun point-to-bottom ()
  "Put point at beginning of last visible line."
  (interactive)
  (move-to-window-line -1))

(defun indent-or-complete ()
  "Complete if point is at end of line, and indent line."
  (interactive)
  (if (or (looking-at "\\>") (and (looking-at "$") (not (looking-back "^\\s-*"))))
      (if (not (tempo-complete-tag nil))
          (hippie-expand nil))
      (indent-for-tab-command)))

(defalias 'qrr 'query-replace-regexp)

(defadvice save-buffers-kill-emacs (before kill-processes (arg) activate)
  (mapc 'process-kill-without-query (process-list)))

(defun try-complete-abbrev (old)
  (if (expand-abbrev) t nil))

(provide 'emacs-functions)
