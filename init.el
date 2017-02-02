;; Packages I like
;; 0. MELPA
;; 1. neotree
;; 2. blackboard theme
;; 3. Auctex
;; 4. highlight-symbol-mode

;; Adding melpa repository
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/"))



;; Added by emacs to remove startup screen
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("d5b121d69e48e0f2a84c8e4580f0ba230423391a78fcb4001ccb35d02494d79e" default)))
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;; Make blackboard as default theme
(add-hook 'after-init-hook (lambda () (load-theme 'blackboard)))


;; Setting F8 to neotree
(global-set-key [f8] 'neotree-toggle)


;; Enable highlight-symbol-mode for all modes that load text-mode, lisp-mode
(add-hook 'text-mode-hook 'highlight-symbol-mode)
(add-hook 'emacs-lisp-mode-hook 'highlight-symbol-mode)

;; Strike through for "done" items in emacs
(setq org-fontify-done-headline t)
(custom-set-faces
 '(org-done ((t (:foreground "PaleGreen"   
                 :weight normal
                 :strike-through t))))
 '(org-headline-done 
            ((((class color) (min-colors 16) (background dark)) 
               (:foreground "LightSalmon" :strike-through t)))))
