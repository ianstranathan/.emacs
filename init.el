(setq inhibit-startup-message t)

;; -- full screen
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(initial-frame-alist '((fullscreen . maximized)))
 '(package-selected-packages '(modus-themes zenburn-theme)))

(scroll-bar-mode -1)        ; Disable visible scrollbar
(tool-bar-mode -1)          ; Disable the toolbar
(tooltip-mode -1)           ; Disable tooltips
(set-fringe-mode 10)        ; Give some breathing room

(menu-bar-mode -1)          ; Disable the menu bar
(delete-selection-mode 1)   ; Delete text you're pasting over (windows style paste behavior)

;; Set up the visible bell
(setq visible-bell t)

;; ----------------------------------------------------------------------------------------------------

;; -- zen burn theme
;; (add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
;; (load-theme 'zenburn t)

;; -- modus dark
(load-theme 'modus-vivendi t)
;; -- tinted modus light
;; (load-theme 'modus-operandi-tinted t)

;; ----------------------------------------------------------------------------------------------------

;; -- Auto-save cache in .emacs.d
(setq auto-save-file-name-transforms
      `((".*" ,(concat user-emacs-directory "auto-save/") t)))

;; ----------------------------------------------------------------------------------------------------

;; (set-face-attribute 'default nil :font "Fira Code Retina" :height 280)

;; (load-theme 'wombat)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
