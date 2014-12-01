;; C-x C-r view-modeでファイルを開く
(setq view-read-only t)

;; 書き込み不能なファイルでview-modeから抜けないようにする
(require 'viewer)
(viewer-stay-in-setup)

;; view-modeの際はモードラインの色を変更する
(setq viewer-modeline-color-unwritable "tomato")
(setq viewer-modeline-color-view "orange")
(viewer-change-modeline-color-setup)

;; 特定のファイル・すべてのファイルをview-modeで開く
(setq view-mode-by-default-regexp "¥¥.log$")
