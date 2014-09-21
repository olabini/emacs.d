
(require 'ox-beamer)

(defun org-beamer--frame-level (headline info)
  "Return frame level in subtree containing HEADLINE.
INFO is a plist used as a communication channel."
  (or
   ;; 1. Look for "frame" environment in parents, starting from the
   ;;    farthest.
   (catch 'exit
     (mapc (lambda (parent)
	     (let ((env (org-element-property :BEAMER_ENV parent)))
	       (when (and env (member-ignore-case env '("frame" "fullframe" "takahashi")))
		 (throw 'exit (org-export-get-relative-level parent info)))))
	   (nreverse (org-export-get-genealogy headline)))
     nil)
   ;; 2. Look for "frame" environment in HEADLINE.
   (let ((env (org-element-property :BEAMER_ENV headline)))
     (and env (member-ignore-case env '("frame" "fullframe" "takahashi"))
	  (org-export-get-relative-level headline info)))
   ;; 3. Look for "frame" environment in sub-tree.
   (org-element-map headline 'headline
     (lambda (hl)
       (let ((env (org-element-property :BEAMER_ENV hl)))
	 (when (and env (member-ignore-case env '("frame" "fullframe" "takahashi")))
	   (org-export-get-relative-level hl info))))
     info 'first-match)
   ;; 4. No "frame" environment in tree: use default value.
   (plist-get info :headline-levels)))


(defun org-beamer--format-block (headline contents info)
  "Format HEADLINE as a block.
CONTENTS holds the contents of the headline.  INFO is a plist
used as a communication channel."
  (let* ((column-width (org-element-property :BEAMER_COL headline))
	 ;; ENVIRONMENT defaults to "block" if none is specified and
	 ;; there is no column specification.  If there is a column
	 ;; specified but still no explicit environment, ENVIRONMENT
	 ;; is "column".
	 (environment (let ((env (org-element-property :BEAMER_ENV headline)))
			(cond
			 ;; "block" is the fallback environment.
			 ((and (not env) (not column-width)) "block")
			 ;; "column" only.
			 ((not env) "column")
			 ;; Use specified environment.
			 (t env))))
	 (raw-title (org-element-property :raw-value headline))
	 (env-format
	  (cond ((member environment '("column" "columns")) nil)
		((assoc environment
			(append org-beamer-environments-extra
				org-beamer-environments-default)))
		(t (user-error "Wrong block type at a headline named \"%s\""
			       raw-title))))
	 (title (org-export-data (org-element-property :title headline) info))
	 (options (let ((options (org-element-property :BEAMER_OPT headline)))
		    (if (not options) ""
		      (org-beamer--normalize-argument options 'option))))
	 ;; Start a "columns" environment when explicitly requested or
	 ;; when there is no previous headline or the previous
	 ;; headline do not have a BEAMER_column property.
	 (parent-env (org-element-property
		      :BEAMER_ENV (org-export-get-parent-headline headline)))
	 (start-columns-p
	  (or (equal environment "columns")
	      (and column-width
		   (not (and parent-env
			     (equal (downcase parent-env) "columns")))
		   (or (org-export-first-sibling-p headline info)
		       (not (org-element-property
			     :BEAMER_COL
			     (org-export-get-previous-element
			      headline info)))))))
	 ;; End the "columns" environment when explicitly requested or
	 ;; when there is no next headline or the next headline do not
	 ;; have a BEAMER_column property.
	 (end-columns-p
	  (or (equal environment "columns")
	      (and column-width
		   (not (and parent-env
			     (equal (downcase parent-env) "columns")))
		   (or (org-export-last-sibling-p headline info)
		       (not (org-element-property
			     :BEAMER_COL
			     (org-export-get-next-element headline info))))))))
    (concat
     (when start-columns-p
       ;; Column can accept options only when the environment is
       ;; explicitly defined.
       (if (not (equal environment "columns")) "\\begin{columns}\n"
	 (format "\\begin{columns}%s\n" options)))
     (when column-width
       (format "\\begin{column}%s{%s}\n"
	       ;; One can specify placement for column only when
	       ;; HEADLINE stands for a column on its own.
	       (if (equal environment "column") options "")
	       (format "%s\\textwidth" column-width)))
     ;; Block's opening string.
     (when (nth 2 env-format)
       (concat
	(org-fill-template
	 (nth 2 env-format)
	 (nconc
	  ;; If BEAMER_act property has its value enclosed in square
	  ;; brackets, it is a default overlay specification and
	  ;; overlay specification is empty.  Otherwise, it is an
	  ;; overlay specification and the default one is nil.
	  (let ((action (org-element-property :BEAMER_ACT headline)))
	    (cond
	     ((not action) (list (cons "a" "") (cons "A" "")))
	     ((string-match "\\`\\[.*\\]\\'" action)
	      (list
	       (cons "A" (org-beamer--normalize-argument action 'defaction))
	       (cons "a" "")))
	     (t
	      (list (cons "a" (org-beamer--normalize-argument action 'action))
		    (cons "A" "")))))
	  (list (cons "o" options)
		(cons "h" title)
		(cons "L" (org-export-data (org-element-property :title (org-element-property :parent headline)) info))
		(cons "r" raw-title)
		(cons "H" (if (equal raw-title "") ""
			    (format "{%s}" raw-title)))
		(cons "U" (if (equal raw-title "") ""
			    (format "[%s]" raw-title))))))
	"\n"))
     contents
     ;; Block's closing string, if any.
     (and (nth 3 env-format) (concat (nth 3 env-format) "\n"))
     (when column-width "\\end{column}\n")
     (when end-columns-p "\\end{columns}"))))




(defun org-beamer--format-frame (headline contents info)
  "Format HEADLINE as a frame.
CONTENTS holds the contents of the headline.  INFO is a plist
used as a communication channel."
  (let ((fragilep
	 ;; FRAGILEP is non-nil when HEADLINE contains an element
	 ;; among `org-beamer-verbatim-elements'.
	 (org-element-map headline org-beamer-verbatim-elements 'identity
			  info 'first-match)))
    (concat "\\begin{frame}"
	    ;; Overlay specification, if any. When surrounded by
	    ;; square brackets, consider it as a default
	    ;; specification.
	    (let ((action (org-element-property :BEAMER_ACT headline)))
	      (cond
	       ((not action) "")
	       ((string-match "\\`\\[.*\\]\\'" action )
		(org-beamer--normalize-argument action 'defaction))
	       (t (org-beamer--normalize-argument action 'action))))
	    ;; Options, if any.
	    (let* ((beamer-opt (org-element-property :BEAMER_OPT headline))
		   (options
		    ;; Collect options from default value and headline's
		    ;; properties.  Also add a label for links.
		    (append
		     (org-split-string org-beamer-frame-default-options ",")
		     (and beamer-opt
			  (org-split-string
			   ;; Remove square brackets if user provided
			   ;; them.
			   (and (string-match "^\\[?\\(.*\\)\\]?$" beamer-opt)
				(match-string 1 beamer-opt))
			   ","))
		     ;; Provide an automatic label for the frame
		     ;; unless the user specified one.
		     (unless (and beamer-opt
				  (string-match "\\(^\\|,\\)label=" beamer-opt))
		       (list
			(format "label=%s"
				(org-beamer--get-label headline info)))))))
	      ;; Change options list into a string.
	      (org-beamer--normalize-argument
	       (mapconcat
		'identity
		(if (or (not fragilep) (member "fragile" options)) options
		  (cons "fragile" options))
		",")
	       'option))
	    ;; Title.
	    (let ((env (org-element-property :BEAMER_ENV headline)))
          (cond ((and env (equal (downcase env) "fullframe")) "{}")
                ((and env (equal (downcase env) "takahashi")) (format "\\begin{takahashi}%s\\end{takahashi}" (org-export-data (org-element-property :title headline) info)))
                (t (format "{%s}" (org-export-data
                                   (org-element-property :title headline) info)))))
	    "\n"
	    ;; The following workaround is required in fragile frames
	    ;; as Beamer will append "\par" to the beginning of the
	    ;; contents.  So we need to make sure the command is
	    ;; separated from the contents by at least one space.  If
	    ;; it isn't, it will create "\parfirst-word" command and
	    ;; remove the first word from the contents in the PDF
	    ;; output.
	    (if (not fragilep) contents
	      (replace-regexp-in-string "\\`\n*" "\\& " (or contents "")))
	    "\\end{frame}")))

(provide 'org-custom)
