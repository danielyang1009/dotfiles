;; Dyang Config File
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(require 'cl)

;; Window
(setq line-spacing 10)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq inhibit-splash-screen t)
(setq initial-frame-alist (quote ((fullscreen . maximized))))

(defvar dyang/packages '(
			  company
			  solarized-theme
			  hungry-delete
			  swiper
			  counsel
			  evil
			  smartparens
			  org
			  ) "Default packages")
(defun dyang/packages-installed-p ()
  (loop for pkg in dyang/packages
	when (not (package-installed-p pkg)) do (return nil)
	finally (return t)))
(unless (dyang/packages-installed-p)
  (message "%s" "refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg dyang/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
(global-set-key (kbd "<f2>") 'open-my-init-file)

;(require 'linum-relative)
;(linum-relative-global-mode)

(global-company-mode t)
(setq-default cursor-type 'bar)
(setq make-backup-files nil)

(load-theme 'solarized-dark t)

(require 'hungry-delete)         
(global-hungry-delete-mode)

(require 'evil)
(evil-mode 1)

(require 'ivy)
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)

(require 'recentf)
(recentf-mode t)
(global-set-key (kbd "C-x C-r") 'recentf-open-files)

(set-face-attribute 'default nil :font "Source Code Pro-14")
(set-frame-font "Source Code Pro-16" nil t)

(require 'smartparens-config)
;;(add-hook 'emacs-lisp-mode-hook 'smartparens-mode)
(smartparens-global-mode)

(require 'org)

(setenv "PATH" (concat "/Library/Tex/texbin" (getenv "PATH")))
(setq exec-path (append '("/Library/TeX/texbin") exec-path))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("6c62b1cd715d26eb5aa53843ed9a54fc2b0d7c5e0f5118d4efafa13d7715c56e" default)))
 '(package-selected-packages
   (quote
    (linum-relative smartparens evil counsel swiper hungry-delete monokai-theme company))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )