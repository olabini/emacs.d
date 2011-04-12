
(defvar *fontize-default-font-old* "-apple-monaco-medium-r-normal--12-*-*-*-*-*-*-*")
(defvar *fontize-default-font* "-apple-bitstream vera sans mono-bold-r-normal--11-*-*-*-*-*-*-*")

(defvar *fontize-default-large-font* "-apple-monaco-medium-r-normal--32-*-*-*-*-*-*-*")

(defconst *fontize-available-fonts* (x-list-fonts "-*-*-*-*-*-*-*-*-*-*-*-*-*-*"))

(defvar *fontize-current-font-index* -1)

(defun fontize-current-font ()
  ""
  (interactive)
  (cdr (assoc 'font (frame-parameters))))

(defun fontize-available-fonts ()
  *fontize-available-fonts*)

(defun fontize-primitive-set-current-font (name) 
  (set-default-font name t)
  (set-frame-font name t))

(defun fontize-set-current-font (name)
  ""
  (interactive)
  (message "setting %s" name)
  (let ((old-font (fontize-current-font)))
    (condition-case nil
        (progn
          (fontize-primitive-set-current-font name)
          t)
      (error
       (fontize-primitive-set-current-font old-font)
       nil))))

(defun fontize-set-light-font ()
  ""
  (interactive)
  (let ((splitted (split-string (fontize-current-font) "-")))
    (fontize-set-current-font 
     (concat 
      (join (first-n splitted 3) "-")
      "-"
      "light"
      "-"
      (nth 4 splitted)
      "-"
      (nth 5 splitted)
      "-"
      (nth 6 splitted)
      "-"
      (nth 7 splitted)
      "-*-*-*-*-*-*-*"))))

(defun fontize-set-medium-font ()
  ""
  (interactive)
  (let ((splitted (split-string (fontize-current-font) "-")))
    (fontize-set-current-font 
     (concat 
      (join (first-n splitted 3) "-")
      "-"
      "medium"
      "-"
      (nth 4 splitted)
      "-"
      (nth 5 splitted)
      "-"
      (nth 6 splitted)
      "-"
      (nth 7 splitted)
      "-*-*-*-*-*-*-*"))))

(defun fontize-set-bold-font ()
  ""
  (interactive)
  (let ((splitted (split-string (fontize-current-font) "-")))
    (fontize-set-current-font 
     (concat 
      (join (first-n splitted 3) "-")
      "-"
      "bold"
      "-"
      (nth 4 splitted)
      "-"
      (nth 5 splitted)
      "-"
      (nth 6 splitted)
      "-"
      (nth 7 splitted)
      "-*-*-*-*-*-*-*"))))

(defun fontize-set-italic-font ()
  ""
  (interactive)
  (let ((splitted (split-string (fontize-current-font) "-")))
    (fontize-set-current-font 
     (concat 
      (join (first-n splitted 4) "-")
      "-"
      "i"
      "-"
      (nth 5 splitted)
      "-"
      (nth 6 splitted)
      "-"
      (nth 7 splitted)
      "-*-*-*-*-*-*-*"))))

(defun fontize-set-regular-font ()
  ""
  (interactive)
  (let ((splitted (split-string (fontize-current-font) "-")))
    (fontize-set-current-font 
     (concat 
      (join (first-n splitted 4) "-")
      "-"
      "r"
      "-"
      (nth 5 splitted)
      "-"
      (nth 6 splitted)
      "-"
      (nth 7 splitted)
      "-*-*-*-*-*-*-*"))))

(defun fontize-set-condensed-width ()
  ""
  (interactive)
  (let ((splitted (split-string (fontize-current-font) "-")))
    (fontize-set-current-font 
     (concat 
      (join (first-n splitted 5) "-")
      "-"
      "condensed"
      "-"
      (nth 6 splitted)
      "-"
      (nth 7 splitted)
      "-*-*-*-*-*-*-*"))))

(defun fontize-set-normal-width ()
  ""
  (interactive)
  (let ((splitted (split-string (fontize-current-font) "-")))
    (fontize-set-current-font 
     (concat 
      (join (first-n splitted 5) "-")
      "-"
      "normal"
      "-"
      (nth 6 splitted)
      "-"
      (nth 7 splitted)
      "-*-*-*-*-*-*-*"))))

(defun first-n (list n) 
  (case n
    (0 '())
    (1 (list (car list)))
    (otherwise
     (append (first-n list 1) (first-n (cdr list) (- n 1))))))

(defun join (list sep) 
  (let ((result "")
        (current-list list)
        (current-sep ""))
    (while (not (null current-list))
      (setf result (concat result current-sep (car current-list)))
      (setf current-list (cdr current-list))
      (setf current-sep sep))
    result))

(defun fontize-next-larger-font (font current-size)
  (concat 
   (join (first-n (split-string font "-") 7) "-")
    "-" (number-to-string (+ current-size 1)) "-*-*-*-*-*-*-*"))

(defun fontize-next-smaller-font (font current-size)
  (if (> current-size 0)
      (concat 
       (join (first-n (split-string font "-") 7) "-")
       "-" (number-to-string (- current-size 1)) "-*-*-*-*-*-*-*")))

(defun fontize-size (font)
  (string-to-number (nth 7 (split-string font "-"))))

(defun fontize-increase-font-size ()
  ""
  (interactive)
  (let ((font-size (fontize-size  (fontize-current-font))))
    (fontize-set-current-font (fontize-next-larger-font (fontize-current-font) font-size))))

(defun fontize-decrease-font-size ()
  ""
  (interactive)
  (let ((font-size (fontize-size (fontize-current-font))))
    (fontize-set-current-font (fontize-next-smaller-font (fontize-current-font) font-size))))

(defun fontize-next-font ()
  ""
  (interactive)
  (incf *fontize-current-font-index*)
  (if (>= *fontize-current-font-index* (length (fontize-available-fonts)))
      (setf *fontize-current-font-index* 0))
  (fontize-set-current-font (nth *fontize-current-font-index* (fontize-available-fonts))))

(defun fontize-previous-font ()
  ""
  (interactive)
  (decf *fontize-current-font-index*)
  (if (= *fontize-current-font-index* 0)
      (setf *fontize-current-font-index* (- (length (fontize-available-fonts)) 1)))
  (fontize-set-current-font (nth *fontize-current-font-index* (fontize-available-fonts))))

(defun fontize-set-default-font ()
  ""
  (interactive)
  (fontize-set-current-font *fontize-default-font*))

(defun fontize-set-large-font ()
  (interactive)
  (fontize-set-current-font *fontize-default-large-font*))

(fontize-set-default-font)

(provide 'fontize)
