;; Store everything in dropbox
(add-to-list 'load-path "~/Dropbox/emacs/")

;; auto complete
;; (add-to-list 'load-path "~/.emacs.d/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)


;; Publish website using org mode
(load-file "~/Dropbox/emacs/website_using_org_mode.el")


;; color themes
(add-to-list 'load-path "~/Dropbox/emacs/vendor/color-theme-6.6.0")
(load-file "~/Dropbox/emacs/vendor/color-theme-6.6.0/themes/zenburn.el")

(require 'color-theme)
(color-theme-initialize)
(color-theme-jb-simple)
;; (color-theme-zenburn)
(color-theme-hober)

;; ----------------------------------------------
;; Custom keyboard mappings 
;; map Meta key to Control-x-m or Control-x-c
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)
(column-number-mode 1)
(line-number-mode 1)

;; ----------------------------------------------



;; Pymacs
(load-file "~/Dropbox/emacs/pymacs.el")
(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-exec "pymacs" nil t)
(autoload 'pymacs-load "pymacs" nil t)

;; Python-mode.el
(load-file "~/Dropbox/emacs/python-mode/python-mode.el")
(load-file "~/Dropbox/emacs/python-mode/pycomplete.el")
(load-file "~/Dropbox/emacs/python-mode/doctest-mode.el")
(require 'pycomplete)

;; Yasnippet
(add-to-list 'load-path
             "~/Dropbox/emacs/yasnippet-0.6.1c")
(require 'yasnippet) ;; not yasnippet-bundle
(yas/initialize)
(yas/load-directory "~/Dropbox/emacs/yasnippet-0.6.1c/snippets")

;; Django 
;;(require 'django-html-mode)
;; (require 'django-mode)
;; (yas/load-directory "path-to/django-mode/snippets")
;;(add-to-list 'auto-mode-alist '("\\.djhtml$" . django-html-mode))


;; Django html multi major mode
;;(load "~/.emacs.d/nxhtml/autostart.el")
;;(setq mumamo-background-colors nil) 
;;(add-to-list 'auto-mode-alist '("\\.html$" . django-html-mumamo-mode))

;; icicles 
;;(load-file "~/.emacs.d/icicles.el")
;(require 'icicles)
;;(icy-mode 1)





;; ----------------------------------------------
;; load cedet
;; ----------------------------------------------- 
;(load-file "~/.emacs.d/cedet-1.0/common/cedet.el")

;; Enable the Project management system
;(global-ede-mode 1)                      

;; Enable prototype help and smart completion 
;(semantic-load-enable-code-helpers)
      
; Enable template insertion menu
;(global-srecode-minor-mode 1)  
         
;; ecb 
;(add-to-list 'load-path "~/.emacs.d/ecb-2.40")
;(load-file "~/.emacs.d/ecb-2.40/ecb.el" )
; (ecb-activate)

;(custom-set-variables 
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;;'(ecb-options-version "2.40"))
;(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;)






