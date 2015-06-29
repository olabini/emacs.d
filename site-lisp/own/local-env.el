;;; local-env.el ---                                 -*- lexical-binding: t; -*-

;; Copyright (C) 2015  Ola Bini

;; Author: Ola Bini <ola@olabini.se>
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

(defvar local-env-shell-name "zsh" "shell to invoke to get current environment")

(defconst local-env-cache (make-hash-table :test 'equal))

(defun calculate-current-env ()
  (let* ((current-env (shell-command-to-string (concat local-env-shell-name " -lic '_direnv_hook && env'")))
         (each-env (split-string current-env "\n"))
         (env-split (mapcar (lambda (e) (split-string e "=")) each-env))
         (path (split-string (car (cdr (assoc "PATH" env-split))) ":")))
    (list each-env path)))

(defun get-or-cache-current-env (dir)
  (let ((res (gethash dir local-env-cache)))
    (if res
        res
        (let ((calc (calculate-current-env)))
          (puthash dir calc local-env-cache)
          calc))))

;; Sets process-environment and exec-path as file local variables for this file.
;; This function is suitable to add as a hook
(defun set-local-envs ()
  (let* ((res (get-or-cache-current-env default-directory))
         (pe (car res))
         (pa (car (cdr res))))
    (make-local-variable 'process-environment)
    (make-local-variable 'exec-path)
    (setq process-environment pe)
    (setq exec-path pa)))

(provide 'local-env)
;;; local-env.el ends here
