(setq debug-on-error nil)
(global-font-lock-mode t)  ;文字の色つけ
(display-time)             ;時計を表示
(setq line-number-mode t)  ;カーソルのある行番号を表示
(setq column-number-mode t) ;桁番号表示 
(auto-compression-mode t)  ;日本語infoの文字化け防止
(setq inhibit-startup-message t)
(setq truncate-partial-width-windows nil) ;;C-x 3 の時の折り返し設定
(setq-default indent-tabs-mode nil)

;; package
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

;; symbolic link
(setq vc-follow-symlinks t)

;; ¥の代わりにバックスラッシュを入力する
(define-key global-map [?¥] [?\\])

;;keyremap4macbook用
(global-set-key [(control x)(right)] 'find-file)

;; tabはつかわね
(setq-default tab-width 4 indent-tabs-mode nil)

;;画面上下の外にスクロールしたときの移動量を1にする設定
(setq scroll-step 1)
(setq next-screen-context-lines 1)

;;shebangが付いているファイルのパーミッションを保存時に+xにする
(add-hook 'after-save-hook 'executable-make-buffer-file-executable-if-script-p)

;; バックアップファイルを作成しない
(setq make-backup-files nil)

;; 分割したwindowの移動がshift+矢印で
(windmove-default-keybindings)

;; gzファイルも編集可能に
(auto-compression-mode t)

;; undo
(global-set-key "\C-z" 'undo)

;; toolバーを消す
(tool-bar-mode -1)

;; いちどの kill-line で行全体を削除
(setq kill-whole-line t)

;; バッファの切替え
(iswitchb-mode 1)

;; inline patchを有効にする
(setq default-input-method "MacOSX")

;; auto byte compile
;; (require 'auto-async-byte-compile)
;; (add-hook 'emacs-lisp-mode-hook 'enable-auto-async-byte-compile-mode)

;; 履歴保存
(savehist-mode 1)

;; ファイル内のカーソルの位置を記憶する
(setq-default save-place t)
(require 'saveplace)

;; GCを減らす
(setq gc-cons-threshold (* 20 gc-cons-threshold))

;; ログ履歴の記録行数を増やす
(setq message-log-max 5000)
(setq history-length 5000)

;; minibufferの再帰呼出
(setq enable-recursive-minibuffers t)

;; キーストロークをechoエリアに早く表示する
(setq echo-keystrokes 0.1)

;; yes = y
(defalias 'yes-or-no-p 'y-or-n-p)

;; 画面をちかちかさせない
(setq visible-bell nil)
(setq ring-bell-function 'ignore)

;; zlc.el
(require 'zlc)

;; color-moccur.el
(require 'color-moccur)
(setq moccur-split-word t)

;; frame size
(setq initial-frame-alist
      (append (list
        '(width . 105)
        '(height . 60)
        )
        initial-frame-alist))
(setq default-frame-alist initial-frame-alist)


;; 現在行を目立たせる
(require 'hl-line)
(global-hl-line-mode t)
(set-face-background 'hl-line "dark slate gray")

;; line number
(require 'hlinum)
(hlinum-activate)

;; PATH
;; より下に記述した物が PATH の先頭に追加する
(dolist (dir (list
              "/sbin"
              "/usr/sbin"
              "/bin"
              "/usr/bin"
              "/opt/local/bin"
              "/sw/bin"
              "/usr/local/bin"
              "/opt/local/sbin/"
              "extlib/gems/bin"
              "homebrew/bin"
              (expand-file-name "~/extlib/perl5/bin")
              (expand-file-name "~/.nave")
              (expand-file-name "~/bin")
              (expand-file-name "~/.emacs.d/bin")
              ))

(setq load-path (cons "~/.emacs.d/elisp" load-path))
  
 ;; PATH と exec-path に同じ物を追加する
 (when (and (file-exists-p dir) (not (member dir exec-path)))
   (setenv "PATH" (concat dir ":" (getenv "PATH")))
   (setq exec-path (append (list dir) exec-path))))

(setenv "MANPATH" (concat "/usr/local/man:/usr/share/man:/Developer/usr/share/man:/sw/share/man" (getenv "MANPATH")))
