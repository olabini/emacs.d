;;; counting.el --- 

;; Copyright (C) 2008  Ola Bini

;; Author: Ola Bini <ola.bini@gmail.com>
;; Keywords: 

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Commentary:

;; 

;;; Code:

(defun count-words ()
  (interactive)
  (save-excursion
    (let ((char-count 0)
          (word-count 0)
          (counted-word t))
      (goto-char (point-min))
      (while (not (eobp))
        (if (looking-at "[ \t\r\n]")
            (unless counted-word
              (incf word-count)
              (setf counted-word t))
            (incf char-count)
            (setf counted-word nil))
        (forward-char))
      (unless counted-word
        (incf word-count))
      (message "chars: %d, words: %d" char-count word-count))))


(provide 'counting)
;;; counting.el ends here
