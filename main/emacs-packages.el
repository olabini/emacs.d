(require 'package)

(setq package-list '(
                     ac-inf-ruby
                     ack-and-a-half
                     adoc-mode
                     apache-mode
                     asciidoc
                     auto-complete
                     bigint
                     blank-mode
                     bundler
                     caml
                     cider
                     clojure-mode
                     clojure-project-mode
                     clojure-test-mode
                     clojurescript-mode
                     coffee-mode
                     color-theme
                     command-t
                     crontab-mode
                     csharp-mode
                     csv-mode
                     d-mode
                     dart-mode
                     dash
                     debpaste
                     dired-isearch
                     dired-rainbow
                     dired-single
                     dna-mode
                     dockerfile-mode
                     ecb
                     edit-server
                     elein
                     eimp
                     emamux
                     epl
                     epresent
                     erc-crypt
                     erc-image
                     erc-view-log
                     erlang
                     feature-mode
                     fixme-mode
                     fringe-helper
                     fsharp-mode
                     fuel
                     full-ack
                     fullscreen-mode
                     git-blame
                     git-commit-mode
                     git-rebase-mode
                     github-clone
                     gitignore-mode
                     go-mode
                     google-maps
                     google-this
                     gradle-mode
                     groovy-mode
                     haml-mode
                     handlebars-mode
                     haskell-mode
                     htmlize
                     ibuffer-git
                     inf-ruby
                     io-mode
                     ioccur
                     j-mode
                     js2-mode
                     js3-mode
                     json-mode
                     lein
                     less-css-mode
                     levenshtein
                     magit
                     malabar-mode
                     markdown-mode
                     markdown-mode+
                     markup-faces
                     midje-mode
                     minitest
                     mmm-mode
                     multi-term
                     muttrc-mode
                     nodejs-repl
                     nrepl
                     nrepl-ritz
                     omnisharp
                     org
                     org-present
                     oz
                     pabbrev
                     paredit
                     php-mode
                     pip-requirements
                     pkg-info
                     popup
                     pos-tip
                     pretty-lambdada
                     processing-mode
                     project-mode
                     puppet-mode
                     python-mode
                     quack
                     racket-mode
                     rainbow-delimiters
                     rainbow-mode
                     rbenv
                     rhtml-mode
                     rinari
                     rspec-mode
                     ruby-additional
                     ruby-block
                     ruby-compilation
                     ruby-dev
                     ruby-electric
                     ruby-end
                     ruby-hash-syntax
                     ruby-interpolation
                     ruby-refactor
                     ruby-test-mode
                     ruby-tools
                     rust-mode
                     rvm
                     s
                     sass-mode
                     scala-mode
                     scala-mode2
                     scss-mode
                     shell-here
                     slime
                     slime-clj
                     slime-js
                     slime-repl
                     slime-ritz
                     sml-mode
                     sml-modeline
                     snippet
                     tuareg
                     twittering-mode
                     url-shortener
                     w3m
                     wc-mode
                     web-beautify
                     wgrep
                     wgrep-ack
                     xml-rpc
                     yaml-mode
                     s
                     js2-refactor
                     ag
                     helm
                     helm-ag
                     helm-rb
                     helm-git
                     gist
                     gh
                     github-clone
                     go-autocomplete
                     go-eldoc
                     ))

(setq package-archives '(("elpa" . "http://tromey.com/elpa/")
                         ("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

(package-initialize)

(defun ensure-packages ()
  (interactive)
  (unless package-archive-contents (package-refresh-contents))
  (dolist (package package-list)
    (unless (package-installed-p package)
      (package-install package))))

(ensure-packages)

(provide 'emacs-packages)
