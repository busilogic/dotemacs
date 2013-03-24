;; Kiran's .emacs file

(ecb-activate)
(setq stack-trace-on-error t)

;; No splash screen please ... jeez
(setq inhibit-startup-message t)

(add-to-list 'load-path "~/Dropbox/emacs")
(add-to-list 'load-path "~/Dropbox/emacs/vendor")

;; Save file as .gpg extension
;; Put his on top of your file to turn into org mode on load
;;-*- mode: org -*- -*- epa-file-encrypt-to: ("your@email.com") -*-
;(setq epg-gpg-program "/opt/local/bin/gpg")

;; magit
;(add-to-list 'load-path "~/Dropbox/emacs/vendor/magit-1.1.1")
;(require 'magit)

;; Use Emacs starter kit which is incorporated with emacs-for-python kit
(load-file "~/Dropbox/emacs/vendor/emacs-starter-kit/init.el")

(load-file "~/Dropbox/emacs/org2html.el")

;; activate debugging
(setq debug-on-error t
      debug-on-signal nil
      debug-on-quit nil)

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
(load "journal")
(if (file-directory-p "~/Documents/journal/")
    (setq-default journal-dir "~/Documents/journal/"))

