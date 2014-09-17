(defvar im-notifications-line-string "")

(defvar im-notifications-updates '())

(defface im-notifications-mode-line-normal-update '((t ( :background "#232323" :foreground "#8FBC8F" :weight normal :underline nil)))
  "IM notifications face used for a normal updated entry")

(defface im-notifications-mode-line-urgent-update '((t ( :background "#232323" :foreground "#00ff00" :weight bold :underline nil)))
  "IM notifications face used for a urgent updated entry")

(put 'im-notifications-line-string 'risky-local-variable t)

(define-minor-mode im-notifications-line-mode
    "Provides extra notifications for custom IM solutions in Emacs"
    :global t
    (if im-notifications-line-mode
        (add-to-list 'mode-line-modes '(t im-notifications-line-string))))

(defun with-face (string face)
  (let ((str (copy-sequence string)))
    (put-text-property 0 (length str) 'face face str)
    str))

(defun delete-from-list (nm element)
  (set nm (delete element (symbol-value nm))))

(defun im-notifications-ensure-added-normal-update (val)
  (if (not (member (list 'urgent val) im-notifications-updates))
      (add-to-list 'im-notifications-updates (list 'normal val)))
  (im-notifications-updated))

(defun im-notifications-ensure-added-urgent-update (val)
  (delete-from-list 'im-notifications-updates (list 'normal val))
  (add-to-list 'im-notifications-updates (list 'urgent val))
  (im-notifications-updated))

(defun im-notifications-ensure-clear-update (val)
  (delete-from-list 'im-notifications-updates (list 'normal val))
  (delete-from-list 'im-notifications-updates (list 'urgent val))
  (im-notifications-updated))

(defun im-notification-to-string (e)
  (let* ((tp (car e))
         (vl (car (cdr e)))
         (face (if (eq tp 'normal) 'im-notifications-mode-line-normal-update 'im-notifications-mode-line-urgent-update)))
    (with-face vl face)))

(defun im-notifications-join (list sep)
  (let ((result "")
        (current-list list)
        (current-sep ""))
    (while (not (null current-list))
      (setf result (concat result current-sep (car current-list)))
      (setf current-list (cdr current-list))
      (setf current-sep sep))
    result))

(defun im-notifications-updated ()
  (setq im-notifications-line-string
        (if (eq (length im-notifications-updates) 0)
            ""
            (concat " {" (im-notifications-join (mapcar 'im-notification-to-string im-notifications-updates) " ") "} "))))

;; (im-notifications-ensure-added-normal-update "foxy")
;; (im-notifications-ensure-added-urgent-update "foxy")
;; (im-notifications-ensure-added-urgent-update "somewhere")
;; (im-notifications-ensure-clear-update "foxy")

(provide 'im-notifications)
