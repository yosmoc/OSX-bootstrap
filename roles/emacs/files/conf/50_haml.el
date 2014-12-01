(require 'haml-mode)

(require 'flymake-haml)
(add-hook 'haml-mode-hook 'flymake-haml-load)
