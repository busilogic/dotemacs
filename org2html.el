;; Create a website using org mode
;; http://orgmode.org/worg/org-tutorials/org-publish-html-tutorial.html
;; To USE -> M-x org-publish 
;; At publish project: prompt type org and press RET
;; Be sure to modify base_directory & publishing directory first

(require 'org-publish)

(setq org-publish-project-alist
      '(
	
	;; notes component publishes all org-mode files to html
 	("org-notes"
 	 :base-directory "~/Dropbox/org/website/org-files/"
 	 :base-extension "org"
 	 :publishing-directory "~/Dropbox/org/website/busilogic.github.com/"
 	 :recursive t
 	 :publishing-function org-publish-org-to-html
 	 :headline-levels 3     
 	 :auto-preamble nil
         :html-preamble "<a href=\"index.html\">KB</a> | 
                         <a href=\"http://kbusi.tumblr.com\">blog</a> |
                         <a class=\"\" href=\"notes.html\">notes</a> 
                          "
	 :section-numbers nil
	 :table-of-contents nil
	 :style "<link rel=\"stylesheet\" type=\"text/css\" href=\"css/style.css\" />
                 <script type=\"text/javascript\" src=\"js/google-analytics.js\" />
                "
	 :style-include-default nil
 	 )

 	;; static component just copies files (and their folders) from :base-directory 
 	;; to :publishing-directory without changing them. 
 	;; tell Org-mode to use the function org-publish-attachment:
	("org-static"
	 :base-directory "~/Dropbox/org/website/org-files/"
	 :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf\\|img"
	 :publishing-directory "~/Dropbox/org/website/busilogic.github.com/"
	 :recursive t
	 :publishing-function org-publish-attachment
	 )
	
 	("org" :components ("org-notes" "org-static"))
	
 	))

