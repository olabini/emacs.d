;;; io-mode.el --- Major mode for Io source

;; Author: Erik Max Francis <max@alcyone.com>
;; Created: 2004-04-23
;; Keywords: io, languages
;; URL: <http://www.alcyone.com/software/io-mode/>

;; Copyright (C) 2004-2005 Erik Max Francis

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation; either version 2 of
;; the License, or (at your option) any later version.

;; This program is distributed in the hope that it will be
;; useful, but WITHOUT ANY WARRANTY; without even the implied
;; warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
;; PURPOSE.  See the GNU General Public License for more details.

;; You should have received a copy of the GNU General Public
;; License along with this program; if not, write to the Free
;; Software Foundation, Inc., 59 Temple Place, Suite 330, Boston,
;; MA 02111-1307 USA

;;; Commentary:

;; This is a major mode for the Steve Dekorte's Io programming
;; language <http://www.iolanguage.com>.  This mode supports:

;; - indentation based on parenthesis level
;; - electric close parentheses (close parenthesis auto-indents)
;; - syntax highlighting on all three Io comment types
;; - syntax highlighting on both string literals types
;; - syntax highlighting on assigned slot names (that is, the
;;   left-hand side of := and = messages)
;; - syntax highlighting on names:
;;   - standard distributions (e.g., IoVM, IoServer)
;;   - standard prototypes (e.g., Object, List, Nil)
;;   - conventional slots (e.g., self, if, proto, method, clone)
;;   - conventional operators (e.g., +, -, .., and)
;;   - special operators (e.g., ?, @, @@)
;;   - custom names (user-specified)

;; The indentation is designed to work with syntaxes similar to the
;; following:

;; aMethod := method(args, something)
;; anotherMethod := method(args, 
;;   doSomething
;;   doSomethingMore)
;; yetAnotherMethod := method(args,
;;   doSomething
;;   doSomethingMore
;; )
;; if(condition) then(
;;   if (anotherCondition) then(
;;     something
;;   ) else(
;;     somethingElse
;;   )
;; ) else(
;;   yetSomethingElse
;; )
;; slot := method(
;;   if (condition, 
;;     thenDoThis
;;   )
;; )

;; Forms such as:

;; x(
;;   y(
;;     ...
;;   )
;; )

;; and

;; x(
;;   y(
;;     ...
;; ))

;; are both supported.

;; Customization is possible by tweaking the variable and constants in
;; the "Parameters" sections below.  `io-mode-indent-offset'
;; represents the number of spaces Io will use at each indentation
;; level.  `io-mode-electric-parents-p' indicates whether or not Io
;; mode will use "electric parentheses" -- that is, will autoindent
;; after an open or close parenthesis is typed.
;; `io-mode-clever-indent-p' indicates whether or not Io mode will
;; attempt to do clever dedenting and reindenting based on previous
;; indentation (e.g., a close parenthesis on a blank line is dedented
;; as in the above example).  `io-mode-auto-mode-p' indicates whether
;; or not the Io mode will add itself to the auto mode list (i.e.,
;; loading a .io file will automatically initiate Io mode).  The
;; constants of the form `io-mode-...-names' are simple lists of
;; strings that indicate which names will be highlighted for each
;; category (addon, prototype, message, operator, special, and custom)
;; (`io-mode-operator-symbols' is for non-alphanumeric operators;
;; `io-mode-operator-names' is for alphanumeric operators).  The
;; custom names (`io-mode-custom-names') are included as an explicit
;; user-definable list of highlighted keywords (the only entry is
;; given as an example).

;; This emacs mode was designed for GNU emacs version 21.  No attempt
;; at backward- or cross-compatibility has currently been made.

;; Thanks to the emacs mode tutorial by Scott Andrew Borton at
;; <http://two-wugs.net/emacs/mode-tutorial.html>.

;;; Change Log:

