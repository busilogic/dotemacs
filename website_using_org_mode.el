;; Creating a website using org mode
;; http://orgmode.org/worg/org-tutorials/org-publish-html-tutorial.html
;; To USE -> Meta-x org-publish 
;; At publish project: prompt type org and press RET
(require 'org-publish)
(setq org-publish-project-alist
      '(
		
	;; notes component publishes all org-mode files to html
	("org-notes"
	 :base-directory "~/org/website/"
	 :base-extension "org"
	 :publishing-directory "~/public_html/"
	 :recursive t
	 :publishing-function org-publish-org-to-html
	 :headline-levels 4             ; Just the default for this project.
	 :auto-preamble t
	 )


	;; static component just copies files (and their folders) from :base-directory to :publishing-directory without changing them. 
	;; Thus let's tell Org-mode to use the function org-publish-attachment:
	("org-static"
	 :base-directory "~/org/website/"
	 :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
	 :publishing-directory "~/public_html/"
	 :recursive t
	 :publishing-function org-publish-attachment
	 )
	("org" :components ("org-notes" "org-static"))

	))
