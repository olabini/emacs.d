;;; org-mode-notes-exporter.el ---

;; Copyright (C) 2014  Ola Bini

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
(org-export-define-backend 'presentation-notes
  '(
    (headline . org-mode-notes-exporter-headline)
    (plain-text . org-mode-notes-exporter-text)
    (paragraph . org-mode-notes-exporter-paragraph)
    (section .  (lambda (section contents info) contents))
    (template .  (lambda (contents info) (concat "<notes>\n" contents "\n</notes>"))))
  :menu-entry
  '(?n "Export to Presentation Notes"
    ((?L "As notes buffer" org-export-as-notes))))

(defvar current-page 2)
(defvar current-note nil)

(defun set-next-pages (pages)
  (setq current-page (+ (car (cdr pages)) 1)))

(defun figure-current-pages (headline-num page-num list-pages)
  (let* ((min page-num)
         (max (+ min list-pages)))
    (list min max)))

(defun is-overlay (v)
  (plist-get (org-export-read-attribute :attr_beamer v) :overlay))

(defun is-notes (v)
  (member (org-element-property :BEAMER_ENV v) '("note" "noteNH")))

(defun count-pages-internally (v ov)
  (pcase (org-element-type v)
      (`headline
       (if (is-notes v)
           0
           (count-all-pages-internally (org-element-contents v) ov)))
      (`section
       (count-all-pages-internally (org-element-contents v) ov))
      (`item
       (+ 1 (count-all-pages-internally (org-element-contents v) ov)))
      (`plain-list
       (if (or ov (is-overlay v))
           (count-all-pages-internally (org-element-contents v) t)
           0))
      (else 0)))

(defun count-all-pages-internally (s ov)
  (cl-reduce '+ (mapcar (lambda (e) (count-pages-internally e ov)) s)))

(defun org-mode-notes-exporter-headline (headline contents info)
  (let* ((text (car (org-element-property :title headline)))
         (is-note (is-notes headline))
         (num (org-export-get-headline-number headline info))
         (frame-level (= (length num) 1)))
    (if is-note
        (progn (setq current-note contents) "")
        (if frame-level
            (let* ((list-pages (count-pages-internally headline nil))
                   (note current-note)
                   (pages (figure-current-pages (car num) current-page list-pages)))
              (message (format "stuff for %s: %d   pages: %s" text list-pages pages))
              (set-next-pages pages)
              (setq current-note nil)
              (if note
                  (concat "<note range=\"" (format "%s-%s" (car pages) (car (cdr pages))) "\">" note "</note>")
                  ""))
            ""))))

(defun org-mode-notes-exporter-text (text info)
  text)

(defun org-mode-notes-exporter-paragraph (paragraph contents info)
  contents)

(defun org-export-as-notes
  (&optional async subtreep visible-only body-only ext-plist)
  (interactive)
  (setq current-page 2
        current-note nil)
  (org-export-to-buffer 'presentation-notes "*Org Notes Export*"
    async subtreep visible-only body-only ext-plist (lambda () (nxml-mode))))

(defun org-export-to-notes
  (&optional async subtreep visible-only body-only ext-plist)
  (interactive)
  (setq current-page 2
        current-note nil)
  (let ((outfile (org-export-output-file-name "_notes.xml" subtreep)))
    (org-export-to-file 'presentation-notes outfile
      async subtreep visible-only body-only ext-plist)))

(defun org-export-to-presentation
  (&optional async subtreep visible-only body-only ext-plist)
  (interactive)
  (org-beamer-export-to-pdf async subtreep visible-only body-only ext-plist)
  (org-export-to-notes async subtreep visible-only body-only ext-plist))

(provide 'org-mode-notes-exporter)
;;; org-mode-notes-exporter.el ends here
