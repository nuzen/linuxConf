;; Adding MELPA repository

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("8ed752276957903a270c797c4ab52931199806ccd9f0c3bb77f6f4b9e71b9272" "3629b62a41f2e5f84006ff14a2247e679745896b5eaa1d5bcfbc904a3441b0cd" default)))
 '(inhibit-startup-screen t)
 '(package-selected-packages (quote (auctex monokai-theme neotree))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )



;; ---- neotree ----;;
(global-set-key [f8] 'neotree-toggle)


;; ---- Monokai theme ---;
(load-theme 'monokai)


;; --- Title bar contains name of the buffer ---;;
(setq frame-title-format "%b")
