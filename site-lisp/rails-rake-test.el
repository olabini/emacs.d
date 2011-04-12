
(defvar rails-rake:test-history (list))

(defun rails-rake:test-task (task)
  "Run a Rake task in RAILS_ROOT"
  (interactive (rails-completing-read "What task run" (rails-rake:list-of-tasks-without-tests)
                                      'rails-rake:test-history nil))
  (when task
    (rails-script:run "rake" (list task) 'rails-test:compilation-mode)))

(provide 'rails-rake-test)
