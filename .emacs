;;
;; Kiran's .emacs file
;; better to keep tried tested lisp code up front so it gets evaluated first

;; Add to load path
(add-to-list 'load-path "~/Dropbox/emacs/")
(add-to-list 'load-path "~/Dropbox/emacs/vendor/")


;; Use Emacs starter kit which is incorporated with emacs-for-python kit
(load-file "~/Dropbox/emacs/vendor/emacs-starter-kit/init.el")
(require 'ipython)