;; 0.7     2005-08-30  More options; first pass at Imenu support; 
;;                     differentiate between colorizing slots and cloned
;;                     objects.
;;
;; 0.6.1   2005-05-23  More recognized slots; correct the == operator being
;;                     highlighted incorrectly.
;;
;; 0.6     2005-05-20  Update and reorganize all names into a more easily 
;;                     manipulated format; separate operators with
;;                     symbols and operators with names (e.g. and).
;;
;; 0.5     2004-12-15  Some additional keywords.
;;
;; 0.4     2004-05-08  Scan back for first non-blank line while indenting;
;;                     blinking close parentheses; some typos fixed and 
;;                     additional keywords added.
;;
;; 0.3     2004-04-25  Add custom, operator, and special names highlighting; 
;;                     unify and expand "slots" and "messages" lists; more 
;;                     customization options; better documentation.
;;
;; 0.2     2004-04-25  Add "customs" highlighting list; highlight ., ?, @, 
;;                     and @@ messages.
;;
;; 0.1     2004-04-23  Initial public release.

;;; Bugs:

;; - Typing an open parenthesis on the very first line of a buffer
;;   indents when it should not.

;; - Two parentheses on the same line result in two indents (e.g.,
;;   "setSlot("+", method(...", not one, although this is likely
;;   correct.

;; - Commenting out legal Io code will often result in the commented
;;   code being highlighted as normal (e.g., #a := b will result in a
;;   and := being highlighted).

;; - The . and - characters inside numberic literals (e.g., 0.456,
;;   123e-2) will be highlighted as operators even though they are
;;   clearly not.

;; - Other parenthesis closing styles, e.g.:
;;
;;   x(
;;     y(
;;       ...
;;   )
;;   )
;;
;;   are not supported.

;;; Wish list:

;; - Full Imenu support.

;; - Io menu support for running interpreters, debugging interpreters,
;;   block indenting, block commenting, etc.

;; - Superindentation for if statements, as in Lisp, e.g.::
;;
;; if(condition,
;;     someThenCode
;;     someMoreThenCode,
;;   someElseCode
;;   someMoreElseCode
;; )

;;; Versioning:

(defconst io-version "0.7x"
  "Io mode version number")

(defconst io-date "2005-08-30"
  "Io mode version date")

(defconst io-tested-with-io-version "2005-08-30"
  "Io mode tested date")

;;; Parameters:

(defconst io-interpreter-executable "io"
  "Io executable")

(defconst io-indent-offset 2
  "Io mode indent offset")

(defconst io-electric-parens-p t
  "Should the Io mode autoindent after parentheses are typed?")

(defconst io-clever-indent-p t
  "Should the Io mode try to dedent and reindent depending on context?")

(defconst io-auto-mode-p t
  "Should the Io mode add itself to the auto mode list?")

(defconst io-enable-menu-p t
  "Should the Io mode enable its menu?  (Requires easymenu package.)")

(defconst io-enable-imenu-p t
  "Should the Io mode enable its Imenu?")

(defconst io-comment-face font-lock-comment-face
  "The font to use for comments.")

(defconst io-distribution-face font-lock-constant-face
  "The font to use for known distributions.")

(defconst io-prototype-face font-lock-type-face
  "The font to use for known prototypes.")

(defconst io-slot-face font-lock-keyword-face
  "The font to use for slots.")

(defconst io-object-face font-lock-builtin-face
  "The font to use for cloned objects.")

(defconst io-operator-face font-lock-variable-name-face
  "The font to use for operators.")

(defconst io-special-face font-lock-warning-face
  "The font to use for special operators.")

(defconst io-object-assign-face font-lock-builtin-face
  "The font to use for object assignment.")

(defconst io-object-clone-face font-lock-function-name-face
  "The font to use for object cloning.")

(defconst io-custom-face font-lock-builtin-face
  "The font to use for custom names.")

(defconst io-distribution-names '(
				  "IoVM"
				  "IoServer"
				  "IoDesktop"
				  )
  "Io mode distribution names")

