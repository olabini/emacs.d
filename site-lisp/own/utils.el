
(defun syntax-highlight-region (start end)
  "Adds <font> tags into the region that correspond to the
current color of the text.  Throws the result into a temp
buffer, so you don't dork the original."
  (interactive "r")
  (let ((text (buffer-substring start end)))
    (with-output-to-temp-buffer "*html-syntax*"
      (set-buffer standard-output)
      (insert "<pre>")
      (save-excursion (insert text))
      (save-excursion (syntax-html-escape-text))
      (while (not (eobp))
	(let ((plist (text-properties-at (point)))
	      (next-change
	       (or (next-single-property-change
		    (point) 'face (current-buffer))
		   (point-max))))
	  (syntax-add-font-tags (point) next-change)
	  (goto-char next-change)))
      (insert "\n</pre>"))))

(defun syntax-add-font-tags (start end)
  "Puts <font> tag around text between START and END."
  (let (face color rgb name r g b)
    (and
     (setq face (get-text-property start 'face))
     (or (if (listp face) (setq face (car face))) t)
     (setq color (face-attribute face :foreground))
     (char-or-string-p color)
     (setq rgb (mapcar (lambda (c) (lsh c -8)) (color-values (downcase color))))
     (destructuring-bind (r g b) rgb
       (let ((text (buffer-substring-no-properties start end)))
         (delete-region start end)
         (insert (format "<font color=#%.2x%.2x%.2x>" r g b))
         (insert text)
         (insert "</font>"))))))

(defun replace-string-keep-properties (str rep)
  (save-excursion
    (let ((slen (length str))
          (rlen (length rep)))
      (while (search-forward str nil t)
        (let ((props (text-properties-at (point)))
              (current-place (- (point) slen)))
          (replace-match rep nil t)
          (set-text-properties current-place (+ current-place rlen) props))))))

(defun syntax-html-escape-text ()
  "HTML-escapes all the text in the current buffer,
starting at (point)."
  (replace-string-keep-properties "<" "&lt;")
  (replace-string-keep-properties ">" "&gt;"))

(defun syntax-highlight-region-span (start end)
  "Adds <font> tags into the region that correspond to the
current color of the text.  Throws the result into a temp
buffer, so you don't dork the original."
  (interactive "r")
  (let ((text (buffer-substring start end)))
    (with-output-to-temp-buffer "*html-syntax*"
      (set-buffer standard-output)
      (save-excursion (insert text))
      (save-excursion (syntax-html-escape-text))
      (while (not (eobp))
        (let ((plist (text-properties-at (point)))
              (next-change
               (or (next-single-property-change
                    (point) 'face (current-buffer))
                   (point-max))))
          (syntax-add-span-tags (point) next-change)
          (goto-char next-change)))
      (goto-char 0))))

(defun syntax-add-span-tags (start end)
  "Puts <font> tag around text between START and END."
  (let (face color rgb name r g b)
    (and
     (setq face (get-text-property start 'face))
     (or (if (listp face) (setq face (car face))) t)
     (setq color (face-attribute face :foreground))
     (char-or-string-p color)
     (setq rgb (mapcar (lambda (c) (lsh c -8)) (color-values (downcase color))))
     (destructuring-bind (r g b &optional ignored) rgb
       (let ((text (buffer-substring-no-properties start end))
             (col (transform-color (format "#%.2x%.2x%.2x" r g b))))
         (delete-region start end)
         (insert (format "<span style=\"color: %s;\">" col))
         (insert text)
         (insert "</span>"))))))

(defun transform-color (col) 
  (if (equal col "#ff7f24")
      "#a52a2a"
      (if (equal col "#eedd82")
          "#449900"
          (if (equal col "#7fffd4")
              "#7777d4"
              (if (equal col "#00ffff")
                  "#006666"
                  (if (equal col "#ffa07a")
                      "#0050a0"
                      (if (equal col "#98fb98")
                          "#606060"
                          (if (equal col "#b0c4de")
                              "#32465A"
                              (if (equal col "#87cefa")
                                  "#ff0000"
                                  col)))))))))

(defun unfill-paragraph (arg)
  "Pull this whole paragraph up onto one line."
  (interactive "*p")
  (let ((fill-column 10000))
    (fill-paragraph arg)))

(provide 'utils)
