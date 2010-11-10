
(require 'mk-project)
(global-set-key (kbd "C-c p c") 'project-compile)
(global-set-key (kbd "C-c p l") 'project-load)
(global-set-key (kbd "C-c p a") 'project-ack)
(global-set-key (kbd "C-c p g") 'project-grep)
(global-set-key (kbd "C-c p o") 'project-multi-occur)
(global-set-key (kbd "C-c p u") 'project-unload)
(global-set-key (kbd "C-c p f") 'project-find-file-ido) ; or project-find-file
(global-set-key (kbd "C-c p i") 'project-index)
(global-set-key (kbd "C-c p s") 'project-status)
(global-set-key (kbd "C-c p h") 'project-home)
(global-set-key (kbd "C-c p d") 'project-dired)
(global-set-key (kbd "C-c p t") 'project-tags)


;; Mine

(project-def "emacs"
      '((basedir          "~/projects/emacs")
        (src-patterns     ("*.el"))
        (ignore-patterns  ("*.elc"))
        (tags-file        "~/tmp/projects/emacs/tags")
        (file-list-cache  "~/tmp/projects/emacs/files")
        (open-files-cache "~/tmp/projects/emacs/open-files")
        (vcs              git)
        (compile-cmd      "ant")
        (ack-args         "--java")
        (startup-hook     nil)
        (shutdown-hook    nil)))

(project-def "site"
      '((basedir          "~/projects/site")
        (src-patterns     ("*.js" "*.py" "*.html" "*.css"))
        (ignore-patterns  ("*.pyc"))
        (tags-file        "~/tmp/projects/site/tags")
        (file-list-cache  "~/tmp/projects/site/files")
        (open-files-cache "~/tmp/projects/site/open-files")
        (vcs              git)
        (compile-cmd      "~/projects/site/build/build.bat")
        (ack-args         "--java")
        (startup-hook     nil)
        (shutdown-hook    nil)))

(project-def "sample"
      '((basedir          "~/projects/siteSample")
        (src-patterns     ("*.js" "*.py" "*.html" "*.css"))
        (ignore-patterns  ("*.pyc"))
        (tags-file        "~/tmp/projects/siteSample/tags")
        (file-list-cache  "~/tmp/projects/siteSample/files")
        (open-files-cache "~/tmp/projects/siteSample/open-files")
        (vcs              git)
        (compile-cmd      "~/projects/siteSample/build/build.bat")
        (ack-args         "--java")
        (startup-hook     nil)
        (shutdown-hook    nil)))

(project-def "fe"
      '((basedir          "~/projects/formEngine.js")
        (src-patterns     ("*.js" "*.html" "*.css" "*.xml"))
        (ignore-patterns  ("*.pyc"))
        (tags-file        "~/tmp/projects/formEngine/tags")
        (file-list-cache  "~/tmp/projects/formEngine/files")
        (open-files-cache "~/tmp/projects/formEngine/open-files")
        (vcs              git)
        (compile-cmd      "~/projects/formEngine/build/build.bat")
        (ack-args         "")
        (startup-hook     nil)
        (shutdown-hook    nil)))

(project-def "fn"
      '((basedir          "~/projects/fn.js")
        (src-patterns     ("*.js" "*.html" "*.css" "*.xml"))
        (ignore-patterns  ("*.pyc"))
        (tags-file        "~/tmp/projects/fn/tags")
        (file-list-cache  "~/tmp/projects/fn/files")
        (open-files-cache "~/tmp/projects/fn/open-files")
        (vcs              git)
        (compile-cmd      "")
        (ack-args         "")
        (startup-hook     nil)
        (shutdown-hook    nil)))

;; Frayman Group Inc

(project-def "stikeman"   
      '((basedir          "c:/Projects/Prototypes/Flow2")
        (index-find-cmd   "find '.' -type f -not \\( -path '*/.svn/*' -o -path '*/obj/*' -o -path '*/bin/*' -o -path '*/Log/*' -o -name '*~' -o  -name '*.user' -o  -name '*.png' -o  -name '*.gif' -o  -name '*.csproj' \\)")
        (grep-find-cmd    "find '.' -type f -not \\( -path '*/.svn/*' -o -path '*/obj/*' -o -path '*/bin/*' -o -path '*/Log/*' -o -path '*/Libs/*' -o -name '*~' -o  -name '*.user' -o  -name '*.png' -o  -name '*.gif' -o  -name '*.csproj' \\) -print0")
        (tags-file        "c:/home/tmp/projects/stikeman/.tags")
        (file-list-cache  "c:/home/tmp/projects/stikeman/.files")
        (open-files-cache "c:/home/tmp/projects/stikeman/.open-files")
        (compile-cmd      "c:/home/bin/build-flow.bat")
        (startup-hook     nil)
        (shutdown-hook    nil)))

(project-def "framework"
      '((basedir          "c:/Projects/")
        (index-find-cmd   "find './Framework/DEV/Sources/TFG.CompliGuard.Web.Client/' './Framework/DEV/Sources/TFG.CompliGuard.Web.Mvc/' './Framework/DEV/Sources/TFG.CompliGuard.Web.Mvc.Resources/' './Flow/DEV/Samples/TFG.CompliGuard.WebSample/' -type f -not \\( -path '*/.svn/*' -o -path '*/obj/*' -o -path '*/bin/*' -o -path '*/Log/*' -o -path '*/Ant/*' -o -name '*~' -o  -name '*.user' -o  -name '*.png' -o  -name '*.gif' -o  -name '*.csproj' -o  -name '*.jar' \\)")
        (grep-find-cmd    "find './Framework/DEV/Sources/TFG.CompliGuard.Web.Client/' './Framework/DEV/Sources/TFG.CompliGuard.Web.Mvc/' './Framework/DEV/Sources/TFG.CompliGuard.Web.Mvc.Resources/' './Flow/DEV/Samples/TFG.CompliGuard.WebSample/' -type f -not \\( -path '*/.svn/*' -o -path '*/obj/*' -o -path '*/bin/*' -o -path '*/Log/*' -o -path '*/Ant/*' -o -path '*/Libs/*' -o -name '*~' -o  -name '*.user' -o  -name '*.png' -o  -name '*.gif' -o  -name '*.csproj'  -o  -name '*.jar' \\) -print0")
        (tags-file        "c:/home/tmp/projects/framework/.tags")
        (file-list-cache  "c:/home/tmp/projects/framework/.files")
        (open-files-cache "c:/home/tmp/projects/framework/.open-files")
        (compile-cmd      "c:/home/bin/compile-flow.bat")
        (startup-hook     nil)
        (shutdown-hook    nil)))

(project-def "extjs"
      '((basedir          "~/projects/libs/ext-3.3.0")
        (src-patterns     ("*.js" "*.html" "*.css" "*.xml"))
        (ignore-patterns  ("*.pyc"))
        (tags-file        "~/tmp/projects/extjs/tags")
        (file-list-cache  "~/tmp/projects/extjs/files")
        (open-files-cache "~/tmp/projects/extjs/open-files")
        (vcs              git)
        (compile-cmd      "")
        (ack-args         "")
        (startup-hook     nil)
        (shutdown-hook    nil)))


(provide 'projects)