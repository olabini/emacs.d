
(defun smenu-position-of-menu ()
  (let ((x (car (posn-x-y (posn-at-point))))
        (y (cdr (posn-x-y (posn-at-point))))
        (nexty (save-excursion
             (forward-line 1)
             (cdr (posn-x-y (posn-at-point))))))
    (list x (+ y (/ (* (- nexty y) 15) 10)))))

(defun smenu-menu-separator ()
  (unless nil 'menu (list "--" "--")))


(defun smenu-menu-position ()
  (let ((pos (smenu-position-of-menu)))
    (list pos (get-buffer-window (current-buffer)))))

(defun simple-menu (menu)
  "Show a menu."
  (message "%s" (smenu-prepare-menu menu))
  (let ((result
         (x-popup-menu (smenu-menu-position)
                       (smenu-prepare-menu menu))))
    (if (listp result)
        (first result)
        result)))

(defvar smenu-menu-letters-list
  (let ((res '()))
    (loop for i from (string-to-char "1") upto (string-to-char "9")
       do (add-to-list 'res (char-to-string i) t))
    (loop for i from (string-to-char "a") upto (string-to-char "z")
       do (add-to-list 'res (char-to-string i) t))
    res)
  "List contains 0-9a-z letter")

(defun smenu-prepare-menu (menu)
  "Append a prefix to each label of menu-item from MENU."
  (let ((title (car menu))
        (menu (cdr menu))
        (result '())
        (result-line '())
        (letter 0))
    (dolist (line menu)
      (setq result-line '())
      (dolist (it line)
        (typecase it
          (cons
           (if (and (string= (car (smenu-menu-separator)) (car it))
                    (string= (cadr (smenu-menu-separator)) (cadr it)))
               (add-to-list 'result-line it t)
             (progn
               (add-to-list 'result-line (cons
                                          (format "%s) %s"
                                                  (nth letter smenu-menu-letters-list)
                                                  (car it))
                                          (cdr it))
                            t)
               (setq letter (+ 1 letter)))))
          (t
           (add-to-list 'result-line it t))))
      (add-to-list 'result result-line t))
    (cons title result)))


(mapcar (lambda (val)
          (cons val val)) '("A" "B" "C"))

(defun smenu-choose (options title)
  (simple-menu
   (list title (cons "Pane1" 
                     (mapcar (lambda (val)
                               (cons val val)) options)))))
                     

;; (smenu-choose '("java.util.List" "java.swing.List" "foo.bar.List") "imports")
;; (simple-menu 
;; '("Title" ("Pane1" ("line" . value) ("line2" . value2))))

(provide 'simple-menu)
