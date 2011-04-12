;;; awk-mode.el --- AWK code editing commands for Emacs

;; Copyright (C) 1988,94,96,2000  Free Software Foundation, Inc.

;; Maintainer: FSF
;; Keywords: unix, languages

;; This file is part of GNU Emacs.

;; GNU Emacs is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.

;; GNU Emacs is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 59 Temple Place - Suite 330,
;; Boston, MA 02111-1307, USA.

;;; Commentary:

;; Sets up C-mode with support for awk-style #-comments and a lightly
;; hacked syntax table.

;;; Code:

(defvar awk-mode-syntax-table nil
  "Syntax table in use in Awk-mode buffers.")

(if awk-mode-syntax-table
    ()
  (setq awk-mode-syntax-table (make-syntax-table))
  (modify-syntax-entry ?\\ "\\" awk-mode-syntax-table)
  (modify-syntax-entry ?\n ">   " awk-mode-syntax-table)
  (modify-syntax-entry ?\f ">   " awk-mode-syntax-table)
  (modify-syntax-entry ?\# "<   " awk-mode-syntax-table)
  (modify-syntax-entry ?/ "." awk-mode-syntax-table)
  (modify-syntax-entry ?* "." awk-mode-syntax-table)
  (modify-syntax-entry ?+ "." awk-mode-syntax-table)
  (modify-syntax-entry ?- "." awk-mode-syntax-table)
  (modify-syntax-entry ?= "." awk-mode-syntax-table)
  (modify-syntax-entry ?% "." awk-mode-syntax-table)
  (modify-syntax-entry ?< "." awk-mode-syntax-table)
  (modify-syntax-entry ?> "." awk-mode-syntax-table)
  (modify-syntax-entry ?& "." awk-mode-syntax-table)
  (modify-syntax-entry ?| "." awk-mode-syntax-table)
  (modify-syntax-entry ?_ "_" awk-mode-syntax-table)
  (modify-syntax-entry ?\' "\"" awk-mode-syntax-table))

;; Regexps written with help from Peter Galbraith <galbraith@mixing.qc.dfo.ca>.
(defconst awk-font-lock-keywords
  (eval-when-compile
    (list
     ;;
     ;; Function names.
     '("^[ \t]*\\(function\\)\\>[ \t]*\\(\\sw+\\)?"
       (1 font-lock-keyword-face) (2 font-lock-function-name-face nil t))
     ;;
     ;; Variable names.
     (cons (regexp-opt
	    '("ARGC" "ARGIND" "ARGV" "CONVFMT" "ENVIRON" "ERRNO"
	      "FIELDWIDTHS" "FILENAME" "FNR" "FS" "IGNORECASE" "NF" "NR"
	      "OFMT" "OFS" "ORS" "RLENGTH" "RS" "RT" "RSTART" "SUBSEP") 'words)
	   'font-lock-variable-name-face)
     ;;
     ;; Keywords.
     (regexp-opt
      '("BEGIN" "END" "break" "continue" "delete" "do" "exit" "else" "for"
	"getline" "if" "in" "next" "print" "printf" "return" "while") 'words)
     ;;
     ;; Builtins.
     (list (regexp-opt
	    '("atan2" "close" "cos" "ctime" "exp" "fflush" "gensub" "gsub" "index" "int"
	      "length" "log" "match" "ord" "rand" "sin" "split" "sprintf"
	      "sqrt" "srand" "strftime" "sub" "substr" "system" "systime" "time"
	      "tolower" "toupper") 'words)
	   1 'font-lock-builtin-face)
     ;;
     ;; Operators.  Is this too much?
     (cons (regexp-opt '("&&" "||" "<=" "<" ">=" ">" "==" "!=" "!~" "~"))
	   'font-lock-constant-face)
     ))
 "Default expressions to highlight in AWK mode.")

;;;
;;; Awk menu by Zhongxiao (David) Wang, zwang@mail.smu.edu, on April 21, 2002
;;;
;;; Awk is, perhaps, the lightest programming language. However, light-weight
;;; as it is, it's very gentle and powerful. Despite lots of popular programming
;;; languages available, I take awk as a DAILY tool and like it the best. In
;;; fact, it is its smallnest that makes it possible to add not so huge a menu
;;; to provide almost all the essential parts of the language. Now, you can take
;;; Emacs/Xemacs as an awk-specific integrated development environment (IDE).
;;;
;;; Before you can enjoy the benefits this work can bring to you, you might
;;; need to make sure that
;;;
;;;  1) GNU awk, gawk, has been installed in your system and its path is
;;;     covered by the environment variable, PATH.
;;;
;;;     If you have certain version of awk rather than gawk, please rename it
;;;     as gawk (in MS Windows, gawk.exe).
;;;
;;;  2) you had better have file, gawk.info. If you click Awk | Browse Awk
;;;     Manual with Info and no corresponding buffer appears, you need
;;;     to set variable, Info-default-directory-list, in your initialization
;;;     file, .emacs, which is in your home directory, by adding statement
;;;     like
;;;     
;;;     (setq Info-default-directory-list
;;;           (cons "C:/cygwin/usr/info" Info-default-directory-list))
;;;
;;;     Special benefits for Windows users:
;;;     -----------------------------------
;;;     You can obtain, through Internet, gawk.hlp, a Windows help file, and
;;;     put it right in your home directory. By doing so, you can start
;;;     gawk.hlp within Emacs.

(defvar awk-mode-map () "Keymap used in Awk mode.")

(if awk-mode-map nil
  (setq awk-mode-map (make-sparse-keymap)))

(defvar awk-run-failed-p nil)

(defvar awk-menu)
(condition-case nil
    (progn
      (require 'easymenu)
      (require 'compile)
      (easy-menu-define awk-menu awk-mode-map "Menu for Awk mode"
         '("Awk"
	   ["Run..." awk-run]
	   ["Stop Running" kill-compilation]
	   "---"
	   ["Next Error" next-error awk-run-failed-p]
	   ["Previous Error" previous-error awk-run-failed-p]
	   ["First Error" first-error awk-run-failed-p]
	   "---"
	   ["Awk Manual" awk-browse-info]
	   "---"
	   ["Frame of Function" awk-func-frame]
	   ["Frame of Code" awk-code-frame]
	   "---"
	   ("Flow Control"
	    ["if"                   (awk-if "if (")]
	    ["if else"              awk-ifelse]
	    "---"
	    ["for"                  (awk-if "for (; ;")]
	    ["for (index in array)" (awk-if "for (index in array")]
	    "---"
	    ["while"                (awk-if "while (")]
	    ["do while"             awk-dowhile]
	    "---"
	    ["break"                (awk-text "break;")]
	    ["continue"             (awk-text "continue;")]
	    ["exit"                 (awk-text "exit;")]
	    ["exit expr"            (awk-textbw "exit expr;" 1)]
	    ["next"                 (awk-text "next;")]
	    ["return"               (awk-text "return;")]
	    ["return expr"          (awk-textbw "return expr;" 1)])
	   ("String Functions"
	    ["gensub (reg, substr, how [, str]): string" (awk-textbw "gensub(reg, substr, how [, str])" 4)]
	    ["gsub (reg, substr [, str]): integer" (awk-textbw "gsub(reg, substr [, str])" 3)]
	    ["sub (reg, substr, str): integer" (awk-textbw "sub(reg, substr, str)" 3)]
	    "---"
	    ["split (str, array [, reg])" (awk-textbw "split(str, array [, reg]);" 3)]
	    "---"
	    ["index (str, substr): integer" (awk-textbw "index(str, substr)" 2)]
	    ["length (str): integer" (awk-textbw "length(str)" 1)]
	    ["match (str, reg): integer" (awk-textbw "match(str, reg)" 2)]
	    ["ord (str): integer (of str's 1st char)" (awk-textbw "ord(str)" 1)]
	    ["sprintf (format, expr-list): string" (awk-textbw "sprintf(format, expr_list)" 3)]
	    ["substr (str, start [, length]): string" (awk-textbw "substr(str, start [, length])" 3)]
	    "---"
	    ["strftime (): string" (awk-text "strftime()")]
	    ["strftime (format [, time-stamp]): string" (awk-textbw "strftime(format [, time_stamp])" 3)]
	    "---"
	    ["tolower (str): string" (awk-textbw "tolower(str)" 1)]
	    ["toupper (str): string" (awk-textbw "toupper(str)" 1)])
	   ("Input/Output"
	    ["command | getline" (awk-textbw "\"command\" | getline;" 2)]
	    ["getline" (awk-text "getline;")]
	    ["getline < file" (awk-textbw "getline < file;" 1)]
	    ["getline var" (awk-textbw "getline var;" 1)]
	    ["getline var < file" (awk-textbw "getline var < file;" 2)]
	    "---"
	    ["print" (awk-text "print")]
	    ["print > file" (awk-textbw "print > file;" 1)]
	    ["printf format, expr-list" (awk-textbw "printf format, expr_list;" 3)]
	    ["printf format, expr-list > file" (awk-textbw "printf format, expr_list > file;" 4)]
	    "---"
	    ["close (command)" (awk-textbw "close(command);" 1)]
	    ["close (filename)" (awk-textbw "close(filename);" 1)]
	    ["fflush ()" (awk-text "fflush();")]
	    ["fflush (expr)" (awk-textbw "fflush(expr);" 1)]
	    "---"
	    ["/dev/stdin: standard input" (awk-text "\"/dev/stdin\"")]
	    ["/dev/stdout: standard output" (awk-text "\"/dev/stdout\"")]
	    ["/dev/stderr: standard error output" (awk-text "\"/dev/stderr\"")])
	   ("System Interaction"
	    ["command | getline" (awk-textbw "\"command\" | getline;" 2)]
	    ["strftime (): See String Functions" (awk-text "strftime()")]
	    ["system (command)" (awk-textbw "system(\"command\")" 1)]
	    ["systime (): integer" (awk-text "systime()")])
	   ("Arithmetic Functions"
	    ["int" (awk-func "int")]
	    ["sin" (awk-func "sin")]
	    ["cos" (awk-func "cos")]
	    ["atan2" (awk-func "atan2")]
	    ["sqrt" (awk-func "sqrt")]
	    ["exp" (awk-func "exp")]
	    ["log" (awk-func "log")]
	    ["rand" (awk-func "rand")]
	    ["srand" (awk-func "srand")])
	   ("Array Operation"
	    ["delete array" (awk-textbw "delete array;" 1)]
	    ["delete array [index]" (awk-textbw "delete array [index];" 2)]
	    ["for (index in array) {...}" (awk-if "for (index in array")]
	    ["split (string, array [, reg])" (awk-textbw "split(str, array [, reg]);" 3)])
	   ("Built-in Variables"
	    ["NF: number of fields in input line" (awk-text "NF")]
	    ["FNR: input line number in current file" (awk-text "FNR")]
	    ["NR: number of input lines read so far" (awk-text "NR")]
	    "---"
	    ["ARGC: number of command-line arguments" (awk-text "ARGC")]
	    ["ARGIND: index in 'ARGV' of current file" (awk-text "ARGIND")]
	    ["ARGV: array of command-line arguments (0..ARGC-1)" (awk-text "ARGV")]
	    "---"
	    ["FS: input field separator (default: blank)" (awk-text "FS")]
	    ["OFMT: output format for numbers (default: %.6g)" (awk-text "OFMT")]
	    ["OFS: output field separator (default: space)" (awk-text "OFS")]
	    ["ORS: output line separator (default: newline)" (awk-text "ORS")]
	    ["RS: input line separator (default: newline)" (awk-text "RS")]
	    ["RT: input text matching text denoted by RS." (awk-text "RT")]
	    ["SUBSEP: subscript separator (default: \\034)" (awk-text "SUBSEP")]
	    "---"
	    ["RSTART: index of first character matched by match()" (awk-text "RSTART")]
	    ["RLENGTH: length of string matched by match()" (awk-text "RLENGTH")]
	    "---"
	    ["CONVFMT: format to convert numbers to strings" (awk-text "CONVFMT")]
	    ["ENVIRON: associative array of environment variables" (awk-text "ENVIRON")]
	    ["ERRNO: error description string" (awk-text "ERRNO")]
	    ["FILENAME: name of current input file" (awk-text "FILENAME")]
	    ["IGNORECASE: case-independent matching" (awk-text "IGNORECASE")]
	    "---"
	    ["/dev/std*: See Input/Output" (awk-text "\"/dev/stdin\"")]))))
  (error nil))


;;;
;;; implementation of menuitem functions
;;;
;;; If you put Windows help file, gawk.hlp, right in your home directory,
;;; then, emacs will start it. Or, gawk.info will be used.
(defun awk-browse-info()
  (interactive)
  (let ((gawkhlp (expand-file-name "~/gawk.hlp")))
    (if (and (string-match "windows" (prin1-to-string system-type))
	     (file-exists-p gawkhlp))
	(shell-command (concat "winhlp32.exe " gawkhlp))
        (info "gawk.info")))
 "Browse gawk manual with Info.")

(defun awk-run()
  (interactive)
  (let ((command (concat "gawk -f \"" buffer-file-name "\"")))
    (if (buffer-modified-p) (save-buffer))
    ;;; You can simply modify functions, compile-internal, compilation-handle-exit and
    ;;; compilation-sentinel of compile.el, so as to have nicer result window. However,
    ;;; it seems to be nonsense because you must maintain these functions and have them
    ;;; compatible with the new versions of package compile.
    (compile-internal command "No more errors" "Running awk")
    (setq awk-run-failed-p t)) ; treat it simply
 "Call compile-internal of package compile to run awk script.")

(defun awk-func-frame()
  (interactive)
  (insert "\n\
###############################################################\n\
# Input      : \n\
# Output     : \n\
# Description: \n\
#\n\
###############################################################\n")
  (insert "function name(parameters,    local_variables) {")
  (newline 2)
  (insert "}\n")
  (backward-word 4)
 "Insert frame of an awk function.")

(defun awk-code-frame()
  (interactive)
  (insert "\
###############################################################\n\
# Script name:  \n\
# Date:         ");
  (insert (current-time-string))
  (insert "\n\
# Author:       David Wang, zwang@mail.smu.edu\n\
# Usage:        \n\
# Description:  \n\
#\n\
###############################################################")
  (insert "\n\
BEGIN {\n\
  # set default values for any options & do initialization\n\
\n\
  # To run code in Emacs, you need to reset ARGC and ARGV if you\n\
  # are to process text files in the following way. Besides, Awk\n\
  # code must be in the same directory as those files, or you need\n\
  # to specify pathes of the latter.\n\
  ARGV[1] = \"mydata.dat\";  # take mydata.dat as the input text file\n\
  ARGC = 2;                # previous index + 1\n\
}\n\
\n\
END {\n\
  # closing code\n\
}\n\n\
# Active code in format: pattern { actions }\n\
{ print }\n")
  (previous-line 15)
  (c-indent-command)
 "Insert frame of awk code.")

(defun awk-dowhile()
  (interactive)
  (insert "do {")
  (c-indent-command)
  (newline 2)
  (insert "} while ();")
  (c-indent-command)
  (newline)
  (previous-line 2)
  (c-indent-command)
 "Insert awk do-while structure.")

(defun awk-ifelse()
  (interactive)
  (insert "if () {")
  (c-indent-command)
  (newline 2)
  (insert "} else {")
  (c-indent-command)
  (newline 2)
  (insert "}")
  (c-indent-command)
  (newline)
  (backward-word 2)
  (forward-word 1)
  (forward-char 2)
 "Insert awk if-else structure.")

(defun awk-if(text)
  (interactive)
  (insert (concat text ") {"))
  (c-indent-command)
  (newline 2)
  (insert "}")
  (c-indent-command)
  (newline)
  (previous-line 3)
  (beginning-of-line)
  (forward-word 1)
  (forward-char 2)
 "Insert awk if/while/for structure.")

(defun awk-text(text)
  (interactive)
  (insert text)
 "Insert awk simple text.")

(defun awk-func(func)
  (interactive)
  (insert (concat func "()"))
  (backward-char)
 "Insert awk math function.")

(defun awk-textbw(text n)
  (interactive)
  (insert text)
  (backward-word n)
 "Insert awk text and backward n words.")
;;;
;;; End of Awk menu by Zhongxiao (David) Wang, zwang@mail.smu.edu, on April 21, 2002
;;;


;;;###autoload
(define-derived-mode awk-mode c-mode "AWK"
  "Major mode for editing AWK code.
This is much like C mode except for the syntax of comments.  Its keymap
inherits from C mode's and it has the same variables for customizing
indentation.  It has its own abbrev table and its own syntax table.

Turning on AWK mode runs `awk-mode-hook'."
  (set (make-local-variable 'paragraph-start) (concat "$\\|" page-delimiter))
  (set (make-local-variable 'paragraph-separate) paragraph-start)
  (set (make-local-variable 'comment-start) "# ")
  (set (make-local-variable 'comment-end) "")
  (set (make-local-variable 'comment-start-skip) "#+ *")
  (setq font-lock-defaults '(awk-font-lock-keywords nil nil ((?_ . "w"))))

  ;;; David Wang
  (make-local-variable 'awk-run-failed-p)
  (use-local-map awk-mode-map)
  (if (featurep 'easymenu)
      (easy-menu-add awk-menu))
)

(provide 'awk-mode)

;;; awk-mode.el ends here
