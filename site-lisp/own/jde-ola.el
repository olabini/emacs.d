;;; jde-ola.el -- Mod for Java Development Environment for Emacs
;; $Revision: 1.4 $ $Date: 2007/11/23 17:03:23 $ 

;; Author: Ola Gustafsson <Ola.Gustafsson@lime.ki.se>
;; Maintainer: Ola Gustafsson
;; Keywords: java, tools

;; Copyright (C) 2002 Ola Gustafsson.

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

;; This is a small modification to the popular
;; Java Development Environment (JDE) for Emacs.
;; It adds support for a few different templates and
;; adds those to the menus.

;; Please send any comments, bugs, or upgrade requests to
;; Ola Gustafsson at Ola.Gustafsson@lime.ki.se

;;; Code:

(defvar jde-ola-source-directory (expand-file-name "~/src")
"The source directory for this project")

(defvar jde-ola-include-cvs-vars t "Should generated Java-files include cvs variables like revision and version")

(defun jde-ola-find-package ()
    (mapconcat (function (lambda (inp) inp)) 
               (let ((split (split-string (directory-file-name (file-name-directory (find-current-dir))) "/")))
                 (if (equal (elt split 0) "..")
                     (cdr (cdr split))
                     split)) "."))


(defun find-current-dir ()
  (if (stringp jde-ola-source-directory) 
      (let ((xout (get-guess buffer-file-name jde-ola-source-directory)))
        (if (numberp (is-correct-part xout buffer-file-name))
            nil
          xout))
    (find-current-dir-list jde-ola-source-directory)))

(defun get-guess (buff str)
  (file-relative-name buff str)
  )

(defun find-current-dir-list (inp)
  (if (not inp)
      nil
    (let ((xout (get-guess buffer-file-name (car inp))))
      (if (numberp (is-correct-part xout buffer-file-name))
          (find-current-dir-list (cdr inp))
        xout))))

(defun is-correct-part (is-this-it file-name) 
  (let ((fname (length file-name))
        (full (length is-this-it)))
    (if (< full fname) 
        t
      nil)))

(defun jde-gen-junit-get-package-statement () 
  (jde-ola-find-package))

(defun jde-gen-junit-get-test-class (startpack) 
  (read-from-minibuffer "Class to test (with package): " (concat startpack ".")))

