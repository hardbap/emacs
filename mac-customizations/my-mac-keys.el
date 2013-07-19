(setq default-input-method "MacOSX")

; option/alt is meta key
(setq mac-command-key-is-meta nil)

; switch to shell
(global-set-key (kbd "s-0") 'visit-ansi-term)

; search with the silver searcher
(global-set-key (kbd "s-F") 'ag)
(global-set-key (kbd "<f5>") 'ag-project-at-point)
(global-set-key (kbd "<f6>") 'ag-regexp-project-at-point)


; open file
(global-set-key [(super o)] 'find-file)

; buffer switching
(global-set-key [(super {)] 'previous-buffer)
(global-set-key [(super })] 'next-buffer)

; frame switching
(global-set-key (kbd "s-`") 'other-window)
;(global-set-key (kbd "s-`") 'next-multiframe-window)

; window switching
;(global-set-key (kbd "M-s-`") 'other-window)

; close window
(global-set-key [(super w)] (lambda ()
  (interactive)
  (kill-buffer (current-buffer)
)))

; navigating through errors
(global-set-key [(meta n)] 'next-error)
(global-set-key [(meta p)] 'previous-error)

; run Ruby tests, TextMate-style
 (add-hook 'rinari-minor-mode-hook
  (lambda ()
    (define-key rinari-minor-mode-map (kbd "s-r") 'rinari-test)))

; beginning of buffer
(global-set-key [(super <)] 'beginning-of-buffer)
; end of buffer
(global-set-key [(super >)] 'end-of-buffer)
