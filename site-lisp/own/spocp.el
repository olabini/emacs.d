

(defgroup spocp nil
  "Spocp Options"
  :group 'tools
  :prefix "spocp-")

(defcustom spocp-server "localhost"
  "The server to do spocp questions to"
  :group 'spocp
  :type 'string)

(defcustom spocp-port 2235
  "The port of the server that spocp is listening on"
  :group 'spocp
  :type 'integer)

(defun refix (string)
  (setq index-first 0)
  (while (and (< index-first (length string)) (or (char-equal (aref string index-first) 41) (char-equal (aref string index-first) 40)))
    (setq index-first (1+ index-first))
  )
  (setq index-last index-first)
  (while (and (< index-last (length string)) (not (or (char-equal (aref string index-last) 41) (char-equal (aref string index-last) 40) )))
    (setq index-last (1+ index-last))
  )
  (if (< index-first (length string))
      (let ()
	(if (> index-last (length string)) (setq index-last (length string)))
	(setq middle-s (substring string index-first index-last))
	(concat (substring string 0 index-first) (number-to-string (length middle-s)) ":" middle-s (refix (substring string index-last)))
	)
    string
      )
  )

(defun add-canon (str)
  (setq all-strings (split-string str "[ \t]+"))
  (setq full-string "")
  (while all-strings
    (setq full-string (concat full-string (refix (car all-strings))))
    (setq all-strings (cdr all-strings)))
  full-string)


(defun spocp-to-canon (beginning end)
  "Turn spocp-rules to canonical form."
  (interactive "r")
  (setq all-lines (split-string (buffer-substring beginning end) "[\n\r\f\v]+"))
  (delete-region beginning end)
  (while all-lines
    (if (or (zerop (length (car all-lines))) (= (aref (car all-lines) 0) ?#))
	(let ()
	  (insert (car all-lines)))
      (let ()
	(insert (add-canon (car all-lines)))))
    (newline)
    (setq all-lines (cdr all-lines))
    )
  )

(defun find-next-canon (string indx)
  (if (< indx (length string))
      (let () (setq ix indx)
	   (while (and (< ix (length string)) (not (digitp (aref string ix))) )
	     (setq ix (1+ ix))
	     )
	   (if (< ix (length string)) ix -1))
    
    -1)
  )

(defun digitp (thec)
  (setq num1 (string-to-number (string thec)))
  (if (not (= num1 0))
      t
    (if (string= "0" (string thec)) t nil)
    )
  )

(defun remove-canon (string) 
  (setq foo-index 0)
  (setq outp "")
  (while (< foo-index (length string))
    (setq first-num (find-next-canon string foo-index))
    (if (= first-num -1)
	(let () (setq outp (concat outp (substring string foo-index))) (setq foo-index (length string)))
      (let ()
	(setq first-part (substring string first-num))
	(setq mojs1 (split-string first-part ":"))
	(setq mojsplit (car mojs1))
	(setq delta (+ first-num (length mojsplit) 1))
	(setq sec-part (substring string delta (+ delta (string-to-number mojsplit))))
	(setq bef-part (substring string foo-index first-num))
	(if (not (= (aref string (1- first-num)) 40))
	    (setq sec-part (concat " " sec-part)))
	(setq foo-index (+ delta (string-to-number mojsplit)))
	(if (and (not (zerop foo-index)) (= (aref string foo-index) 40))
	    (setq sec-part (concat sec-part " ")))
	(setq outp (concat outp bef-part sec-part))
	))
    )
  
  outp
  )


(defun canon-to-spocp (beginning end)
  "Turn canonical spocp-rules to simpel form."
  (interactive "r")
  (setq all-lines (split-string (buffer-substring beginning end) "[\n\r\f\v]+"))
  (delete-region beginning end)
  (while all-lines
    (if (or (zerop (length (car all-lines))) (= (aref (car all-lines) 0) ?#))
	(insert (car all-lines))
      (let ()
	(setq full-string (remove-canon (car all-lines)))
	(insert full-string)))
    (newline)
    (setq all-lines (cdr all-lines))
    )
  )
   

(defun canonp (str)
  (setq index-first 0)
  (while (char-equal (aref str index-first) 40)
    (setq index-first (1+ index-first))
  )
  (digitp (aref str index-first)))


(defun spocp-call ()
  "Calls spocp with the current line"
  (interactive)
  (setq curr-linex (thing-at-point 'line))
  (if (not (= (aref curr-linex (1- (length curr-linex))) 41))
      (setq curr-line (substring curr-linex 0 (1- (length curr-linex))))
      (setq curr-line curr-linex))

  (if (not (canonp curr-line)) (setq curr-line (add-canon curr-line))) 
  (setq curr-line (concat "5:QUERY" (number-to-string (length curr-line)) ":" curr-line))
  (setq curr-line (concat (number-to-string (length curr-line)) ":" curr-line))
  (setq buf1 (generate-new-buffer "*spocp-query*"))
  (setq proc (open-network-stream "spocp-quest1" buf1 spocp-server spocp-port))
  (process-send-string proc curr-line)
  (accept-process-output proc)
  (with-current-buffer buf1 (setq astr (buffer-string)))
  (kill-buffer buf1)
  (message (if (string-match "^[0-9]+:3:202" astr) "DENIED" (if (string-match "^[0-9]+:3:200" astr) "ALLOWED" (if (string-match "^[0-9]+:3:201" astr) "ALLOWED, BLOB" "ERROR"))))
 )

(global-set-key (kbd "C-c C-e C-t") 'canon-to-spocp)
(global-set-key (kbd "C-c C-e C-w") 'spocp-to-canon)
(global-set-key (kbd "C-c C-e C-e") 'spocp-call)


(provide 'spocp)