(defconst io-prototype-names '(
			       ; IoVM
			       "Block"
			       "Buffer"
			       "CFunction"
			       "Collector"
			       "Compiler"
			       "Date"
			       "Debugger"
			       "Directory"
			       "Duration"
			       "DynLib"
			       "Error"
			       "Exception"
			       "File"
			       "Future"
			       "Importer"
			       "List"
			       "Locals"
			       "Map"
			       "Message"
			       "Nil"
			       "Nop"
			       "Notification"
			       "Number"
			       "Object"
			       "Random"
			       "Sandbox"
			       "Scheduler"
			       "Store"
			       "String"
			       "System"
			       "Warning"
			       "WeakLink"

			       ; IoServer
			       "Blowfish"
			       "Box"
			       "CGI"
			       "Curses"
			       "DBM"
			       "DNS"
			       "DNSQuery"
			       "DNSResolver"
			       "DNSServer"
			       "DOConnection"
			       "DOProxy"
			       "DOServer"
			       "Fnmatch"
			       "Host"
			       "MD5"
			       "Point"
			       "Regex"
			       "SGMLParser"
			       "SGMLTag"
			       "SQLite"
			       "SQLite3"
			       "Server"
			       "Socket"
			       "SocketManager"
			       "Soup"
			       "Syslog"
			       "UDPReceiver"
			       "URL"
			       "User"
			       "Vector"

			       ; IoDesktop
			       "AudioDevice"
			       "AudioMixer"
			       "Color"
			       "DisplayList"
			       "Font"
			       "GL"
			       "GLE"
			       "GLScissor"
			       "GLU"
			       "GLUCylinder"
			       "GLUQuadric"
			       "GLUSphere"
			       "GLUT"
			       "Image"
			       "MP3Decoder"
			       "MP3Encoder"
			       "Movie"
			       "OpenGL"
			       "Sound"
			       "SpeexDecoder"
			       "SpeexEncoder"

			       ; others
			       "Lobby" ;;; ?
			       "HttpServer" ; in IoServer
			       )
  "Io mode prototype names")

(defconst io-slot-names '(
			  ; Lobby
			  "Protos"
			  "version"
			  "distribution"
			  "launchPath"

			  ; Object
			  "actorCallStack"
			  ;;"and"
			  "block"
			  ;;"break"
			  "clone"
			  "compare"
			  "continue"
			  "do"
			  "doFile"
			  "doMessage"
			  "doString"
			  "else"
			  "elseif"
			  "eval"
			  "for"
			  "foreach"
			  "getSlot"
			  "hasProto"
			  "hasSlot"
			  "if"
			  "ifFalse"
			  "ifNil"
			  "ifTrue"
			  "init"
			  "isActive"
			  "isNil"
			  "launchFile"
			  "list"
			  "loop"
			  "message"
			  "method"
			  "newSlot"
			  ;;"or"
			  "pause"
			  "perform"
			  "performWithArgList"
			  "print"
			  "println"
			  "protos"
			  "removeSlot"
			  ;;"resend"
			  "resume"
			  ;;"return"
			  "setSlot"
			  "shallowCopy"
			  "slotNames"
			  ;;"super"
			  "then"
			  "thisContext"
			  "try"
			  "turnOffMessageDebugging"
			  "turnOnMessageDebugging"
			  "type"
			  "uniqueId"
			  "updateSlot"
			  "wait"
			  "while"
			  "write"
			  "writeln"
			  "yield"

			  ; Block
			  "argumentNames"
			  "setArgumentNames"
			  "code"
			  "ifFalse"
			  "ifTrue"
			  "message"
			  "setMessage"
			  "performOn"
			  "print"
			  "scope"
			  "setScope"
			  "whileFalse"
			  "whileTrue"

			  ; Message
			  "argAt"
			  "argsEvaluatedIn"
			  "arguments"
			  "asString"
			  "attached"
			  "attachedMessage"
			  "cachedResult"
			  "characterNumber"
			  "clone"
			  "code"
			  "fromString"
			  "label"
			  "lineNumber"
			  "name"
			  "next"
			  "nextMessage"
			  "removeCachedResult"
			  "setArguments"
			  "setAttached"
			  "setAttachedMessage"
			  "setCachedResult"
			  "setCharacterNumber"
			  "setLabel"
			  "setLineNumber"
			  "setName"
			  "setNext"
			  "setNextMessage"

			  ; Exception
			  "backTraceString"
			  "catch"
			  "isResumable"
			  "pass"
			  "raise"
			  "raiseResumable"
			  "resume"

			  ; System
			  "compactState"
			  "exit"
			  "getenv"
			  "memorySizeOfState"
			  "platform"
			  "system"

			  ; others
			  "activate"
			  "activeCoroCount"
			  "args"
			  "asNumber"
			  "asString"
			  "at"
			  "close"
			  "forward"
			  "init"
			  "list"
			  "open"
			  "parent" ;;; going away?
			  "self"
			  "sender"
			  "setPath"
			  "target"
			  "thisBlock"
			  "thisMessage"
			  "vector"
			  )
  "Io mode slot names")

