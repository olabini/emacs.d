;;; json-fix.el --- Call out to Python to fix up json

;; Copyright (C) 2012  Ola Bini

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

;;; Code:

(defun json-fix (start end)
  (interactive "r")
  (shell-command-on-region start end "python -m json.tool" t))

(provide 'json-fix)
;;; json-fix.el ends here
