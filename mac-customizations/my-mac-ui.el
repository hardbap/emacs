; nice font
(defun fontify-frame (frame)
  (set-frame-parameter frame 'font "Meslo LG M DZ-14"))

; fontify current frame
(fontify-frame nil)

; fontify any future frames
(push 'fontify-frame after-make-frame-functions)

;; set the initial frame size
(setq initial-frame-alist '((width . 220) (height . 60)))

(require 'frame-cmds)
(global-set-key (kbd "C-M-<up>") 'shrink-frame)
(global-set-key (kbd "C-M-<down>") 'enlarge-frame)
(global-set-key (kbd "C-M-<right>") 'enlarge-frame-horizontally)
(global-set-key (kbd "C-M-<left>") 'shrink-frame-horizontally)
