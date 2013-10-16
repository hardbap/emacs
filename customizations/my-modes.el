; YASnippet
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/vendor/yasnippet/snippets")

; TextMate
(require 'textmate)
(textmate-mode t)

; Ack
;(autoload 'ack-same "full-ack" nil t)
;(autoload 'ack "full-ack" nil t)
;(autoload 'ack-find-same-file "full-ack" nil t)
;(autoload 'ack-find-file "full-ack" nil t)

; YAML
(autoload 'yaml-mode "YAML" nil t)
(add-to-list 'auto-mode-alist '("\\.yaml$" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

; JavaScript
(autoload 'js-mode "js" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js-mode))
(setq js-indent-level 2)

; JSON
(add-to-list 'auto-mode-alist '("\\.json$" . js-mode))

; SASS/SCSS
(add-to-list 'auto-mode-alist '("\\.sass$" . sass-mode))
(add-to-list 'auto-mode-alist '("\\.scss$" . scss-mode))

; CoffeScript mode
;(require 'coffee-mode)
(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
(add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode))

; Slim
(require 'slim-mode)
(add-to-list 'auto-mode-alist '("\\.slim$" . slim-mode))

; RVM
(require 'rvm)
(rvm-use-default)

; Ruby
(autoload 'ruby-mode "ruby-mode" "Mode for editing ruby source files" t)
(autoload 'run-ruby "inf-ruby" "Run an inferior Ruby process")
(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru$" . ruby-mode))
(setq auto-mode-alist (cons '("Rakefile" . ruby-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("Capfile" . ruby-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.rake" . ruby-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("Gemfile" . ruby-mode) auto-mode-alist))

; Rails
(require 'rinari)
(setq rinari-tags-file-name "TAGS")

; rhtml-mode
(require 'rhtml-mode)
(add-hook 'rhtml-mode-hook
          (lambda () (rinari-launch)))

(add-to-list 'auto-mode-alist '("\\.erb\\'" . rhtml-mode))
(add-to-list 'auto-mode-alist '("\\.rjs\\'" . rhtml-mode))

; Org mode
(require 'org-install)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

; Markdown mode
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

; Helm
(require 'helm-config)
(helm-mode 1)
