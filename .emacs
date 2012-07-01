;;
;; Kiran's .emacs file
;; Add to load path
;(add-to-list 'load-path "~/Dropbox/emacs/")
;(add-to-list 'load-path "~/Dropbox/emacs/vendor/")

;; Use Emacs starter kit which is incorporated with emacs-for-python kit
(load-file "~/Dropbox/emacs/vendor/emacs-starter-kit/init.el")

(load-file "~/Dropbox/emacs/org2html.el")

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
;; Color theme
;; ----------------------------------------------
;(load-file "~/Dropbox/emacs/vendor/colors-init.el")
;(load-file "~/Dropbox/emacs/vendor/color-theme-6.6.0/themes/color-theme-tangotango.el")
;(require 'color-theme)
;(color-theme-twilight)
;(color-theme-tangotango)
;; end color-theme

;; ----------------------------------------------
;; journal M-x-journal creates a txt file with
;; today's data & stores it in directory specfied
;; ----------------------------------------------
;(load "journal")
;(if (file-directory-p "~/Documents/journal/")
;    (setq-default journal-dir "~/Documents/journal/"))


;; Gnu setup
;; Need to have a .authinfo file in your home directory
;; with this line
;; .authinfo file with 1 line:
;; machine imap.gmail.com login username@gmail.com password my_password port 993

;; Read Gmail
; Setting the imap-ssl-program like this isn't strictly necessary, but
; I do it anyway since I'm paranoid. (I think it will default to
; `-ssl2' instead of `-tls1' if you don't do this.)
(setq imap-ssl-program "openssl s_client -tls1 -connect %s:%p")


;; Configure IMAP
(setq gnus-select-method '(nnimap "gmail"
                                  (nnimap-address "imap.gmail.com")
                                  (nnimap-stream ssl)))

;; choose plaintext every time this is possible.
(setq mm-discouraged-alternatives '("text/html" "text/richtext"))

;; Fetch only part of the article if we can.  
(setq gnus-read-active-file 'some)

;; Tree view for groups.  I like the organisational feel this has.
;(add-hook 'gnus-group-mode-hook 'gnus-topic-mode)

;; Threads!  I hate reading un-threaded email -- especially mailing
;; lists.  This helps a ton!
(setq gnus-summary-thread-gathering-function 
      'gnus-gather-threads-by-subject)

;; Also, I prefer to see only the top level message.  If a message has
;; several replies or is part of a thread, only show the first
;; message.  'gnus-thread-ignore-subject' will ignore the subject and
;; look at 'In-Reply-To:' and 'References:' headers.
(setq gnus-thread-hide-subtree t)
(setq gnus-thread-ignore-subject t)


