; This setup is pretty much based on Alex Payne's (https://github.com/al3x/emacs).

; enable Common List support
(require 'cl)

(push "/usr/local/bin" exec-path)


; add directories to the load path
(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/customizations")
(add-to-list 'load-path "~/.emacs.d/vendor")


; handy function to load all elisp files in a directory
(load-file "~/.emacs.d/load-directory.el")

; load utility functions
(mapcar 'load-directory '("~/.emacs.d/utilities"))

(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(defvar my-packages '(clojure-mode
                      clojure-test-mode
                      nrepl))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

; load third-party modes
; note: these are configured in customizations/my-modes.el
(vendor 'color-theme)
(vendor 'color-theme-solarized)
(vendor 'rvm)
(vendor 'rinari)
(vendor 'textmate)
(vendor 'yaml-mode)
(vendor 'full-ack)
(vendor 'coffee-mode)
(vendor 'rhtml-mode)
(vendor 'frame)
(vendor 'haml-mode)
(vendor 'sass-mode)
(vendor 'yasnippet)
(vendor 'slim-mode)

; load personal customizations (keybindings, colors, etc.)
(mapcar 'load-directory '("~/.emacs.d/customizations"))

; per-OS customizations
(if (string-equal system-type "gnu/linux")
    (mapcar 'load-directory '("~/.emacs.d/linux-customizations"))
    (mapcar 'load-directory '("~/.emacs.d/mac-customizations")))

; start a server for usage with emacsclient
(add-hook 'after-init-hook 'server-start)
