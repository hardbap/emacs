(require 'color-theme)
(require 'color-theme-solarized)

(eval-after-load 'color-theme
  (progn (color-theme-initialize)))

(setq my-color-themes (list 'color-theme-solarized-dark 'color-theme-solarized-light))

(defun my-theme-set-default ()
  (interactive)
  (setq theme-current my-color-themes)
  (funcall (car theme-current)))

(defun my-describe-theme () ; Show the current theme
  (interactive)
  (message "%s" (car theme-current)))

(color-theme-solarized-dark)
