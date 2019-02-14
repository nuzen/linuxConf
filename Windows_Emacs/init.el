(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(LaTeX-command "latex -synctex=1")
 '(custom-safe-themes
   (quote
    ("c0a7c8590ec62863f8470481c749e993cddfa1d30a0c7f35c81536faaa968cf2" "bd7b7c5df1174796deefce5debc2d976b264585d51852c962362be83932873d9" default)))
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (auto-complete minimap auctex xah-fly-keys markdown-mode xah-find popup neotree monokai-theme async all-the-icons))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; --- Adding melpa --- ;;
(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives (cons "gnu" (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)


;; --- Title bar contains name of the buffer ---;;
(setq frame-title-format "%b")

;; --- Adding line numbers by default ---;;
(global-linum-mode 1)

;; --- Saving all emacs files in ~/.emacsSaves ---
(setq backup-directory-alist `(("." . "~/.emacsSaves")))


;; ---- neotree ----;;
(global-set-key [f7] 'neotree-toggle)

;; --- Theme --- ;;
(load-theme 'monokai)

;; --- Web development configuration --- ;;


;; -- Setting visual bell instead of audio bell --;;
 (setq visible-bell 1)
;; -- Auctex --- ;;
(setq reftex-plug-into-AUCTeX t)






;; --- Okular + Synctex --- ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Latex for Emacs
;; 
;; Dependencies: okular, texlive-full, auctex
;;
;; Okular setup: 
;; 1.) Open Okular and go to...
;; 2.) Settings -> Configure Okular -> Editor
;; 3.) Set Editor to "Emacs client"
;; 4.) Command should automatically set to: 
;; emacsclient -a emacs --no-wait +%l %f
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; only start server for okular comms when in latex mode
(add-hook 'LaTeX-mode-hook 'server-start)
(setq TeX-PDF-mode t) ;; use pdflatex instead of latex

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Standard emacs/latex config
;; http://emacswiki.org/emacs/AUCTeX
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)

; enable auto-fill mode, nice for text
(add-hook 'LaTeX-mode-hook 'auto-fill-mode)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Enable synctex correlation
(setq TeX-source-correlate-method 'synctex)
;; Enable synctex generation. Even though the command shows
;; as "latex" pdflatex is actually called

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Use Okular as the pdf viewer. Build okular 
;; command, so that Okular jumps to the current line 
;; in the viewer.
(setq TeX-view-program-selection
 '((output-pdf "PDF Viewer")))
(setq TeX-view-program-list
 '(("PDF Viewer" "okular --unique %o#src:%n%b")))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; --- Xah-fly-keys --- ;;;
(require 'xah-fly-keys)

(xah-fly-keys-set-layout "qwerty") ; required if you use qwerty

;; possible layout values:
;; "qwerty"
;; "qwerty-abnt"
;; "qwertz"
;; "dvorak"
;; "programer-dvorak"
;; "colemak"
;; "colemak-mod-dh"
;; "workman"

;; dvorak is the default

(xah-fly-keys 1)




;; --- Highlight current line --- ;;
(global-hl-line-mode +1)
(set-face-background hl-line-face "gray4")


;; --- Switching on parem mode by default --- ;;
(show-paren-mode 1)

;; --- Auto commplete mode -- ;;
(ac-config-default)


;; --- Setting font in Windows ---;;
(set-face-attribute 'default nil :family "Consolas" :height 110)
