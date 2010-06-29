
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

(project-def "stikeman"
      '((basedir          "c:/Projects/CGF/Prototypes/Sources/Flow/Application")
        (index-find-cmd   "find '.' -type f -not \\( -path '*/.svn/*' -o -path '*/obj/*' -o -path '*/bin/*' -o -path '*/Log/*' -o -name '*~' -o  -name '*.user' -o  -name '*.png' -o  -name '*.gif' -o  -name '*.csproj' \\)")
        (grep-find-cmd    "find '.' -type f -not \\( -path '*/.svn/*' -o -path '*/obj/*' -o -path '*/bin/*' -o -path '*/Log/*' -o -path '*/Libs/*' -o -name '*~' -o  -name '*.user' -o  -name '*.png' -o  -name '*.gif' -o  -name '*.csproj' \\) -print0")
        (tags-file        "c:/home/tmp/projects/stikeman/.tags")
        (file-list-cache  "c:/home/tmp/projects/stikeman/.files")
        (open-files-cache "c:/home/tmp/projects/stikeman/.open-files")
        (compile-cmd      "c:/home/bin/build-flow.bat")
        (startup-hook     nil)
        (shutdown-hook    nil)))

(project-def "framework"
      '((basedir          "c:/Projects/Framework/DEV/Sources/TFG.CompliGuard.Web.Client")
        (index-find-cmd   "find '.' -type f -not \\( -path '*/.svn/*' -o -path '*/obj/*' -o -path '*/bin/*' -o -path '*/Log/*' -o -path '*/Ant/*' -o -name '*~' -o  -name '*.user' -o  -name '*.png' -o  -name '*.gif' -o  -name '*.csproj' -o  -name '*.jar' \\)")
        (grep-find-cmd    "find '.' -type f -not \\( -path '*/.svn/*' -o -path '*/obj/*' -o -path '*/bin/*' -o -path '*/Log/*' -o -path '*/Ant/*' -o -path '*/Libs/*' -o -name '*~' -o  -name '*.user' -o  -name '*.png' -o  -name '*.gif' -o  -name '*.csproj'  -o  -name '*.jar' \\) -print0")
        (tags-file        "c:/home/tmp/projects/framework/.tags")
        (file-list-cache  "c:/home/tmp/projects/framework/.files")
        (open-files-cache "c:/home/tmp/projects/framework/.open-files")
        (compile-cmd      "c:/home/bin/compile-samples.bat")
        (startup-hook     nil)
        (shutdown-hook    nil)))

(project-def "samples"
      '((basedir          "c:/Projects/Framework/DEV/Samples/Application/WebApplication")
        (index-find-cmd   "find '.' -type f -not \\( -path '*/.svn/*' -o -path '*/obj/*' -o -path '*/bin/*' -o -path '*/Log/*' -o -path '*/Ant/*' -o -name '*~' -o  -name '*.user' -o  -name '*.png' -o  -name '*.gif' -o  -name '*.csproj' -o  -name '*.jar'  \\)")
        (grep-find-cmd    "find '.' -type f -not \\( -path '*/.svn/*' -o -path '*/obj/*' -o -path '*/bin/*' -o -path '*/Log/*' -o -path '*/Ant/*' -o -path '*/Libs/*' -o -name '*~' -o  -name '*.user' -o  -name '*.png' -o  -name '*.gif' -o  -name '*.csproj' -o  -name '*.jar' \\) -print0")
        (tags-file        "c:/home/tmp/projects/samples/.tags")
        (file-list-cache  "c:/home/tmp/projects/samples/.files")
        (open-files-cache "c:/home/tmp/projects/samples/.open-files")
        (compile-cmd      "c:/home/bin/build-samples.bat")
        (startup-hook     nil)
        (shutdown-hook    nil)))

(provide 'projects)