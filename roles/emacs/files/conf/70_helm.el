;;; helm
(require 'helm)
(require 'helm-config)
(helm-mode 1)
(helm-descbinds-mode)

(defun my-helm ()
  (interactive)
  (helm :sources '(
                   helm-c-source-buffers-list
                   helm-c-source-recentf
                   helm-c-source-bookmarks
                   helm-c-source-files-in-current-dir
                   helm-c-source-mac-spotlight
                   helm-c-source-buffer-not-found)
        :buffer "*my helm*"))

(global-set-key (kbd "C-l") 'my-helm)
(global-set-key (kbd "M-x") 'helm-M-x)

;; helm-ag
(require 'helm-ag)
(setq helm-ag-base-command "ag --nocolor --nogroup --ignore-case")
(setq helm-ag-thing-at-point 'symbol)

;; helm-migemo
(require 'helm-migemo)
(setq helm-use-migemo t)
