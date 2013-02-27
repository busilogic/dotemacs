;; Kiran's .emacs file

;; Add to load path
(add-to-list 'load-path "~/Dropbox/emacs/")
(add-to-list 'load-path "~/Dropbox/emacs/vendor/")

;; turn on line numbers
;;(global-linum-mode 1)

(load "journal")
(if (file-directory-p "~/Documents/journal/")
    (setq-default journal-dir "~/Documents/journal/"))



;; magit
(add-to-list 'load-path "~/Dropbox/emacs/vendor/magit-1.1.1")
(require 'magit)

;; Use Emacs starter kit which is incorporated with emacs-for-python kit
(load-file "~/Dropbox/emacs/vendor/emacs-starter-kit/init.el")

(load-file "~/Dropbox/emacs/org2html.el")

;; activate debugging
(setq debug-on-error t
      debug-on-signal nil
      debug-on-quit nil)

(load-file "~/Dropbox/emacs/vendor/emacs-for-python/epy-init.el")
;; Get rid of cannot find flyspell error.
;; Install aspell via brew
;; http://blog.roder.me/post/2646673317/fixing-flyspell-for-emacs-in-mac-os-x
;; add usr/local/bin to path
;; http://blog.sdqali.in/blog/2012/05/04/fixing-flyspell-for-emacs-in-mac-os-x/
;(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
;(setq exec-path (append exec-path '("/usr/local/bin")))


;; Set to the location of your Org files on your local system
;(setq org-directory "~/Dropbox/org")
;; Set to the name of the file where new notes will be stored
;(setq org-mobile-inbox-for-pull "~/Dropbox/org/flagged.org")
;; Set to <your Dropbox root directory>/MobileOrg.
;(setq org-mobile-directory "~/Dropbox/MobileOrg")

;(require 'ipython)

;(add-to-list 'load-path "~/Dropbox/emacs/vendor/coffee-mode")
;(require 'coffee-mode)

; Use 2 spaces for coffescript
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (defun coffee-custom ()                     ;;
;;   "coffee-mode-hook"                        ;;
;;   (set (make-local-variable 'tab-width) 2)) ;;
;;                                             ;;
;; (add-hook 'coffee-mode-hook                 ;;
;;           '(lambda() (coffee-custom)))           ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; ----------------------------------------------
;; journal M-x-journal creates a txt file with
;; today's data & stores it in directory specfied
;; ----------------------------------------------