(defun jde-gen-read-interfaces ()
	(setq do-cont t)
	(setq final-interfaces '())
	(while do-cont
		(setq temp-inter (read-from-minibuffer "Implements: "))
		(if (string= temp-inter "") 
			(setq do-cont nil)
			(setq final-interfaces (append (list temp-inter) final-interfaces))
		    
		)
	)
	final-interfaces
)

(defun jde-gen-get-class-information ()
	"This function fetch all information about a class"
		(setq class-interfaces  (jde-gen-read-interfaces))
		()) 


(defun jde-gen-view-interfaces (ifc)
  (if (null ifc)
      ""
    (concat " implements " (mapconcat (function (lambda (inp) inp)) (reverse ifc) ", ") " ")))

(defun jde-gen-view-interface-implementation (interfaces)
	(while interfaces
		(let ((result (jde-wiz-implement-interface-internal (car interfaces)))) 
			(if (not result) (setq result "Correct"))
			(if (or (string= result "Error evaluating Java expresson. See *Messages* buffer.")
                    (not (numberp (compare-strings "Cannot find interface " 0 21 result 0 21))))
					(jde-wiz-update-implements-clause (car interfaces))
			)
			(setq interfaces (cdr interfaces)))))


;--- New version of generating Classes, implementing interfaces better.

(defcustom jde-gen-class-buffer-template2
  (list
    "(funcall jde-gen-boilerplate-function)"
;;    (if jde-ola-include-cvs-vars "\"/**\" '>'n" "")
;;    (if jde-ola-include-cvs-vars "\" * $Id: jde-ola.el,v 1.4 2007/11/23 17:03:23 olagus Exp $\" '>'n" "")
;;    (if jde-ola-include-cvs-vars "\" */\" '>'n" "")
    "\"package \" (jde-ola-find-package) \";\" '>'n '>'n"
    "(jde-gen-get-class-information)"
;;    "\"/**\" '>'n"
;;  "\" * <p>Info about this class</p>\" '>'n"
;;    "\" *\" '>'n"
;;    "\" * @author <a href=\\\"mailto:\" (eval user-mail-address) \"\\\">\" (user-full-name) \"</a>\" '>'n"
;;   (if jde-ola-include-cvs-vars "\" * @version $Revision: 1.4 $\" '>'n" "")
;;    "\" */\" '>'n"
    "\"public class \" (file-name-sans-extension (file-name-nondirectory buffer-file-name))"
    "(jde-gen-get-extend-class)"
    "(if jde-gen-k&r "
     "()"
     "'>'n)"
     "\" {\"'>'n"
;;    "\"/**\" '>'n"
;;    "\" * Standard constructor\" '>'n"
;;    "\" */\" '>'n'"
;;    "\"public \""
;;    "(file-name-sans-extension (file-name-nondirectory buffer-file-name))"
;;    "\"() \""

;;    "(if jde-gen-k&r "
;;     "()"
;;     "'>'n)"
;;     "\"{\"'>'n"
;;	"\"//TODO: Add implementation\" '>'n"
;;    "'>'p'n"
;;    "\"}\">"
    "(jde-gen-view-interface-implementation class-interfaces)"
;;    "'>'n\"}\">"
    "\"}\">"
;;    "\"// \""
;;    "(file-name-sans-extension (file-name-nondirectory buffer-file-name))"
    "'>'n")
  "*Template for new Java class.
Setting this variable defines a template instantiation
command `jde-gen-class2', as a side-effect."
  :group 'jde-gen
  :type '(repeat string)
  :set '(lambda (sym val)
	  (defalias 'jde-gen-class2
	    (tempo-define-template "java-class-buffer-template"
		       (jde-gen-read-template val)
                       nil
                       "Insert a generic Java class buffer skeleton."))
	  (set-default sym val)))

(defun jde-gen-class-buffer2 (file)
  "Create a new Java buffer containing a class of the same name.
This command inserts the class template generated by `jde-gen-class'.
It then moves the point to the location to the constructor."
  (interactive "FNew java class: ")
  (find-file file)
  (jde-gen-class2)
  (beginning-of-buffer)
  (search-forward "{")
  (backward-char 1)
  (c-indent-exp)
  (tempo-forward-mark))

(defcustom jde-gen-class-buffer-singleton-templ
  (list
    "(funcall jde-gen-boilerplate-function)"
;;    (if jde-ola-include-cvs-vars "\"/**\" '>'n" "")
;;    (if jde-ola-include-cvs-vars "\" * $Id: jde-ola.el,v 1.4 2007/11/23 17:03:23 olagus Exp $\" '>'n" "")
;;    (if jde-ola-include-cvs-vars "\" */\" '>'n" "")
    "\"package \" (jde-ola-find-package) \";\" '>'n '>'n"
    "(jde-gen-get-class-information)"
    "\"/**\" '>'n"
;;    "\" * <p>Info about this singleton class</p>\" '>'n"
;;    "\" *\" '>'n"
    "\" * @author <a href=\\\"mailto:\" (eval user-mail-address) \"\\\">\" (user-full-name) \"</a>\" '>'n"
;;    (if jde-ola-include-cvs-vars "\" * @version $Revision: 1.4 $\" '>'n" "")
    "\" */\" '>'n"
    "\"public class \" (file-name-sans-extension (file-name-nondirectory buffer-file-name))"
    "\" \" (jde-gen-get-extend-class)"
    "(if jde-gen-k&r "
     "()"
     "'>'n)"
     "\" {\"'>'n"
    "\"// Provides the initialize-on-demand holder class idiom.\"'>'n"
    "\"private static class \" (file-name-sans-extension (file-name-nondirectory buffer-file-name)) \"Holder\""
    "(if jde-gen-k&r "
     "()"
     "'>'n)"
     "\" {\"'>'n"
     "\"static final \" (file-name-sans-extension (file-name-nondirectory buffer-file-name)) \" INSTANCE = new \" (file-name-sans-extension (file-name-nondirectory buffer-file-name)) \"();\"'>'n"
     "\"}\"'>'n"
     "'>'n"

    "\"/**\" '>'n"
    "\" * Standard constructor, package-private for singleton idiom\" '>'n"
    "\" */\" '>'n'"
    "(file-name-sans-extension (file-name-nondirectory buffer-file-name))"
    "\"() \""
    "(if jde-gen-k&r "
     "()"
     "'>'n)"
     "\"{\"'>'n"
	"\"//TODO: Add implementation\" '>'n"
    "'>'p'n"
    "\"}\"'>'n'>'n"
    "\"public static \" (file-name-sans-extension (file-name-nondirectory buffer-file-name)) \" getInstance()\""
    "(if jde-gen-k&r "
    "()"
    "'>'n)"
    "\" {\"'>'n"
    "\"return \" (file-name-sans-extension (file-name-nondirectory buffer-file-name)) \"Holder.INSTANCE;\"'>'n"
    "\"}\""
    "(jde-gen-view-interface-implementation class-interfaces)"
    "'>'n\"}\">"
    "\"// \""
    "(file-name-sans-extension (file-name-nondirectory buffer-file-name))"
    "'>'n")
  "*Template for new Java class.
Setting this variable defines a template instantiation
command `jde-gen-singleton', as a side-effect."
  :group 'jde-gen
  :type '(repeat string)
  :set '(lambda (sym val)
	  (defalias 'jde-gen-singleton
	    (tempo-define-template "java-class-singleton-buffer-template"
		       (jde-gen-read-template val)
                       nil
                       "Insert a generic Java class singleton buffer skeleton."))
	  (set-default sym val)))

(defun jde-gen-class-buffer-singleton (file)
  "Create a new Java buffer containing a class of the same name.
This command inserts the class template generated by `jde-gen-singleton'.
It then moves the point to the location to the constructor."
  (interactive "F")
  (find-file file)
  (jde-gen-singleton)
  (beginning-of-buffer)
  (search-forward "{")
  (backward-char 1)
  (c-indent-exp)
  (tempo-forward-mark))


(defcustom jde-gen-interface-buffer-template
  (list
    "(funcall jde-gen-boilerplate-function)"
;;(if jde-ola-include-cvs-vars     "\"/**\" '>'n" "")
;;(if jde-ola-include-cvs-vars     "\" * $Id: jde-ola.el,v 1.4 2007/11/23 17:03:23 olagus Exp $\" '>'n" "")
;;(if jde-ola-include-cvs-vars     "\" */\" '>'n" "")
    "\"package \" (jde-ola-find-package) \";\" '>'n '>'n"
    "\"/**\" '>'n"
;;    "\" * <p>Info about this interface</p>\" '>'n"
;;    "\" *\" '>'n"
    "\" * @author <a href=\\\"mailto:\" (eval user-mail-address) \"\\\">\" (user-full-name) \"</a>\" '>'n"
;;(if jde-ola-include-cvs-vars     "\" * @version $Revision: 1.4 $\" '>'n" "")
    "\" */\" '>'n"
    "\"public interface \""
    "(file-name-sans-extension (file-name-nondirectory buffer-file-name))"
    "\" \" (jde-gen-get-extend-class)"
    "(if jde-gen-k&r "
     "()"
     "'>'n)"
     "\" {\"'>'n"
	 "'>'p'n"
	 "\"}\">"
    "\"// \""
    "(file-name-sans-extension (file-name-nondirectory buffer-file-name))"
    "'>'n")
  "*Template for new Java class.
Setting this variable defines a template instantiation
command `jde-gen-interface', as a side-effect."
  :group 'jde-gen
  :type '(repeat string)
  :set '(lambda (sym val)
	  (defalias 'jde-gen-interface
	    (tempo-define-template "java-class-interface-template"
		       (jde-gen-read-template val)
                       nil
                       "Insert a generic Java interface buffer skeleton."))
	  (set-default sym val)))






;;----------------------- Giant olamod!

(defcustom jde-gen-junit-class-buffer-template
  (list
    "(funcall jde-gen-boilerplate-function)"
	"\"package \""
    "(setq file-package (jde-gen-junit-get-package-statement))"
	"\";\" '>'n"
	"'>'n"
	"\"import junit.framework.*;\" '>'n"
	"\"import \""
	"(setq test-class (jde-gen-junit-get-test-class file-package))"
	"\";\" '>'n"
    "'>'n"
    "\"/**\" '>'n"
    "\" * \""
    "(file-name-nondirectory buffer-file-name) '>'n"
    "\" *\" '>'n"
    "\" * <p>Test Case for class <code>\" test-class \"</code>\" '>'n"
    "\" *\" '>'n"
    "\" * <p>Created: \" (current-time-string) '>'n"
    "\" *\" '>'n"

    "\" * @author <a href=\\\"mailto:\" (eval user-mail-address) \"\\\">\" (user-full-name) \"</a>\"'>'n"
    "\" * @version\" '>'n"
	"\" * \" '>'n"
	"\" * See <a href=\\\"http://www.junit.org\\\">JUnit.org</a>\"'>'n"
    "\" */\" '>'n'"
    "'>'n"
    "\"public class \""
    "(file-name-sans-extension (file-name-nondirectory buffer-file-name))"
    "\" extends TestCase \""

    "(if jde-gen-k&r "
     "()"
     "'>'n)"
     "\"{\"'>'p'n"

	"\"/**\" '>'n"
    "\" * This constructor takes the name of the test case as a parameter.\" '>'n"
	"\" * @param name The name to use to represent the test case\" '>'n"
    "\" */\" '>'n"
    "\"public \""
    "(file-name-sans-extension (file-name-nondirectory buffer-file-name))"
    "\"(String name) \""

    "(if jde-gen-k&r "
     "()"
     "'>'n)"
     "\"{\"'>'n"
    "\"super(name);\" '>'n"
    "\"}\">"
    "'>'n"
	"'>'n"
	"\"/**\" '>'n"  
    "\" * Set up the fixture before every test.\" '>'n"
    "\" */\" '>'n"
	"\"protected void setUp() \""
    "(if jde-gen-k&r "
     "()"
     "'>'n)"
     "\"{\"'>'n"
     "\"}\">"
	"'>'n"
	"'>'n"
	"\"/**\" '>'n"  
    "\" * Tear down the fixture after every test.\" '>'n"
    "\" */\" '>'n"
	"\"protected void tearDown() \""
    "(if jde-gen-k&r "
     "()"
     "'>'n)"
     "\"{\"'>'n"
     "\"}\">"
	"'>'n"
	"'>'n"
	"\"/**\" '>'n"
    "\" * @return Returns a TestSuite for the class \""
	"(file-name-sans-extension (file-name-nondirectory buffer-file-name))"
	"'>'n"
    "\" */\" '>'n"
	"\"public static Test suite() \""
    "(if jde-gen-k&r "
     "()"
     "'>'n)"
     "\"{\"'>'n"
	 "\"return new TestSuite(\""
	 "(file-name-sans-extension (file-name-nondirectory buffer-file-name))"
	 "\".class);\" '>'n"
     "\"}\">"
	"'>'n"
	"'>'n"
	"\"/**\" '>'n"
    "\" * A simple test that always succeeds. Can be removed.\" '>'n"
    "\" */\" '>'n"
	"\" public void testTest() \""
    "(if jde-gen-k&r "
     "()"
     "'>'n)"
     "\"{\"'>'n"
	 "\"assertTrue(true);\" '>'n"

	 "\"assertEquals(1,1);\" '>'n"
     "\"}\">"

	"'>'n"
    "\"}\">"
    "\"// \""
    "(file-name-sans-extension (file-name-nondirectory buffer-file-name))"
    "'>'n")
  "*Template for new Java JUnit class.
Setting this variable defines a template instantiation
command `jde-gen-junit-class', as a side-effect."
  :group 'jde-gen
  :type '(repeat string)
  :set '(lambda (sym val)
	  (defalias 'jde-gen-junit-class
	    (tempo-define-template "java-junit-class-buffer-template"
		       (jde-gen-read-template val)
                       nil
                       "Insert a generic Java JUnit class buffer skeleton."))
	  (set-default sym val)))



