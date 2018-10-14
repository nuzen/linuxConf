;; -- Emacs custom set variables, automatically added by emacs -- ;;
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("bd7b7c5df1174796deefce5debc2d976b264585d51852c962362be83932873d9" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (web-mode php-mode all-the-icons multi-web-mode neotree monokai-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; -- To work better in windows --;;
(set-face-attribute 'default nil :family "Consolas" :height 110)


;; --- Adding melpa packages -- ;;
(package-initialize)
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

;; ---- Theme ---;
(load-theme 'monokai)
;;(load-theme 'sanityinc-solarized-dark)
;;(load-theme 'atom-dark)
;;(load-theme 'solarized-dark)

;; --- Title bar contains name of the buffer ---;;
(setq frame-title-format "%b")

;; --- Adding line numbers by default ---;;
(global-linum-mode 1)

;; --- Saving all emacs files in ~/.emacsSaves ---
(setq backup-directory-alist `(("." . "~/.emacsSaves")))

;; ---- neotree ----;;
(global-set-key [f8] 'neotree-toggle)


;; --- Multi web mode --- ;;
(require 'multi-web-mode)
(setq mweb-default-major-mode 'web-mode)
(setq mweb-tags '((php-mode "<\\?php\\|<\\? \\|<\\?=" "\\?>")
                  (js-mode "<script +\\(type=\"text/javascript\"\\|language=\"javascript\"\\)[^>]*>" "</script>")
                  (css-mode "<style +type=\"text/css\"[^>]*>" "</style>")))
(setq mweb-filename-extensions '("php" "htm" "html" "ctp" "phtml" "php4" "php5"))
(multi-web-global-mode 1)
