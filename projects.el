
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
        (compile-cmd      "~/projects/site/build/build.py")
        (ack-args         "--java")
        (startup-hook     nil)
        (shutdown-hook    nil)))

(project-def "formEngine"
      '((basedir          "~/projects/formEngine")
        (src-patterns     ("*.js" "*.html" "*.css" "*.xml" "*.md"))
        (ignore-patterns  ())
        (tags-file        "~/tmp/projects/formEngine/tags")
        (file-list-cache  "~/tmp/projects/formEngine/files")
        (open-files-cache "~/tmp/projects/formEngine/open-files")
        (vcs              git)
        (compile-cmd      "ant -buildfile ~/projects/formEngine/formEngine.js/build.xml")
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

(project-def "ns"
      '((basedir          "~/projects/ns")
        (src-patterns     ("*.js" "*.html" "*.css" "*.xml" "*.sh"))
        (ignore-patterns  ("*.pyc"))
        (tags-file        "~/tmp/projects/ns/tags")
        (file-list-cache  "~/tmp/projects/ns/files")
        (open-files-cache "~/tmp/projects/ns/open-files")
        (vcs              git)
        (compile-cmd      "ant -buildfile ~/projects/ns/build.xml")
        (ack-args         "")
        (startup-hook     nil)
        (shutdown-hook    nil)))

(project-def "job"
      '((basedir          "~/projects/job")
        (src-patterns     ("*.md" "*.txt"))
        (ignore-patterns  ())
        (tags-file        "~/tmp/projects/job/tags")
        (file-list-cache  "~/tmp/projects/job/files")
        (open-files-cache "~/tmp/projects/job/open-files")
        (vcs              git)
        (compile-cmd      "")
        (ack-args         "")
        (startup-hook     nil)
        (shutdown-hook    nil)))


(provide 'projects)