(defun jde-gen-junit-class-buffer (file)
  "Create a new Java buffer containing a JUnit class of the same name.
This command inserts the class template generated by `jde-gen-class'.
It then moves the point to the location of the class definition."
  (interactive "F")
  (find-file file)
  (jde-gen-junit-class)
  (beginning-of-buffer)
  (search-forward "{")
  (backward-char 1)
  (c-indent-exp)
  (tempo-forward-mark))

(defun jde-gen-interface-buffer (file)
  "Create a new Java buffer containing an interface of the same name.
This command inserts the interface template generated by `jde-gen-interface'.
It then moves the point to the location inside the interface."
  (interactive "FNew java interface: ")
  (find-file file)
  (jde-gen-interface)
  (beginning-of-buffer)
  (search-forward "{")
  (backward-char 1)
  (c-indent-exp)
  (tempo-forward-mark))


(defcustom jde-gen-aspect-buffer-template
  (list
    "(funcall jde-gen-boilerplate-function)"
(if jde-ola-include-cvs-vars     "\"/**\" '>'n" "")
(if jde-ola-include-cvs-vars     "\" * $Id: jde-ola.el,v 1.4 2007/11/23 17:03:23 olagus Exp $\" '>'n" "")
(if jde-ola-include-cvs-vars     "\" */\" '>'n" "")
    "\"package \" (jde-ola-find-package) \";\" '>'n '>'n"
    "\"/**\" '>'n"
    "\" * <p>Info about this aspect</p>\" '>'n"
    "\" *\" '>'n"
    "\" * @author <a href=\\\"mailto:\" (eval user-mail-address) \"\\\">\" (user-full-name) \"</a>\" '>'n"
(if jde-ola-include-cvs-vars     "\" * @version $Revision: 1.4 $\" '>'n" "")
    "\" */\" '>'n"
    "\"public aspect \""
    "(file-name-sans-extension (file-name-nondirectory buffer-file-name))"
    "\" \" (jde-gen-get-extend-class)"
    "(if jde-gen-k&r "
     "()"
     "'>'n)"
     "\" {\"'>'n"
	 "'>'p'n"
	 "\"}\">"
    "\"// \""
    "(file-name-sans-extension (file-name-nondirectory buffer-file-name))"
    "'>'n")
  "*Template for new Java aspect.
Setting this variable defines a template instantiation
command `jde-gen-aspect', as a side-effect."
  :group 'jde-gen
  :type '(repeat string)
  :set '(lambda (sym val)
	  (defalias 'jde-gen-aspect
	    (tempo-define-template "java-class-aspect-template"
		       (jde-gen-read-template val)
                       nil
                       "Insert a generic Java aspect buffer skeleton."))
	  (set-default sym val)))

(defun jde-gen-aspect-buffer (file)
  "Create a new Java buffer containing an aspect of the same name.
This command inserts the interface template generated by `jde-gen-aspect'.
It then moves the point to the location inside the interface."
  (interactive "F")
  (find-file file)
  (jde-gen-aspect)
  (beginning-of-buffer)
  (search-forward "{")
  (backward-char 1)
  (c-indent-exp)
  (tempo-forward-mark))

