(require-package 'helm)
;;(require-package 'helm-gtags)

(custom-set-variables
 ;; '(helm-gtags-suggested-key-mapping t)
 ;; '(helm-gtags-auto-update t)
 '(helm-autoresize-max-height 30))

;; helm-dash
(require-package 'helm-dash)
(setq helm-dash-browser-func 'eww)

;;(eval-after-load "helm-gtags"
;;  '(progn
;;     (define-key helm-gtags-mode-map (kbd "M-.") 'helm-gtags-dwim)))

;;(helm-mode t)
;;(helm-autoresize-mode 1)

;;(add-hook 'prog-mode-hook
;;          (lambda()
;;            (helm-gtags-mode)))

;;(require-package 'helm-ag)
;;(global-set-key (kbd "M-?") 'helm-do-ag)
;;
;;(global-set-key (kbd "C-x M-s") 'helm-semantic)

(provide 'init-helm)
