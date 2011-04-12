;; jde-maven.el --- Use Apache Maven to build your JDE projects

;;
;; Author: Ola Gustafsson | ola.gustafsson@itc.ki.se


(defcustom jde-maven-program "maven"
  "*Specifies name of maven program/script."
 :group 'jde-project
 :type 'string)

(defcustom jde-maven-args "-E"
  "*Specifies arguments to be passed to make program."
  :group 'jde-project
  :type 'string)

(defcustom jde-maven-default-target ""
  "*Specifies the default target if no other target is specified."
  :group 'jde-project
  :type 'string)

(defcustom jde-maven-read-target nil
"*Specify whether to prompt for a build target. If non-nil, the 
jde-maven-build command prompts you for an ant target."
  :group 'jde-project
  :type 'boolean)

(defcustom jde-maven-send-buffer t
"*Specify whether to send the file in buffer as argument."
  :group 'jde-project
  :type 'boolean)

(defvar jde-maven-interactive-target ""
"Target to use for the build in place of the default target.")

(defvar jde-maven-interactive-target-arg-history nil
"History of targets entered in the minibuffer.")

(defcustom jde-maven-read-args nil
"*Specify whether to prompt for additional arguments to pass to ant. If non-nil, the 
jde-ant-build command prompts you for the additional arguments."
  :group 'jde-project
  :type 'boolean)

(defvar jde-maven-interactive-args ""
"Additional arguments for the maven command.")

(defvar jde-maven-interactive-args-arg-history nil
"History of targets entered in the minibuffer.")


(defun jde-build-maven-command (target more-args)
  "Constructs the java maven command."
  (let (maven-command)


;;Code added by Ola Gustafsson (Ola.Gustafsson@lime.ki.se)
	(if jde-maven-send-buffer
	    (setq maven-command
		  (concat jde-maven-program " \"-Dbuffer=" buffer-file-name "\" "))
	    (setq maven-command (concat jde-maven-program " ")))
    

    (if (not (string= jde-maven-args ""))
	(setq maven-command (concat maven-command jde-maven-args " ")))

    (if (not (string= more-args ""))
	(setq maven-command (concat maven-command more-args " ")))

    (if (not (string= target ""))
	(setq maven-command (concat maven-command target " "))
      (setq maven-command (concat maven-command jde-maven-default-target " ")))


    maven-command))

;;;###autoload
(defun jde-maven-build ()
  "Build the current project using Maven."
  (interactive)

  (if jde-maven-read-target
      (setq jde-maven-interactive-target
	      (read-from-minibuffer 
	       "Target to build: "
	       jde-maven-interactive-target
	       nil nil
	       '(jde-maven-interactive-target-arg-history . 1))))

  (if jde-maven-read-args
      (setq jde-maven-interactive-args
	      (read-from-minibuffer 
	       "Additional build args: "
	       jde-maven-interactive-args
	       nil nil
	       '(jde-maven-interactive-args-arg-history . 1))))


  (let ((compile-command (jde-build-maven-command jde-maven-interactive-target jde-maven-interactive-args)))
    (when compile-command
      ;; Force save-some-buffers to use the minibuffer
      ;; to query user about whether to save modified buffers.
      ;; Otherwise, when user invokes the command from
      ;; menu, save-some-buffers tries to popup a menu
      ;; which seems not to be supported--at least on
      ;; the PC.
      (if (and (eq system-type 'windows-nt)
	       (not jde-xemacsp))
          (let ((temp last-nonmenu-event))
            ;; The next line makes emacs think that the command
            ;; was invoked from the minibuffer, even when it
            ;; is actually invoked from the menu-bar.
            (setq last-nonmenu-event t)
            (save-some-buffers (not compilation-ask-about-save) nil)
            (setq last-nonmenu-event temp))
        (save-some-buffers (not compilation-ask-about-save) nil))

      (message "%s" compile-command)
      (let ((default-directory (file-name-directory (jde-find-project-file default-directory))))
        (compile-internal compile-command "No more errors")))))



(provide 'jde-maven)

;; End of jde-maven.el