(defun jde-gen-read-parameters ()
	(setq do-cont t)
	(setq final-params '())
	(while do-cont
		(setq temp-type (read-from-minibuffer "Parameter type: "))
		(if (string= temp-type "") 
			(setq do-cont nil)
			(setq temp-name (read-from-minibuffer "Parameter name: "))
			(if (string= temp-name "")
		  	  (setq do-cont nil)




			  (setq temp-list (cons temp-type (cons temp-name nil)))
			  (setq final-params (append (list temp-list) final-params))
		    )
		)
	)
	final-params
)

(defun jde-gen-read-throws ()
	(setq do-cont t)
	(setq final-throws '())
	(while do-cont
		(setq temp-throws (read-from-minibuffer "Throws: "))
		(if (string= temp-throws "") 
			(setq do-cont nil)
			(setq final-throws (append (list temp-throws) final-throws))
		    
		)
	)
	final-throws
)

(defun jde-gen-read-mod ()
	(setq do-cont t)
	(setq final-mod '())
	(while do-cont
		(setq temp-mod (completing-read "Modifiers: " '(("static" 1) ("abstract" 2) ("final" 3) ("synchronized" 4) ("native" 5) ("volatile" 6) ("transient" 7)) nil t))
		(if (string= temp-mod "") 
			(setq do-cont nil)
			(setq final-mod (append (list temp-mod) final-mod))
		)
	)
	final-mod
)

(defun jde-gen-get-information ()
	"This function fetch all information about the function"
		(setq func-name	  (read-from-minibuffer "Name: "))
		(if (string= func-name "") (setq func-name "functionName"))
		(setq func-return (read-from-minibuffer "Returns: "))
		(if (string= func-return "") (setq func-return "void"))

		(setq func-pars	  (jde-gen-read-parameters))

		(setq func-vis    (completing-read "Visibility: " '(("public" 1) ("protected" 2) ("private" 3)) nil t "public"))
		(if (string= func-vis "") (setq func-vis "public"))

		(setq func-throws (jde-gen-read-throws))
		(setq func-mod	  (jde-gen-read-mod))
		()
) 

(defun jde-gen-view-doc-params (pars)
	(setq params-final-string "")
	(setq pars (reverse pars))
	(while pars
		(setq params-final-string (concat params-final-string "     * @param " (car (cdr (car pars))) " Description here\n"))
		(setq pars (cdr pars))		
	)
	params-final-string
)

(defun jde-gen-view-doc-throws (thr)
	(setq thr-final-string "")
	(setq thr (reverse thr))
	(while thr
		(setq thr-final-string (concat thr-final-string "     * @throws " (car thr) " Comment here\n"))
		(setq thr (cdr thr))		
	)
	thr-final-string
)

(defun jde-gen-view-params (pars)
	(setq params-final-string "")
	(setq pars (reverse pars))
	(while pars
		(setq params-final-string (concat params-final-string (car (car pars)) " " (car (cdr (car pars)))))
		(setq pars (cdr pars))		
		(if (car pars) (setq params-final-string (concat params-final-string ", ")))
	)
	params-final-string
)

(defun jde-gen-view-throws (thr)
	(setq thr-final-string "")
	(setq thr (reverse thr))
	(while thr
		(setq thr-final-string (concat thr-final-string (car thr) ))
		(setq thr (cdr thr))		
		(if (car thr) (setq thr-final-string (concat thr-final-string ", ")) (setq thr-final-string (concat thr-final-string " ")))
	)
	thr-final-string
)

(defun jde-gen-view-mod (mod)
	(setq mod-final-string "")
	(setq mod (reverse mod))
	(while mod
		(setq mod-final-string (concat mod-final-string (car mod) " " ))
		(setq mod (cdr mod))		
	)
	mod-final-string
)

(defcustom jde-gen-method
  '(
    "(end-of-line) '&"
	"(jde-gen-get-information)"
	"\"/**\" '>'n"
	"\"*\" '>'n"
	"\"*\" '>'n"
	"(if (not (car func-pars)) () "
		"(jde-gen-view-doc-params func-pars))"
	"(if (string= func-return \"void\") () "
		"\"* @return This function returns a \" )"

	"(if (string= func-return \"void\") () "
		"func-return)"
	"(if (string= func-return \"void\") () "
		"'>)"
	"(if (string= func-return \"void\") () "
		"'n)"
	"(if (not (car func-throws)) () "
		"(jde-gen-view-doc-throws func-throws))"
	"'>"
	"\"*/\"'>'n"
	"func-vis \" \""
	"(if (not (car func-mod)) () "
		"(jde-gen-view-mod func-mod))"
	"func-return \" \""
	"func-name \"(\""
	"(jde-gen-view-params func-pars)"
	" \") \""
	"(if (not (car func-throws)) () "
		"(concat \"throws \" (jde-gen-view-throws func-throws)))"
    "(if jde-gen-k&r "
     "()"
     "'>'n)"
     "\"{\"'>'n"
	"\"//------------------------\" '>'n"
	"\"//TODO: Add implementation\" '>'n"
	"\"//------------------------\" '>'n"
	 "'>'p'n"
	 "\"}\"'>'n"    
	)
  "*Template for creating a java method.
Setting this variable defines a template instantiation
command `jde-gen-method', as a side-effect."
  :group 'jde-gen
  :type '(repeat string)

  :set '(lambda (sym val)
   (defalias 'jde-gen-method
     (tempo-define-template
      "java-method"
      (jde-gen-read-template val)
      nil
      "Insert a method."))
   (set-default sym val)))


(defun jde-gen-ctor-get-information ()
	"This function fetch all information about the constructor"

		(setq ctor-name	  (file-name-sans-extension (file-name-nondirectory buffer-file-name)))

		(setq ctor-pars	  (jde-gen-read-parameters))

		(setq ctor-vis    (completing-read "Visibility: " '(("public" 1) ("protected" 2) ("private" 3)) nil t "public"))
		(if (string= ctor-vis "") (setq ctor-vis "public"))

		(setq ctor-throws (jde-gen-read-throws))
		()
) 


(defcustom jde-gen-ctor
  '(
    "(end-of-line) '&"
	"(jde-gen-ctor-get-information)"
	"\"/**\" '>'n"
	"\"*\" '>'n"
	"\"*\" '>'n"
	"(if (not (car ctor-pars)) () "
		"(jde-gen-view-doc-params ctor-pars))"
	"(if (not (car ctor-throws)) () "
		"(jde-gen-view-doc-throws ctor-throws))"
	"'>"
	"\"*/\"'>'n"
	"ctor-vis \" \""
	"ctor-name \"(\""
	"(jde-gen-view-params ctor-pars)"
	" \") \""
	"(if (not (car ctor-throws)) () "
		"(concat \"throws \" (jde-gen-view-throws ctor-throws)))"
    "(if jde-gen-k&r "
     "()"
     "'>'n)"
     "\"{\"'>'n"
	"\"//------------------------\" '>'n"
	"\"//TODO: Add implementation\" '>'n"
	"\"//------------------------\" '>'n"
	 "'>'p'n"
	 "\"}\"'>'n"    
	)
  "*Template for creating a java constructor.
Setting this variable defines a template instantiation
command `jde-gen-ctor', as a side-effect."
  :group 'jde-gen
  :type '(repeat string)
  :set '(lambda (sym val)
   (defalias 'jde-gen-ctor
     (tempo-define-template
      "java-constructor"
      (jde-gen-read-template val)
      nil
      "Insert a constructor."))
   (set-default sym val)))


(define-key jde-mode-map (kbd "C-c C-v C-m") 'jde-gen-method)
(define-key jde-mode-map (kbd "C-c C-v C-g") 'jde-gen-ctor)
(define-key jde-mode-map (kbd "C-c C-v C-a") 'jde-run-menu-run-applet)
(define-key jde-mode-map (kbd "C-c C-v C-b") 'jde-build)
(define-key jde-mode-map (kbd "C-c C-v C-c") 'jde-compile)
(define-key jde-mode-map (kbd "C-c C-v C-d") 'jde-debug)
(define-key jde-mode-map (kbd "C-c C-v C-f") 'jde-find)
(define-key jde-mode-map (kbd "C-c C-v x") 'jde-wiz-implement-interface)
(define-key jde-mode-map (kbd "C-c C-v j") 'jde-javadoc-generate-javadoc-template)
(define-key jde-mode-map (kbd "C-c C-v C-k") 'bsh)
(define-key jde-mode-map (kbd "C-c C-v C-l") 'jde-gen-println)
(define-key jde-mode-map (kbd "C-c C-v C-n") 'jde-browse-jdk-doc)
(define-key jde-mode-map (kbd "C-c C-v C-p") 'jde-save-project)
(define-key jde-mode-map (kbd "C-c C-v C-q") 'jde-wiz-update-class-list)
(define-key jde-mode-map (kbd "C-c C-v C-r") 'jde-run)
(define-key jde-mode-map (kbd "C-c C-v C-s") 'speedbar-frame-mode)
(define-key jde-mode-map (kbd "C-c C-v C-t") 'jde-db-menu-debug-applet)
(define-key jde-mode-map (kbd "C-c C-v C-w") 'jde-help-symbol)
(define-key jde-mode-map (kbd "C-c C-v C-y") 'jde-open-class-source)
(define-key jde-mode-map (kbd "C-c C-v C-z") 'jde-import-find-and-import)
(define-key jde-mode-map (kbd "C-c C-v C-[") 'jde-run-etrace-prev)
(define-key jde-mode-map (kbd "C-c C-v C-]") 'jde-run-etrace-next)
(define-key jde-mode-map (kbd "C-c C-v C-?") 'jde-complete-at-point-menu)
(define-key jde-mode-map (kbd "C-c C-v ?") 'jde-complete-at-point)

(define-key global-map (kbd "C-c C-v c") 'jde-gen-class-buffer2)
(define-key global-map (kbd "C-c C-v i") 'jde-gen-interface-buffer)

(define-key global-map [menu-bar files jde-new Class\.\.\.] '(menu-item "Class..." jde-gen-class-buffer2 :help "Create a new Class buffer"))

(define-key-after
  (lookup-key global-map [menu-bar files jde-new])
  [newaspect]
  '(menu-item "Aspect..." jde-gen-aspect-buffer
	      :help "Create a new AspectJ buffer")
  'Class\.\.\.)

(define-key-after
  (lookup-key global-map [menu-bar files jde-new])
  [newsingleton]
  '(menu-item "Singleton..." jde-gen-class-buffer-singleton
	      :help "Create a new Singleton buffer")
  'newaspect)

(define-key-after
  (lookup-key global-map [menu-bar files jde-new])
  [newinterface]
  '(menu-item "Interface..." jde-gen-interface-buffer
	      :help "Create a new Interface buffer")
  'newsingleton)

(define-key-after
  (lookup-key global-map [menu-bar files jde-new])
  [newjunitclass]
  '(menu-item "JUnit Class..." jde-gen-junit-class-buffer
	      :help "Create a new JUnit Class buffer")
  'newinterface)

(define-key-after
      (lookup-key jde-mode-map [menu-bar JDE Code\ Generation Templates])
      [method]
      '("Method..." . jde-gen-method)
      'Println\.\.\.)

(define-key-after
      (lookup-key jde-mode-map [menu-bar JDE Code\ Generation Templates])
      [ctor]
      '("Constructor..." . jde-gen-ctor)
      'method)



(provide 'jde-ola)


;; Change History 

;;
;; $Log: jde-ola.el,v $
;; Revision 1.4  2007/11/23 17:03:23  olagus
;; Added new changes and additions
;;
;; Revision 1.3  2007/05/29 13:43:45  olagus
;; Added lots of updates
;;
;; Revision 1.2  2006/08/03 16:45:33  olagus
;; Some fixes regarding unicode
;;
;; Revision 1.1.1.1  2006/07/19 14:20:36  olagus
;; Initial import
;;
;; Revision 1.02  2002/09/25 11:22:03  olagus
;; Added TODO-comments on various places and changed tags in a few doc-comments.
;;
;; Revision 1.01  2002/09/05 12:03:06  olagus
;; Changed the menu-binding for JUnit Class to jde-gen-junit-class-buffer, as it should've been.
;;
;; Revision 1.0  2002/09/05 12:03:06  olagus
;; Initial checkin.
;;

;; End of jde-ola.el
