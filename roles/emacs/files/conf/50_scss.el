(add-to-list 'load-path (expand-file-name "~/.emacs.d/elpa/scss-mode-20121203.127"))
(autoload 'scss-mode "scss-mode")
(setq scss-compile-at-save nil)
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))
