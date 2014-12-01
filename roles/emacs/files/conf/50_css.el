;;css-mode
(autoload 'css-mode "css-mode")
(setq auto-mode-alist
      (cons '("\\.css$'" . css-mode) auto-mode-alist))
(setq cssm-indent-function #'cssm-c-style-indenter) ;;インデント整形用
