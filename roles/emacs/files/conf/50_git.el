(require 'git-dwim)
(global-set-key "\C-xvb" 'git-branch-next-action)

(global-auto-revert-mode 1)
(setq auto-revert-interval 1)
(setq auto-revert-check-vc-info t)