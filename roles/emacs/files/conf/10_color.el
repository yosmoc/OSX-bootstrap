;; (add-to-list 'load-path "~/.emacs.d/elisp/emacs-color-theme-solarized/")
;; (require 'color-theme)
;; (require 'color-theme-solarized)

;; color 
(set-foreground-color "white")
(set-background-color "gray10")
(set-cursor-color "light blue")
(set-face-foreground 'font-lock-comment-face "darkolivegreen1")
(set-frame-parameter nil 'alpha 90)

;;対応する括弧をハイライト
(show-paren-mode t)

;;選択されたリージョンを色付きにしてわかりやすく
(transient-mark-mode t)

;; ime on/offで色を変更する
;; (mac-set-input-method-parameter `roman `cursor-color "dim gray")
;; (mac-set-input-method-parameter `japanese `cursor-color "magenta")

;; 現在の行に色をつける
;; (global-hi-line-mode 1)
;; (set-face-background 'hi-line "pink")


