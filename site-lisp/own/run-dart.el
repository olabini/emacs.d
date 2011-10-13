;;; run-dart.el --- 

;; Copyright (C) 2011  Ola Bini

;; Author: Ola Bini <ola.bini@gmail.com>
;; Keywords: 

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; 

;;; Code:

(require 'dart-mode)

(defvar dart-program-name "dart"
  "*Program invoked by the run-dart command")

(define-key dart-mode-map "\C-c\C-t" 'dart-eval-buffer)

(defun with-region-in-temp-file (start end cmd)
   "Dumps the content of the current buffer in the region between start and end to a temporary file, 
executes the cmd giving it the filename and then removes the temporary file"
   (let ((file-name (make-temp-file "dart_region" nil ".dart")))
     (unwind-protect 
          (progn
            (write-region start end file-name nil 42)
            (funcall cmd file-name))
       (delete-file file-name))))

(defun dart-eval-file (file)
  (shell-command (concat dart-program-name " " file)))

(defun dart-eval-buffer () 
  "Evaluate the buffer or current region with Dart."
  (interactive)
  (let (start end)
    (if (and transient-mark-mode mark-active)
        (setq start (region-beginning) end (region-end))
        (setq start (point-min) end (point-max)))
    (with-region-in-temp-file start end 'dart-eval-file)))

(provide 'run-dart)
;;; run-dart.el ends here
