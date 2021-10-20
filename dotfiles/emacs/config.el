(package-initialize)
(require 'package)
(add-to-list 'package-archives
     '("melpa" . "http://melpa.org/packages/"))

(require 'use-package)

;; Install packages
(use-package color-theme-sanityinc-tomorrow
  :ensure t)

(use-package evil
  :ensure t)

(use-package evil-leader
  :ensure t)

(use-package ace-window
  :ensure t)

(use-package elcord
  :ensure t)

;; Enable line numbers globally
(global-display-line-numbers-mode)

;; Evil mode for VIM keybinds
(global-evil-leader-mode)
(evil-mode 1)

(elcord-mode)

;; Set SPC as the leader key like in Spacemacs
(evil-leader/set-leader "<SPC>")

(evil-leader/set-key
 "f" 'find-file
 "s" 'save-buffer ;;; make this org mode aware?
 "b" 'switch-to-buffer
 "k" 'kill-buffer)

(setq-default indent-tabs-mode nil)
(setq tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80))

(c-add-style "c-style"
             '("k&r"
               (indent-tabs-mode . f)
               (c-basic-offset . 4)))

(defun rem/c-hook ()
  (c-set-style "c-style")
  (auto-fill-mode))

(add-hook 'c-mode-hook 'rem/c-hook)

;; Define a custom Java mode style without tabs
(c-add-style "java-style-notabs"
             '("java"
               (indent-tabs-mode . f)
               (c-basic-offset . 4)))

(defun rem/java-hook ()
  (c-set-style "java-style-notabs")
  (auto-fill-mode))

(add-hook 'java-mode-hook 'rem/java-hook)
