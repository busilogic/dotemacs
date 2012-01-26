;;
;; Kiran's .emacs file
;; better to keep tried tested lisp code up front so it gets evaluated first

;; Add to load path
(add-to-list 'load-path "~/Dropbox/emacs/")
(add-to-list 'load-path "~/Dropbox/emacs/vendor/")

;; ----------------------------------------------
;; emacs visual layout
;; ----------------------------------------------

;; Set window title to full file name
(setq frame-title-format '("Emacs @ " system-name ": %b %+%+ %f"))

;; Get rid of yes/no prompt and replace with y or n
(fset 'yes-or-no-p 'y-or-n-p)

;; Make each file name unique ex: if two index.html files, show full path instead of index.html<2>
;; Got tip from http://garage.pimentech.net/libcommonDjango_django_emacs/
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

;; Turn of annoying confirmation if a file/buffer deosn't exist
(setq confirm-nonexistent-file-or-buffer nil)

(display-time)                                ; Display time duh!
;(column-number-mode 1)
;(line-number-mode 1)                         ; 

;; You don't need a menu bar. It's just a crutch placed there for 
;; disoriented newbies. You also don't need a toolbar with big happy icons, ;; nor do you need a scrollbar. 
;; All of these things are for losers, and they are just taking up 
;; precious screen real-estate. '
;; https://sites.google.com/site/steveyegge2/effective-emacs

(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

;; ----------------------------------------------
;; Color theme
;; ----------------------------------------------
(load-file "~/Dropbox/emacs/vendor/colors-init.el")
(load-file "~/Dropbox/emacs/vendor/color-theme-6.6.0/themes/color-theme-blackboard.el")

(require 'color-theme)
(eval-after-load "color-theme" 
  '(progn 
     (color-theme-initialize) 
     (color-theme-charcoal-black)))

;; ----------------------------------------------
;; Custom keyboard mappings 
;; map Meta key to Control-x-m or Control-x-c
;; ----------------------------------------------
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)

;; ALready part of emacs for python package 
;; Enable ido mode
;(require 'ido)
;(ido-mode t)
;(setq ido-enable-flex-matching t)              ;; Enable flex matching

;; Auto complete Included in emacs for python mode
;(add-to-list 'load-path "~/Dropbox/emacs/vendor/auto-complete-1.3.1")
;(require 'auto-complete-config)
;(add-to-list 'ac-dictionary-directories "~/Dropbox/emacs/vendor/auto-complete-1.3.1/dict")
;(ac-config-default)

;; Yas Snippet Included in Emacs for python already
;(add-to-list 'load-path
;              "~/Dropbox/emacs/vendor/yasnippet")
;(require 'yasnippet) ;; not yasnippet-bundle
;(yas/global-mode 1)


;(epy-django-snippets)
;(autoload 'html-helper-mode "html-helper-mode" "Yay HTML" t)
;(setq auto-mode-alist (cons '("\\.html$" . html-helper-mode)       
;			    auto-mode-alist))
(load-file "~/Dropbox/emacs/vendor/emacs-for-python/epy-init.el")


;; Anything mode
;; http://pedrokroger.com/2010/07/configuring-emacs-as-a-python-ide-2/   
;(add-to-list 'load-path "~/Dropbox/emacs/vendor/anything")
;(require 'anything)
;(require 'anything-ipython)
;(when (require 'anything-show-completion nil t)
;   (use-anything-show-completion 'anything-ipython-complete
;                                 '(length initial-pattern)))


;; ----------------------------------------------
;; journal M-x-journal creates a txt file with
;; today's data & stores it in directory specfied
;; ----------------------------------------------
(load "journal")
(if (file-directory-p "~/Documents/journal/")
    (setq-default journal-dir "~/Documents/journal/"))



(autoload #'espresso-mode "espresso" "Start espresso-mode" t)
(add-to-list 'auto-mode-alist '("\\.js$" . espresso-mode))
(add-to-list 'auto-mode-alist '("\\.json$" . espresso-mode))

;; ----------------------------------------------
;; Org mode
;; customizations 
;; ----------------------------------------------
;;(require 'org-install)
;;(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
;(global-set-key "\C-cl" 'org-store-link)
;(global-set-key "\C-cc" 'org-capture)
;(global-set-key "\C-ca" 'org-agenda)
;(global-set-key "\C-cb" 'org-iswitchb)
;; Publish website using org mode
;(load-file "~/Dropbox/emacs/website_using_org_mode.el")


;; ----------------------------------------------
;; Coffee mode
;; https://github.com/defunkt/coffee-mode
;; ----------------------------------------------
;(add-to-list 'load-path "~/.emacs.d/vendor/coffee-mode")
;(require 'coffee-mode)
;(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode)) ;;Turn on coffee mode for file ending in .coffee


;; ----------------------------------------------
;; CEDET
;; ----------------------------------------------
;(load-file "~/Dropbox/emacs/vendor/cedet-1.0/common/cedet.el")

;(global-ede-mode 1)                      ; Enable the Project management system
;(semantic-load-enable-code-helpers)      ; Enable prototype help and smart completion 
;(global-srecode-minor-mode 1)            ; Enable template insertion menu

;; ----------------------------------------------
;; ECB
;; ----------------------------------------------
;(add-to-list 'load-path "~/Dropbox/emacs/vendor/ecb-2.40")
;(load-file "~/Dropbox/emacs/vendor/ecb-2.40/ecb.el")
;(require 'ecb)
;(require 'ecb-autoloads)
