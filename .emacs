;;;
;;; Kiran's .emacs file
;;;
;; Store it in dropbox/cloud 
(add-to-list 'load-path "~/Dropbox/emacs/")
(add-to-list 'load-path "~/Dropbox/emacs/vendor/")

;; ----------------------------------------------
;; journal M-x-journal creates a txt file with
;; today's data & stores it in directory specfied
;; ----------------------------------------------
(load "journal")
(if (file-directory-p "~/Documents/journal/")
    (setq-default journal-dir "~/Documents/journal/"))

;; ----------------------------------------------
;; Color theme
;; ----------------------------------------------
(load-file "~/Dropbox/emacs/vendor/colors-init.el")
(load-file "~/Dropbox/emacs/vendor/color-theme-6.6.0/themes/color-theme-blackboard.el")
(require 'color-theme)
(eval-after-load "color-theme" 
  '(progn 
     (color-theme-initialize) 
     (color-theme-blackboard)))

;; ----------------------------------------------
;; python
;; ----------------------------------------------
;(epy-django-snippets)
;(autoload 'html-helper-mode "html-helper-mode" "Yay HTML" t)
;(setq auto-mode-alist (cons '("\\.html$" . html-helper-mode)       
;			    auto-mode-alist))
;(load-file "~/Dropbox/emacs/vendor/emacs-for-python/epy-init.el")

;; ----------------------------------------------
;; Custom keyboard mappings 
;; map Meta key to Control-x-m or Control-x-c
;; ----------------------------------------------
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)
(column-number-mode 1)


;; ----------------------------------------------
;; emacs visual layout
;; ----------------------------------------------

;; Set window title to full file name
(setq frame-title-format '("Emacs @ " system-name ": %b %+%+ %f"))


(line-number-mode 1)

;; You don't need a menu bar. It's just a crutch placed there for 
;; disoriented newbies. You also don't need a toolbar with big happy icons, ;; nor do you need a scrollbar. 
;; All of these things are for losers, and they are just taking up 
;; precious screen real-estate. '
;; https://sites.google.com/site/steveyegge2/effective-emacs

;; (if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

;; ----------------------------------------------
;; Org mode
;; customizations 
;; ----------------------------------------------
(require 'org-install)
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

;; Publish website using org mode
;(load-file "~/Dropbox/emacs/website_using_org_mode.el")
