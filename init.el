;; Packages I like
;; 0. MELPA
;; 1. neotree
;; 2. blackboard theme
;; 3. Auctex
;; 4. highlight-symbol-mode
;; 5. Auto-Complete
;; 6. ESS --> This one is downloaded from distribution repo. (apt-get install ess)
;; 7. To use spell check please install ispell package from repo.
;; 8. go-mode, go-complete, go-autocomplete

;; Adding melpa repository

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/"))



;; Added by emacs to remove startup screen
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-source-correlate-method (quote synctex))
 '(TeX-source-correlate-mode t)
 '(TeX-source-correlate-start-server t)
 '(TeX-view-program-list (quote (("Okular" "okular --unique %o#src:%n%b"))))
 '(TeX-view-program-selection
   (quote
    ((engine-omega "dvips and gv")
     (output-dvi "xdvi")
     (output-pdf "Okular")
     (output-html "xdg-open"))))
 '(custom-safe-themes
   (quote
    ("08b8807d23c290c840bbb14614a83878529359eaba1805618b3be7d61b0b0a32" "d5b121d69e48e0f2a84c8e4580f0ba230423391a78fcb4001ccb35d02494d79e" default)))
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (markdown-preview-mode go go-autocomplete go-complete neotree evil auto-complete auto-complete-auctex atom-dark-theme atom-one-dark-theme auctex auctex-latexmk highlight-symbol))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-done ((t (:foreground "PaleGreen" :weight normal :strike-through t))))
 '(org-headline-done ((((class color) (min-colors 16) (background dark)) (:foreground "LightSalmon" :strike-through t)))))


;; Make blackboard as default theme
(add-hook 'after-init-hook (lambda () (load-theme 'atom-one-dark)))


;; Setting F8 to neotree
(global-set-key [f8] 'neotree-toggle)


;; Strike through for "done" items in emacs
(setq org-fontify-done-headline t)


;; Store in tmp files
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))


;; Switch on paren mode
(show-paren-mode 1)

;; Enable highlight-symbol-mode for all modes that load text-mode, lisp-mode
(add-hook 'text-mode-hook 'highlight-symbol-mode)
(add-hook 'emacs-lisp-mode-hook 'highlight-symbol-mode)

;; Adding auto-complete mode for text
(add-hook 'text-mode-hook 'auto-complete-mode)

;; Auto-flyspell mode for Latex
(add-hook 'LaTeX-mode-hook
	  '(flyspell-mode t)
	  '(ac-flyspell-workaround t)
	  )

;; Adding Auctex to work with okular



;; Python mode
(add-hook 'python-mode-hook
	  '(flyspell-mode t)
	  '(auto-complete-mode t)
	  )

