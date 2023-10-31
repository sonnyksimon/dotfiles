(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/dracula")
(load-theme 'dracula t)

(setq-default show-trailing-whitespace t)

(defun toggle-show-trailing-whitespace ()
  "Toggle `show-trailing-whitespace'."
  (interactive)
  (setq show-trailing-whitespace (not show-trailing-whitespace)))

(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
  backup-by-copying t    ; Don't delink hardlinks
  version-control t      ; Use version numbers on backups
  delete-old-versions t  ; Automatically delete excess backups
  kept-new-versions 20   ; how many of the newest versions to keep
  kept-old-versions 5    ; and how many of the old
  )
