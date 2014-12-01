;;actionscript用
(autoload 'actionscript-mode "actionscript-mode" "actionscript" t)
(setq auto-mode-alist
      (append '(("\\.as$" . actionscript-mode))
              auto-mode-alist))
