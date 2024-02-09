
(setq inhibit-startup-message t)

;; text encoding preference
(set-language-environment "UTF-8")

;; MELPA package manager
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)


;; to allow inserted nodes in org-roam to have spaces in name
;; https://www.reddit.com/r/emacs/comments/x7ml9w/how_to_enable_spaces_in_minibuffer_especially_for/
(define-key minibuffer-local-completion-map (kbd "SPC") 'self-insert-command)

;; org-roam for personal wiki
(use-package org-roam
  :ensure t
  :init
  (setq org-roam-v2-ack t)  ;; this is some cruft from org-roam from v1 to v2
  :custom
  (org-roam-directory "c:/personal-wiki")
  :bind (("C-c n l" . org-roam-buffer-toggle)
         ("C-c n f" . org-roam-node-find)
         ("C-c n i" . org-roam-node-insert))
  :config
  (org-roam-setup))

(use-package magit
  :ensure t)

;; -- full screen
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(initial-frame-alist '((fullscreen . maximized)))
 '(package-selected-packages '(org-roam-ui org-roam magit modus-themes zenburn-theme)))

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

(add-to-list 'backup-directory-alist
             (cons "." "~/.emacs.d/backups/"))
(customize-set-variable
 'tramp-backup-directory-alist backup-directory-alist)

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

;; slime
(load (expand-file-name "C:/Users/ian/quicklisp/slime-helper.el"))
;; Replace "sbcl" with the path to your implementation
(setq inferior-lisp-program "sbcl")

;; diff
(global-diff-hl-mode)