(defconst io-operator-symbols '(
				"'"
				"."
				;;"?"
				;;"("
				;;")"

				"++"
				"--"

				"*"
				"/"
				"%"

				"+"
				"-"

				"<<"
				">>"

				">"
				"<"
				"<="
				">="

				"=="
				"!="

				"&"

				"^"

				"|"

				"&&"

				"||"

				".."

				"="
				"+="
				"-="
				"*="
				"/="
				"%="
				"&="
				"^="
				"|="
				"<<="
				">>="
				":="
				"<-"
				"<->"
				"->"
				)
  "Io mode operator symbols")

(defconst io-operator-names '(
			      "and"
			      "or"
			      "return"
			      "break"
			      "continue" ;;; not really an operator?
			      "super"
			      "resend"
			      )
  "Io mode operator names")

(defconst io-special-names '(
			     "."
			     "?"
			     "@"
			     "@@"
			     )
  "Io mode special names")

(defconst io-custom-names '(
			    ; your custom identifiers here
			    "aCustomExample"
			    )
  "Io mode custom names")

(defconst io-imenu-generic-expression
  '((nil "^\\s-*\\([A-Za-z0-9_]+\\)\\s-+:?=\\s-+\\([A-Za-z0-9_]+\\)\\s-+clone\\s-+do" 1)
    ("*Blocks*" "^\\s-*\\([A-Za-z0-9_]+\\)\\s-+:?=\\s-+block(" 1))
  "Io Imenu generic expression")
  
(defconst io-region-comment-prefix "###"
  "Io region comment prefix")

;;; Code:

(defvar io-menu nil
  "Menu for Io mode (requires easymenu package).")

(defvar io-mode-hook nil
  "Io mode hook")

