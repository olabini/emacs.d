(eval-when-compile    (require 'color-theme))
(defun color-theme-ola-original ()
  (interactive)
  (color-theme-install
   '(color-theme-ola-original
     ((background-color . "black")
      (background-mode . dark)
      (border-color . "black")
      (cursor-color . "white")
      (foreground-color . "white")
      (mouse-color . "black"))
     ((compilation-message-face . underline)
      (erc-button-face . erc-button)
      (erc-button-mouse-face . highlight)
      (erc-button-nickname-face . erc-nick-default-face)
      (ibuffer-deletion-face . error)
      (ibuffer-filter-group-name-face . bold)
      (ibuffer-marked-face . warning)
      (ibuffer-title-face . font-lock-type-face)
      (list-matching-lines-buffer-name-face . underline)
      (list-matching-lines-face . match)
      (org-goto-interface . outline)
      (tags-tag-face . default)
      (widget-mouse-face . highlight))
     (default ((t (:stipple nil :background "black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 136 :width normal :foundry "bitstream" :family "Menlo"))))
     (bg:erc-color-face0 ((t (:background "White"))))
     (bg:erc-color-face1 ((t (:background "black"))))
     (bg:erc-color-face10 ((t (:background "lightblue1"))))
     (bg:erc-color-face11 ((t (:background "cyan"))))
     (bg:erc-color-face12 ((t (:background "blue"))))
     (bg:erc-color-face13 ((t (:background "deeppink"))))
     (bg:erc-color-face14 ((t (:background "gray50"))))
     (bg:erc-color-face15 ((t (:background "gray90"))))
     (bg:erc-color-face2 ((t (:background "blue4"))))
     (bg:erc-color-face3 ((t (:background "green4"))))
     (bg:erc-color-face4 ((t (:background "red"))))
     (bg:erc-color-face5 ((t (:background "brown"))))
     (bg:erc-color-face6 ((t (:background "purple"))))
     (bg:erc-color-face7 ((t (:background "orange"))))
     (bg:erc-color-face8 ((t (:background "yellow"))))
     (bg:erc-color-face9 ((t (:background "green"))))
     (bold ((t (:bold t :weight bold))))
     (bold-italic ((t (:italic t :bold t :slant italic :weight bold))))
     (border ((t (nil))))
     (buffer-menu-buffer ((t (:bold t :weight bold))))
     (button ((t (:underline t :foreground "cyan1"))))
     (c-annotation-face ((t (:foreground "gray"))))
     (c-nonbreakable-space-face ((t (:bold t :weight bold :background "white" :foreground "black"))))
     (calendar-today ((t (:underline t))))
     (cider-error-highlight-face ((t (:underline (:style wave :color "red")))))
     (cider-warning-highlight-face ((t (:underline (:style wave :color "yellow")))))
     (clojure-test-error-face ((t (:background "orange4"))))
     (clojure-test-failure-face ((t (:background "firebrick"))))
     (clojure-test-success-face ((t (:background "green" :foreground "black"))))
     (comint-highlight-input ((t (:bold t :weight bold))))
     (comint-highlight-prompt ((t (:foreground "cyan"))))
     (compilation-column-number ((t (:foreground "RoyalBlue"))))
     (compilation-error ((t (:bold t :weight bold :foreground "Pink"))))
     (compilation-info ((t (:bold t :weight bold :foreground "Green1"))))
     (compilation-line-number ((t (:foreground "MediumBlue"))))
     (compilation-mode-line-exit ((t (:bold t :foreground "ForestGreen" :weight bold))))
     (compilation-mode-line-fail ((t (:bold t :foreground "Red1" :weight bold))))
     (compilation-mode-line-run ((t (:bold t :foreground "DarkOrange" :weight bold))))
     (compilation-warning ((t (:bold t :weight bold :foreground "DarkOrange"))))
     (completions-annotations ((t (:italic t :slant italic))))
     (completions-common-part ((t (:family "Menlo" :foundry "bitstream" :width normal :weight normal :slant normal :underline nil :overline nil :strike-through nil :box nil :inverse-video nil :foreground "white" :background "black" :stipple nil :height 136))))
     (completions-first-difference ((t (:bold t :weight bold))))
     (cursor ((t (:background "white"))))
     (custom-button ((t (:background "lightgrey" :foreground "black" :box (:line-width 2 :style released-button)))))
     (custom-button-mouse ((t (:background "grey90" :foreground "black" :box (:line-width 2 :style released-button)))))
     (custom-button-pressed ((t (:background "lightgrey" :foreground "black" :box (:line-width 2 :style pressed-button)))))
     (custom-button-pressed-unraised ((t (:underline t :foreground "violet"))))
     (custom-button-unraised ((t (:underline t))))
     (custom-changed ((t (:background "blue1" :foreground "white"))))
     (custom-comment ((t (:background "dim gray"))))
     (custom-comment-tag ((t (:foreground "gray80"))))
     (custom-documentation ((t (nil))))
     (custom-face-tag ((t (:bold t :weight bold :foreground "light blue"))))
     (custom-group-subtitle ((t (:bold t :weight bold))))
     (custom-group-tag ((t (:bold t :family "Sans Serif" :foreground "light blue" :weight bold :height 1.2))))
     (custom-group-tag-1 ((t (:bold t :family "Sans Serif" :foreground "pink" :weight bold :height 1.2))))
     (custom-invalid ((t (:background "red1" :foreground "yellow1"))))
     (custom-link ((t (:underline t :foreground "cyan1"))))
     (custom-modified ((t (:background "blue1" :foreground "white"))))
     (custom-rogue ((t (:background "black" :foreground "pink"))))
     (custom-saved ((t (:underline t))))
     (custom-set ((t (:background "white" :foreground "blue1"))))
     (custom-state ((t (:foreground "lime green"))))
     (custom-themed ((t (:background "blue1" :foreground "white"))))
     (custom-variable-button ((t (:bold t :underline t :weight bold))))
     (custom-variable-tag ((t (:bold t :foreground "light blue" :weight bold))))
     (custom-visibility ((t (:underline t :foreground "cyan1" :height 0.8))))
     (diary ((t (:foreground "yellow1"))))
     (dired-directory ((t (:foreground "firebrick"))))
     (dired-flagged ((t (:bold t :weight bold :foreground "Pink"))))
     (dired-header ((t (:foreground "SteelBlue"))))
     (dired-ignored ((t (:foreground "grey70"))))
     (dired-mark ((t (:foreground "gray"))))
     (dired-marked ((t (:bold t :weight bold :foreground "DarkOrange"))))
     (dired-perm-write ((t (:foreground "DarkGreen"))))
     (dired-symlink ((t (:foreground "MediumBlue"))))
     (dired-warning ((t (:bold t :foreground "Pink" :weight bold))))
     (eieio-custom-slot-tag-face ((t (:foreground "light blue"))))
     (eldoc-highlight-function-argument ((t (:bold t :weight bold))))
     (erc-action-face ((t (:bold t :weight bold))))
     (erc-bold-face ((t (:bold t :weight bold))))
     (erc-button ((t (:bold t :weight bold))))
     (erc-command-indicator-face ((t (:bold t :weight bold))))
     (erc-current-nick-face ((t (:bold t :foreground "DarkTurquoise" :weight bold))))
     (erc-dangerous-host-face ((t (:foreground "red"))))
     (erc-default-face ((t (nil))))
     (erc-direct-msg-face ((t (:foreground "IndianRed"))))
     (erc-error-face ((t (:foreground "red"))))
     (erc-fool-face ((t (:foreground "dim gray"))))
     (erc-header-line ((t (:background "grey90" :foreground "grey20"))))
     (erc-input-face ((t (:foreground "brown"))))
     (erc-inverse-face ((t (:background "Black" :foreground "White"))))
     (erc-keyword-face ((t (:bold t :foreground "pale green" :weight bold))))
     (erc-my-nick-face ((t (:bold t :foreground "brown" :weight bold))))
     (erc-nick-default-face ((t (:bold t :weight bold))))
     (erc-nick-msg-face ((t (:bold t :foreground "IndianRed" :weight bold))))
     (erc-notice-face ((t (:bold t :foreground "SlateBlue" :weight bold))))
     (erc-pal-face ((t (:bold t :foreground "Magenta" :weight bold))))
     (erc-prompt-face ((t (:bold t :background "lightBlue2" :foreground "Black" :weight bold))))
     (erc-timestamp-face ((t (:bold t :foreground "green" :weight bold))))
     (erc-underline-face ((t (:underline t))))
     (error ((t (:bold t :foreground "Pink" :weight bold))))
     (escape-glyph ((t (:foreground "cyan"))))
     (fg:erc-color-face0 ((t (:foreground "White"))))
     (fg:erc-color-face1 ((t (:foreground "black"))))
     (fg:erc-color-face10 ((t (:foreground "lightblue1"))))
     (fg:erc-color-face11 ((t (:foreground "cyan"))))
     (fg:erc-color-face12 ((t (:foreground "blue"))))
     (fg:erc-color-face13 ((t (:foreground "deeppink"))))
     (fg:erc-color-face14 ((t (:foreground "gray50"))))
     (fg:erc-color-face15 ((t (:foreground "gray90"))))
     (fg:erc-color-face2 ((t (:foreground "blue4"))))
     (fg:erc-color-face3 ((t (:foreground "green4"))))
     (fg:erc-color-face4 ((t (:foreground "red"))))
     (fg:erc-color-face5 ((t (:foreground "brown"))))
     (fg:erc-color-face6 ((t (:foreground "purple"))))
     (fg:erc-color-face7 ((t (:foreground "orange"))))
     (fg:erc-color-face8 ((t (:foreground "yellow"))))
     (fg:erc-color-face9 ((t (:foreground "green"))))
     (file-name-shadow ((t (:foreground "grey70"))))
     (fixed-pitch ((t (:family "Monospace"))))
     (font-lock-builtin-face ((t (:foreground "SlateBlue"))))
     (font-lock-comment-delimiter-face ((t (:foreground "DarkGreen"))))
     (font-lock-comment-face ((t (:foreground "DarkGreen"))))
     (font-lock-constant-face ((t (:foreground "gray"))))
     (font-lock-doc-face ((t (:foreground "RoyalBlue"))))
     (font-lock-function-name-face ((t (:foreground "firebrick"))))
     (font-lock-keyword-face ((t (:foreground "MediumBlue"))))
     (font-lock-negation-char-face ((t (nil))))
     (font-lock-preprocessor-face ((t (:foreground "SlateBlue"))))
     (font-lock-regexp-grouping-backslash ((t (:bold t :weight bold))))
     (font-lock-regexp-grouping-construct ((t (:bold t :weight bold))))
     (font-lock-string-face ((t (:foreground "RoyalBlue"))))
     (font-lock-type-face ((t (:foreground "SteelBlue"))))
     (font-lock-variable-name-face ((t (:foreground "SeaGreen"))))
     (font-lock-warning-face ((t (:bold t :weight bold :foreground "Pink"))))
     (fringe ((t (:background "grey10"))))
     (glyphless-char ((t (:height 0.6))))
     (header-line ((t (:box (:line-width -1 :style released-button) :background "grey20" :foreground "grey90" :box nil))))
     (help-argument-name ((t (:italic t :slant italic))))
     (highlight ((t (:background "darkolivegreen"))))
     (holiday ((t (:background "chocolate4"))))
     (ido-first-match ((t (:bold t :weight bold))))
     (ido-incomplete-regexp ((t (:bold t :foreground "Pink" :weight bold))))
     (ido-indicator ((t (:background "red1" :foreground "yellow1" :width condensed))))
     (ido-only-match ((t (:foreground "ForestGreen"))))
     (ido-subdir ((t (:foreground "red1"))))
     (ido-virtual ((t (:foreground "SlateBlue"))))
     (info-header-node ((t (:italic t :bold t :weight bold :slant italic :foreground "white"))))
     (info-header-xref ((t (:foreground "cyan1" :underline t))))
     (info-menu-header ((t (:bold t :family "Sans Serif" :weight bold))))
     (info-menu-star ((t (:foreground "red1"))))
     (info-node ((t (:italic t :bold t :foreground "white" :slant italic :weight bold))))
     (info-title-1 ((t (:bold t :weight bold :family "Sans Serif" :height 1.728))))
     (info-title-2 ((t (:bold t :family "Sans Serif" :weight bold :height 1.44))))
     (info-title-3 ((t (:bold t :weight bold :family "Sans Serif" :height 1.2))))
     (info-title-4 ((t (:bold t :family "Sans Serif" :weight bold))))
     (info-xref ((t (:underline t :foreground "cyan1"))))
     (info-xref-visited ((t (:foreground "violet" :underline t))))
     (ioke-font-lock-api-cell-face ((t (:foreground "light goldenrod"))))
     (ioke-font-lock-expression-face ((t (:foreground "light goldenrod"))))
     (ioke-font-lock-known-kind-face ((t (:foreground "DarkRed"))))
     (ioke-font-lock-number-face ((t (:foreground "LightSalmon"))))
     (ioke-font-lock-object-assign-face ((t (:foreground "LightSteelBlue"))))
     (ioke-font-lock-object-mimic-face ((t (:foreground "medium blue"))))
     (ioke-font-lock-operator-name-face ((t (:foreground "CornflowerBlue"))))
     (ioke-font-lock-operator-symbol-face ((t (:foreground "deep sky blue"))))
     (ioke-font-lock-regexp-face ((t (:foreground "DeepPink"))))
     (isearch ((t (:background "palevioletred2" :foreground "brown4"))))
     (isearch-fail ((t (:background "red4"))))
     (italic ((t (:italic t :slant italic))))

     ;; JDE (Java)
     (jde-bug-breakpoint-cursor ((t (:background "brown" :foreground "cyan"))))
     (jde-db-active-breakpoint-face ((t (:background "red" :foreground "black"))))
     (jde-db-requested-breakpoint-face ((t (:background "yellow" :foreground "black"))))
     (jde-db-spec-breakpoint-face ((t (:background "green" :foreground "black"))))
     (jde-java-font-lock-api-face ((t (:foreground "DarkRed"))))
     (jde-java-font-lock-bold-face ((t (:bold t :weight bold))))
     (jde-java-font-lock-code-face ((t (nil))))
     (jde-java-font-lock-constant-face ((t (:foreground "BlueViolet"))))
     (jde-java-font-lock-constructor-face ((t (:foreground "LightSteelBlue"))))
     (jde-java-font-lock-doc-tag-face ((t (:foreground "light coral"))))
     (jde-java-font-lock-italic-face ((t (:italic t :slant italic))))
     (jde-java-font-lock-javadoc-face ((t (:foreground "RoyalBlue"))))
     (jde-java-font-lock-link-face ((t (:foreground "blue" :underline t :slant normal))))
     (jde-java-font-lock-modifier-face ((t (:foreground "LightSteelBlue"))))
     (jde-java-font-lock-number-face ((t (:foreground "LightSalmon"))))
     (jde-java-font-lock-operator-face ((t (:foreground "medium blue"))))
     (jde-java-font-lock-package-face ((t (:foreground "SlateGray4"))))
     (jde-java-font-lock-pre-face ((t (nil))))
     (jde-java-font-lock-private-face ((t (:foreground "LightSteelBlue"))))
     (jde-java-font-lock-protected-face ((t (:foreground "LightSteelBlue"))))
     (jde-java-font-lock-public-face ((t (:foreground "LightSteelBlue"))))
     (jde-java-font-lock-underline-face ((t (:underline t))))
     (lazy-highlight ((t (:background "paleturquoise4"))))
     (link ((t (:foreground "cyan1" :underline t))))
     (link-visited ((t (:underline t :foreground "violet"))))
     (match ((t (:background "RoyalBlue3"))))
     (menu ((t (nil))))
     (minibuffer-prompt ((t (:foreground "cyan"))))
     (mmm-cleanup-submode-face ((t (:background "Wheat"))))
     (mmm-code-submode-face ((t (:background "LavenderBlush2" :foreground "Black"))))
     (mmm-comment-submode-face ((t (:background "tan1" :foreground "Red"))))
     (mmm-declaration-submode-face ((t (:background "Aquamarine"))))
     (mmm-default-submode-face ((t (:background "gray85"))))
     (mmm-delimiter-face ((t (nil))))
     (mmm-init-submode-face ((t (:background "Pink"))))
     (mmm-output-submode-face ((t (:background "LemonChiffon2" :foreground "Black"))))
     (mmm-special-submode-face ((t (:background "MediumSpringGreen"))))
     (mode-line ((t (:background "grey75" :foreground "black" :box (:line-width -1 :style released-button)))))
     (mode-line-buffer-id ((t (:bold t :weight bold))))
     (mode-line-emphasis ((t (:bold t :weight bold))))
     (mode-line-highlight ((t (:box (:line-width 2 :color "grey40" :style released-button)))))
     (mode-line-inactive ((t (:background "grey30" :foreground "grey80" :box (:line-width -1 :color "grey40" :style nil) :weight light))))
     (mouse ((t (nil))))
     (next-error ((t (:foreground "black" :background "light gray"))))
     (nobreak-space ((t (:foreground "cyan" :underline t))))
     (nxml-attribute-colon-face ((t (:foreground "#33aaff"))))
     (nxml-attribute-local-name-face ((t (:foreground "#33aaff"))))
     (nxml-attribute-prefix-face ((t (:foreground "#33aaff"))))
     (nxml-attribute-value-delimiter-face ((t (:bold t :weight bold))))
     (nxml-attribute-value-face ((t (:foreground "gray"))))
     (nxml-cdata-section-CDATA-face ((t (:foreground "#33aaff"))))
     (nxml-cdata-section-content-face ((t (nil))))
     (nxml-cdata-section-delimiter-face ((t (:bold t :weight bold))))
     (nxml-char-ref-delimiter-face ((t (nil))))
     (nxml-char-ref-number-face ((t (nil))))
     (nxml-comment-content-face ((t (:italic t :slant italic))))
     (nxml-comment-delimiter-face ((t (:bold t :weight bold))))
     (nxml-delimited-data-face ((t (:foreground "gray"))))
     (nxml-delimiter-face ((t (:bold t :weight bold))))
     (nxml-element-colon-face ((t (:foreground "#33aaff"))))
     (nxml-element-local-name-face ((t (:foreground "#33aaff"))))
     (nxml-element-prefix-face ((t (:foreground "#33aaff"))))
     (nxml-entity-ref-delimiter-face ((t (nil))))
     (nxml-entity-ref-name-face ((t (nil))))
     (nxml-glyph-face ((t (:background "light grey" :foreground "black" :slant normal :weight normal :foundry "misc" :family "fixed"))))
     (nxml-hash-face ((t (:foreground "#33aaff"))))
     (nxml-markup-declaration-delimiter-face ((t (:bold t :weight bold))))
     (nxml-name-face ((t (:foreground "#33aaff"))))
     (nxml-namespace-attribute-colon-face ((t (:foreground "#33aaff"))))
     (nxml-namespace-attribute-prefix-face ((t (:foreground "#33aaff"))))
     (nxml-namespace-attribute-value-delimiter-face ((t (:bold t :weight bold))))
     (nxml-namespace-attribute-value-face ((t (:foreground "gray"))))
     (nxml-namespace-attribute-xmlns-face ((t (:foreground "#33aaff"))))
     (nxml-processing-instruction-content-face ((t (:foreground "gray"))))
     (nxml-processing-instruction-delimiter-face ((t (:bold t :weight bold))))
     (nxml-processing-instruction-target-face ((t (:foreground "#33aaff"))))
     (nxml-prolog-keyword-face ((t (:foreground "#33aaff"))))
     (nxml-prolog-literal-content-face ((t (:foreground "gray"))))
     (nxml-prolog-literal-delimiter-face ((t (:bold t :weight bold))))
     (nxml-ref-face ((t (nil))))
     (nxml-tag-delimiter-face ((t (:bold t :weight bold))))
     (nxml-tag-slash-face ((t (:foreground "#33aaff"))))
     (nxml-text-face ((t (nil))))

     ;; org-mode
     (org-agenda-calendar-event ((t (:family "Menlo" :foundry "bitstream" :width normal :weight normal :slant normal :underline nil :overline nil :strike-through nil :box nil :inverse-video nil :foreground "white" :background "black" :stipple nil :height 136))))
     (org-agenda-calendar-sexp ((t (:family "Menlo" :foundry "bitstream" :width normal :weight normal :slant normal :underline nil :overline nil :strike-through nil :box nil :inverse-video nil :foreground "white" :background "black" :stipple nil :height 136))))
     (org-agenda-clocking ((t (:background "SkyBlue4"))))
     (org-agenda-column-dateline ((t (:family "Menlo" :weight normal :slant normal :underline nil :strike-through nil :background "grey30" :height 136))))
     (org-agenda-current-time ((t (:foreground "LightGoldenrod"))))
     (org-agenda-date ((t (:foreground "LightSkyBlue"))))
     (org-agenda-date-today ((t (:italic t :bold t :foreground "LightSkyBlue" :slant italic :weight bold))))
     (org-agenda-date-weekend ((t (:bold t :foreground "LightSkyBlue" :weight bold))))
     (org-agenda-diary ((t (:family "Menlo" :foundry "bitstream" :width normal :weight normal :slant normal :underline nil :overline nil :strike-through nil :box nil :inverse-video nil :foreground "white" :background "black" :stipple nil :height 136))))
     (org-agenda-dimmed-todo-face ((t (:foreground "grey50"))))
     (org-agenda-done ((t (:foreground "PaleGreen"))))
     (org-agenda-filter-category ((t (:box (:line-width -1 :style released-button) :foreground "black" :background "grey75"))))
     (org-agenda-filter-tags ((t (:box (:line-width -1 :style released-button) :foreground "black" :background "grey75"))))
     (org-agenda-restriction-lock ((t (:background "skyblue4"))))
     (org-agenda-structure ((t (:foreground "LightSkyBlue"))))
     (org-archived ((t (:foreground "grey70"))))
     (org-block ((t (:foreground "grey70"))))
     (org-block-background ((t (nil))))
     (org-block-begin-line ((t (:foreground "DarkGreen"))))
     (org-block-end-line ((t (:foreground "DarkGreen"))))
     (org-checkbox ((t (:bold t :weight bold))))
     (org-checkbox-statistics-done ((t (:bold t :weight bold :foreground "PaleGreen"))))
     (org-checkbox-statistics-todo ((t (:bold t :weight bold :foreground "Pink"))))
     (org-clock-overlay ((t (:background "SkyBlue4"))))
     (org-code ((t (:foreground "grey70"))))
     (org-column ((t (:background "grey30" :strike-through nil :underline nil :slant normal :weight normal :height 136 :family "Menlo"))))
     (org-column-title ((t (:bold t :background "grey30" :underline t :weight bold))))
     (org-date ((t (:foreground "Cyan" :underline t))))
     (org-date-selected ((t (:background "Pink"))))
     (org-default ((t (:family "Menlo" :foundry "bitstream" :width normal :weight normal :slant normal :underline nil :overline nil :strike-through nil :box nil :inverse-video nil :foreground "white" :background "black" :stipple nil :height 136))))
     (org-document-info ((t (:foreground "pale turquoise"))))
     (org-document-info-keyword ((t (:foreground "grey70"))))
     (org-document-title ((t (:bold t :foreground "pale turquoise" :weight bold))))
     (org-done ((t (:bold t :foreground "PaleGreen" :weight bold))))
     (org-drawer ((t (:foreground "LightSkyBlue"))))
     (org-ellipsis ((t (:foreground "LightGoldenrod" :underline t))))
     (org-footnote ((t (:foreground "Cyan" :underline t))))
     (org-formula ((t (:foreground "chocolate1"))))
     (org-headline-done ((t (:foreground "LightSalmon"))))
     (org-hide ((t (:foreground "black"))))
     (org-latex-and-export-specials ((t (:foreground "burlywood"))))
     (org-level-1 ((t (:foreground "firebrick"))))
     (org-level-2 ((t (:foreground "SeaGreen"))))
     (org-level-3 ((t (:foreground "MediumBlue"))))
     (org-level-4 ((t (:foreground "DarkGreen"))))
     (org-level-5 ((t (:foreground "SteelBlue"))))
     (org-level-6 ((t (:foreground "gray"))))
     (org-level-7 ((t (:foreground "SlateBlue"))))
     (org-level-8 ((t (:foreground "RoyalBlue"))))
     (org-link ((t (:underline t :foreground "cyan1"))))
     (org-list-dt ((t (:bold t :weight bold))))
     (org-meta-line ((t (:foreground "DarkGreen"))))
     (org-mode-line-clock ((t (:box (:line-width -1 :style released-button) :foreground "black" :background "grey75"))))
     (org-mode-line-clock-overrun ((t (:box (:line-width -1 :style released-button) :foreground "black" :background "red"))))
     (org-property-value ((t (nil))))
     (org-quote ((t (:foreground "grey70"))))
     (org-scheduled ((t (:foreground "PaleGreen"))))
     (org-scheduled-previously ((t (:foreground "chocolate1"))))
     (org-scheduled-today ((t (:foreground "PaleGreen"))))
     (org-sexp-date ((t (:foreground "Cyan"))))
     (org-special-keyword ((t (:foreground "MediumBlue"))))
     (org-table ((t (:foreground "LightSkyBlue"))))
     (org-tag ((t (:bold t :weight bold))))
     (org-target ((t (:underline t))))
     (org-time-grid ((t (:foreground "LightGoldenrod"))))
     (org-todo ((t (:bold t :foreground "Pink" :weight bold))))
     (org-upcoming-deadline ((t (:foreground "chocolate1"))))
     (org-verbatim ((t (:foreground "grey70"))))
     (org-verse ((t (:foreground "grey70"))))
     (org-warning ((t (:bold t :foreground "Pink" :weight bold))))




     (outline-1 ((t (:foreground "firebrick"))))
     (outline-2 ((t (:foreground "SeaGreen"))))
     (outline-3 ((t (:foreground "MediumBlue"))))
     (outline-4 ((t (:foreground "DarkGreen"))))
     (outline-5 ((t (:foreground "SteelBlue"))))
     (outline-6 ((t (:foreground "gray"))))
     (outline-7 ((t (:foreground "SlateBlue"))))
     (outline-8 ((t (:foreground "RoyalBlue"))))
     (pabbrev-debug-display-label-face ((t (:underline "navy"))))
     (pabbrev-suggestions-face ((t (:foreground "PaleGreen"))))
     (pabbrev-suggestions-label-face ((t (nil))))
     (pulse-highlight-face ((t (:background "#AAAA33"))))
     (pulse-highlight-start-face ((t (:background "#AAAA33"))))
     (query-replace ((t (:foreground "brown4" :background "palevioletred2"))))
     (region ((t (:background "light gray" :foreground "black"))))
     (scroll-bar ((t (nil))))
     (secondary-selection ((t (:background "SkyBlue4"))))
     (semantic-decoration-on-fileless-includes ((t (:background "#009000"))))
     (semantic-decoration-on-includes ((t (nil))))
     (semantic-decoration-on-private-members-face ((t (:background "#200000"))))
     (semantic-decoration-on-protected-members-face ((t (:background "#000020"))))
     (semantic-decoration-on-unknown-includes ((t (:background "#900000"))))
     (semantic-decoration-on-unparsed-includes ((t (:background "#555500"))))
     (semantic-highlight-edits-face ((t (:background "gray20"))))
     (semantic-highlight-func-current-tag-face ((t (:background "gray20"))))
     (semantic-tag-boundary-face ((t (:overline "cyan"))))
     (semantic-unmatched-syntax-face ((t (:underline "red"))))
     (senator-intangible-face ((t (:foreground "gray75"))))
     (senator-momentary-highlight-face ((t (:background "gray30"))))
     (senator-read-only-face ((t (:background "#664444"))))
     (sh-escaped-newline ((t (:foreground "RoyalBlue"))))
     (sh-heredoc ((t (:bold t :foreground "yellow1" :weight bold))))
     (sh-quoted-exec ((t (:foreground "salmon"))))
     (shadow ((t (:foreground "grey70"))))
     (show-paren-match ((t (:background "steelblue3"))))
     (show-paren-mismatch ((t (:background "purple" :foreground "white"))))
     (speedbar-button-face ((t (:foreground "green3"))))
     (speedbar-directory-face ((t (:foreground "light blue"))))
     (speedbar-file-face ((t (:foreground "cyan"))))
     (speedbar-highlight-face ((t (:background "sea green"))))
     (speedbar-selected-face ((t (:foreground "red" :underline t))))
     (speedbar-separator-face ((t (:background "blue" :foreground "white" :overline "gray"))))
     (speedbar-tag-face ((t (:foreground "yellow"))))
     (success ((t (:bold t :foreground "Green1" :weight bold))))
     (tool-bar ((t (:background "grey75" :foreground "black" :box (:line-width 1 :style released-button)))))
     (tooltip ((t (:family "Sans Serif" :background "lightyellow" :foreground "black"))))
     (trailing-whitespace ((t (:background "red1"))))
     (underline ((t (:underline t))))
     (variable-pitch ((t (:family "Sans Serif"))))
     (vertical-border ((t (nil))))
     (warning ((t (:bold t :foreground "DarkOrange" :weight bold))))
     (which-func ((t (:foreground "Blue1"))))
     (widget-button ((t (:bold t :weight bold))))
     (widget-button-pressed ((t (:foreground "red1"))))
     (widget-documentation ((t (:foreground "lime green"))))
     (widget-field ((t (:background "dim gray"))))
     (widget-inactive ((t (:foreground "grey70"))))
     (widget-single-line-field ((t (:background "dim gray")))))))
(add-to-list 'color-themes '(color-theme-ola-original  "Ola Original" "Ola Bini"))

(provide 'color-theme-ola-original)
