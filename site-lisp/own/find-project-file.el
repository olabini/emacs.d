(defvar proj-current-buffer (current-buffer)
  "*Internal PROJ variable that holds the current active buffer.")

(defun proj-handle-project-file ()
  ;(find-current-project-file)
  ; load it
  ; set a local buffer value to current root
  ; set this value to a buffer local value
  ; call switch to project buffer

  (add-hook 'post-command-hook
            'proj-buffer-activation 
            nil 
            t)
  )

(defun proj-switch-to-project-buffer ()
  ; check that we have a buffer local value for the project file
  ;if found
    ;check if current cache is older than 3 minutes or something
    ;if older, reload
    ;else 
    ; load cache
  )

(defun proj-buffer-activation ()
  "Detects when a user activates a buffer."
  (let ((curr-buff (current-buffer)))
    (unless (equal curr-buff proj-current-buffer)
      (setq proj-current-buffer curr-buff))))

;; Make sure to allow customizing of names of files to scan and so on

;(require 'filecache)
;(defun rails-add-proj-to-file-cache (dir)
;  "Adds all the ruby and rhtml files recursively in the current directory to the file-cache"
;  (interactive "DAdd directory: ")
;    (file-cache-clear-cache)
;    (file-cache-add-directory-recursively dir (regexp-opt (list ".rb" ".rhtml" ".xml" ".js" ".yml")))
;    (file-cache-delete-file-regexp "\\.svn"))

;
;      (eval-after-load
;      "filecache"
;       '(progn
; 	    (message "Loading file cache...")
; 	    (file-cache-add-directory-using-find "~/projects")
;	    (file-cache-add-directory-list load-path)
;	    (file-cache-add-directory "~/")
;	    (file-cache-add-file-list (list "~/foo/bar" "~/baz/bar"))
; 	   ))

;(defun file-cache-save-cache-to-file (file)
;  "Save contents of `file-cache-alist' to FILE.
;For later retrieval using `file-cache-read-cache-from-file'"
;  (interactive "FFile: ")
;  (with-temp-file (expand-file-name file)
;    (prin1 file-cache-alist (current-buffer))))

;(defun file-cache-read-cache-from-file (file)
;  "Clear `file-cache-alist' and read cache from FILE.
;The file cache can be saved to a file using
;`file-cache-save-cache-to-file'."
;  (interactive "fFile: ")
;  (file-cache-clear-cache)
;  (let ((buf (find-file-noselect file)))
;    (setq file-cache-alist (read buf))
;    (kill-buffer buf)))

;(defun file-cache-add-this-file ()
;  (and buffer-file-name
;       (file-exists-p buffer-file-name)
;       (file-cache-add-file buffer-file-name)))
;(add-hook 'kill-buffer-hook 'file-cache-add-this-file)



(add-hook 'find-file-hook 'proj-handle-project-file)
