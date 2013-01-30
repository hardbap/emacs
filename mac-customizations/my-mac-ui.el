; nice font
(defun fontify-frame (frame)
  (set-frame-parameter frame 'font "-apple-CentSchbook_Mono_BT-medium-normal-normal-*-18-*-*-*-m-0-iso10646-1"))

; fontify current frame
(fontify-frame nil)

; fontify any future frames
(push 'fontify-frame after-make-frame-functions)

;; set the initial frame size
(setq initial-frame-alist '((width . 170) (height . 50)))

(require 'frame-cmds)
(global-set-key (kbd "C-M-<up>") 'shrink-frame)
(global-set-key (kbd "C-M-<down>") 'enlarge-frame)
(global-set-key (kbd "C-M-<right>") 'enlarge-frame-horizontally)
(global-set-key (kbd "C-M-<left>") 'shrink-frame-horizontally)
