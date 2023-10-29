(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/dracula")
(load-theme 'dracula t)

(setq-default show-trailing-whitespace t)

(defun toggle-show-trailing-whitespace ()
  "Toggle `show-trailing-whitespace'."
  (interactive)
  (setq show-trailing-whitespace (not show-trailing-whitespace)))
