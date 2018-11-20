
(setq org-agenda-files '("~/Workspace/doc/works.org" "~/Workspace/doc/huawei.org"))

(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/Workspace/doc/works.org" "Tasks")
         "* TODO [#C] %?\n  %i\n")
        ("h" "Huawei" entry (file+headline "~/Workspace/doc/huawei.org" "Huawei")
         "* TODO [#A] %?\n %i\n")))

;; org todo
;;(setq org-todo-keywords
;;      '((sequence "TODO(t)" "|" "DONE(d)")
;;        (sequence "REPORT(r)" "BUG(b)" "KNOWNCAUSE(k)" "|" "FIXED(f)")
;;        (sequence "|" "CANCELED(c)")))

;;(setq org-log-done 'note)

;;(defun org-summary-todo (n-done n-not-done)
;;  "Switch entry to DONE when all subentries are done, to TODO otherwise."
;;  (let (org-log-done org-log-states)   ; turn off logging
;;    (org-todo (if (= n-not-done 0) "DONE" "TODO"))))
;;
;;(add-hook 'org-after-todo-statistics-hook 'org-summary-todo)

;; Set to the location of your Org files on your local system
(setq org-directory "~/Org")
;; Set to the name of the file where new notes will be stored
(setq org-mobile-inbox-for-pull "~/Workspace/doc/works.org")
;; Set to <your Dropbox root directory>/MobileOrg.
(setq org-mobile-directory "~/Dropbox/Apps/MobileOrg")

(custom-set-variables
 '(org-enforce-todo-dependencies t)
 '(org-agenda-dim-blocked-tasks t))

(define-prefix-command 'org-command-map)
(global-set-key (kbd "C-c o") 'org-command-map)
(define-key org-command-map (kbd "t") 'org-todo-list)
(define-key org-command-map (kbd "c") 'org-capture)
(define-key org-command-map (kbd "a") 'org-agenda)
(define-key org-command-map (kbd "p") 'org-priority)

(provide 'init-org)
