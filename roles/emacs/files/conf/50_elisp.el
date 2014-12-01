;; Use Emacs23's eldoc
(require 'eldoc)

;; (install-elisp-from-emacswiki "eldoc-extension.el")
(require 'eldoc-extension)
(setq eldoc-idle-delay 0.2)
(add-hook 'emacs-lisp-mode-hook 'turn-on-eldoc-mode)
(add-hook 'lisp-interaction-mode-hook 'turn-on-eldoc-mode)
(add-hook 'ielm-mode-hook 'turn-on-eldoc-mode)
(setq eldoc-minor-mode-string "")
