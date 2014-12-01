(server-start)
(defun iconify-emacs-when-server-is-done ()
  (unless server-clients (iconify-frame)))
(add-hook 'server-done-hook
         (lambda ()
            (do-applescript "tell application \"iTerm\"
                                activate
                             end")))

