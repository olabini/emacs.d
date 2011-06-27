
(defvar rspec-tempo-tags nil
  "Tempo tags for RSpec minor mode")

(defvar rspec-and-ruby-tempo-tags nil
  "Tempo tags for RSpec minor mode")

(tempo-define-template "rspec-describe"
                       '(> "describe " > (p "Describe: ") > " do" > n > r > n "end" > n )
                       "de"
                       ""
                       'rspec-tempo-tags)

(tempo-define-template "rspec-it"
                       '(> "it \"" > (p "It: ") > "\" do" > n > r > n "end" > n )
                       "it"
                       ""
                       'rspec-tempo-tags)

(tempo-define-template "rspec-should"
                       '(> "should " r >)
                       "sh"
                       ""
                       'rspec-tempo-tags)

(tempo-define-template "rspec-should-not"
                       '(> "should_not " r >)
                       "shn"
                       ""
                       'rspec-tempo-tags)

(tempo-define-template "rspec-be-empty"
                       '(> "be_empty " > n > r)
                       "bee"
                       ""
                       'rspec-tempo-tags)

(setq rspec-and-ruby-tempo-tags (append rspec-tempo-tags ruby-tempo-tags))

(defvar rspec-mode-map nil "Keymap used in ruby-rspec mode.")

(if rspec-mode-map
    nil
    (setq rspec-mode-map (copy-keymap ruby-mode-map))
    (define-key rspec-mode-map "\C-c\C-d" 'rspec-run-ruby)
    (define-key rspec-mode-map "\C-c\C-f" 'rspec-run-jruby)
    (define-key rspec-mode-map "\C-c\C-cs" 'rspec-run-current-example)
    (define-key rspec-mode-map [f8] 'rspec-run-current-example))

(define-minor-mode rspec-mode
    ""
  ;; initial value.
  nil
  ;;indicator for the mode line.
  " RSpec"
  ;;keymap
  rspec-mode-map
  (rspec-mode-setup))

(defun rspec-run-ruby ()
    "Runs rspec on current buffer"
    (interactive)
    (compile (concat "/usr/bin/env ruby -S spec " (buffer-file-name)) t))

(defun rspec-run-jruby ()
    "Runs rspec on current buffer with JRuby"
    (interactive)
    (compile (concat "jruby -S spec " (buffer-file-name)) t))

(defun rspec-run-current-example ()
  "Run spec where the point is"
  (interactive)
  (compile (concat "/usr/bin/env ruby -S spec " " --line " (substring (what-line) 5) " " (buffer-file-name)) t))

(defun rspec-mode-setup ()
  (if rspec-mode 
      (tempo-use-tag-list 'rspec-and-ruby-tempo-tags)))

(provide 'rspec)