(defvar io-keymap 
  (let ((io-keymap (make-sparse-keymap)))
    (if io-electric-parens-p
	(progn
	  (define-key io-keymap "(" 'io-electric-open-paren)
	  (define-key io-keymap ")" 'io-electric-close-paren)
	  (define-key io-keymap "\C-c#" 'io-comment-region)
	  ))
    io-keymap)
  "Io mode keymap")

(defvar io-font-lock-defaults
  (list
   '("#.*$" . io-comment-face)
   '("//.*$" . io-comment-face)
   '("/\\*.*\\*/" . io-comment-face)
   `(,(concat "\\<" (regexp-opt io-distribution-names t) "\\>") . io-distribution-face)
   `(,(concat "\\<" (regexp-opt io-prototype-names t) "\\>") . io-prototype-face)
   `(,(concat "\\<" (regexp-opt io-slot-names t) "\\>") . io-slot-face)
   `(,(concat "\\<" (regexp-opt io-custom-names t) "\\>") . io-custom-face)
   `(,(concat (regexp-opt io-operator-symbols t) "\\|\\<" (regexp-opt io-operator-names t) "\\>") . io-operator-face)
   `(,(regexp-opt io-special-names t) . io-special-face)
   '("\\(\\w*\\)\\s-*:?=[^=]" . '(1 io-object-assign-face t nil))
   '("\\([A-Za-z0-9]+\\)\\s-*:?=[^=]\\s-*[A-Za-z0-9]+\\s-+clone" . '(1 io-object-clone-face t nil))
  )
  "Io mode font lock defaults")

(defvar io-syntax-table
  (let ((io-syntax-table (make-syntax-table)))
    (modify-syntax-entry ?_ "w" io-syntax-table)
    (modify-syntax-entry ?/ ". 124b" io-syntax-table)
    (modify-syntax-entry ?* ". 23" io-syntax-table)
    (modify-syntax-entry ?\n "> b" io-syntax-table)
    io-syntax-table)
  "Io mode syntax table")

(defun io-indent-line ()
  "Io mode indent line"
  (interactive)
  (if (bobp)
      (indent-line-to 0)
    (let (current-depth current-close-flag current-close-open-flag
	  last-indent last-depth last-close-flag last-close-open-flag)
      (save-excursion
	(let (start-point end-point)
	  ; get the balance of parentheses on the current line
	  (end-of-line)
	  (setq end-point (point))
	  (beginning-of-line)
	  (setq current-close-flag (looking-at "^[ \\t)]*)[ \\t)]*$"))
	  (setq current-close-open-flag (looking-at "^\\s-*).*(\\s-*$"))
	  (setq start-point (point))
	  (setq current-depth (car (parse-partial-sexp start-point end-point)))
	  ; and the previous non-blank line
	  (while (progn 
		   (forward-line -1)
		   (beginning-of-line)
		   (and (not (bobp))
			(looking-at "^\\s-*$"))))
	  (setq last-indent (current-indentation))
	  (end-of-line)
	  (setq end-point (point))
	  (beginning-of-line)
	  (setq last-close-flag (looking-at "^[ \\t)]*)[ \\t)]*$"))
	  (setq last-close-open-flag (looking-at "^\\s-*).*(\\s-*$"))
	  (setq start-point (point))
	  (setq last-depth (car (parse-partial-sexp start-point end-point)))))
      (let ((depth last-depth))
	(if io-clever-indent-p
	    (setq depth (+ depth
			   (if current-close-flag current-depth 0)
			   (if last-close-flag (- last-depth) 0)
			   (if current-close-open-flag -1 0)
			   (if last-close-open-flag 1 0))))
	(indent-line-to (max 0
			     (+ last-indent
				(* depth io-indent-offset))))))))

(defun io-electric-open-paren ()
  "Io mode electric close parenthesis"
  (interactive)
  (insert ?\()
  (let ((marker (make-marker)))
    (set-marker marker (point-marker))
    (indent-according-to-mode)
    (goto-char (marker-position marker))
    (set-marker marker nil)))

(defun io-electric-close-paren ()
  "Io mode electric close parenthesis"
  (interactive)
  (insert ?\))
  (let ((marker (make-marker)))
    (set-marker marker (point-marker))
    (indent-according-to-mode)
    (goto-char (marker-position marker))
    (set-marker marker nil))
  (blink-matching-open))

(defun io-comment-region (beg end &optional arg)
  "Comment region for Io."
  (interactive "r\nP")
  (let ((comment-start io-region-comment-prefix))
    (comment-region beg end arg)))

(defun io-mode ()
  "Io mode"
  (interactive)
  (kill-all-local-variables)
  (set-syntax-table io-syntax-table)
  (use-local-map io-keymap)
  (set (make-local-variable 'font-lock-defaults) '(io-font-lock-defaults))
  (set (make-local-variable 'indent-line-function) 'io-indent-line)
  (setq major-mode 'io-mode)
  (setq mode-name "Io")
  (run-hooks 'io-mode-hook)
  (if io-auto-mode-p
      (add-to-list 'auto-mode-alist '("\\.io\\'" . io-mode)))
  (if io-enable-menu-p
      (progn
	(require 'easymenu)
	(easy-menu-define
	  io-menu io-keymap "Io Mode menu"
	  '("Io"
	    ["Comment out region"    io-comment-region (mark)]
	    ["Uncomment region"      (io-comment-region (point) (mark) '(4)) (mark)]
	    ))))
  (if io-enable-imenu-p
      (progn
	(require 'imenu)
	(setq imenu-generic-expression io-imenu-generic-expression)
	(if (fboundp 'imenu-add-to-menubar)
	    (imenu-add-to-menubar (format "%s-%s" "IM" mode-name))))))

(provide 'io-mode)

;;; io-mode.el ends here
