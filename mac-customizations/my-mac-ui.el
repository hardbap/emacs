; nice font
(defun fontify-frame (frame)
  (set-frame-parameter frame 'font "Meslo LG M DZ-16"))

; fontify current frame
(fontify-frame nil)

; fontify any future frames
(push 'fontify-frame after-make-frame-functions)
