(ffap-bindings)

;; ファイル名が被った場合にバッファ名を分かりやすくする
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

;; 最近使ったファイルを開く
(setq recentf-max-saved-items 100)
(require 'recentf-ext)
