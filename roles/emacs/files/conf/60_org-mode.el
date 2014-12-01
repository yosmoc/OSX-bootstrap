;; org-mode
(require 'org)
(require 'org-compat)
(setq org-startup-truncated nil)
(setq org-return-follows-link t)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(setq org-directory "~/Dropbox/memo")

;; key-bind
(define-key global-map (kbd "C-c c") 'org-capture)
(define-key global-map (kbd "C-c a") 'org-agenda)


;; format time
(setq org-display-custom-times "<%Y-%m-%d %H:%M:%S>")
(setq org-time-stamp-custom-formats "<%Y-%m-%d %H:%M:%S>")

;; org-agenda
(setq org-agenda-files (list "~/Dropbox/memo/memo.org"
                             "~/Dropbox/memo/todo.org"
                             "~/Dropbox/memo/archive.org" ))

;; org-capture template
(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/Dropbox/memo/todo.org" "Tasks")
             "* TODO %?\n %i")
        ("m" "Memo" entry (file "~/Dropbox/memo/memo.org")
             "* %?\n %U\n%i")
        ))

;; date format
(custom-set-variables
  '(org-display-custom-times t)
  '(org-time-stamp-custom-formats (quote ("<%Y-%m-%d %A >" . "<%Y-%m-%d %a %H:%M>")))
)

;; when task status changes done, keep time to the time
(setq org-log-done 'time)

;; TODO state
(setq org-todo-keywords
      '((sequence "TODO(t)" "WAIT(w)" "|" "DONE(d)" "SOMEDAY(s)")))

;; keep to track the habit
(require 'org-habit)

;; remove validate html tag
(setq org-export-html-validation-link nil)

;; same hilight as mode for specific language
(setq org-src-fontify-natively t)
