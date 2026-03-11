(setq inhibit-startup-message t)  ; dont show the GNU splash screen
(setq visible-bell 1)             ; turn off bip warnings
(transient-mark-mode t)           ; show selection from mark
(show-paren-mode t)               ; turn on highlight paren mode
(fset 'yes-or-no-p 'y-or-n-p)     ; use y and n for questions
(global-font-lock-mode t)         ; enable syntax highlighting
(icomplete-mode 99)               ; better buffer switching

(setq backup-directory-alist '(("." . "~/.backup-emacs")))

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(coq-one-command-per-line nil)
 '(coq-script-indent t)
 '(package-selected-packages '(proof-general))
 '(proof-next-command-insert-space nil)
 '(proof-splash-enable nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans Mono" :foundry "PfEd" :slant normal :weight regular :height 150 :width normal)))))

(global-unset-key (kbd "C-z")) ; disable the default C-z
(global-unset-key (kbd "C-x C-z")) ; C-x C-z does the same thing as C-z
(setq-default indent-tabs-mode nil)
(setq-default show-trailing-whitespace t)

(add-hook 'coq-mode-hook
          (lambda ()
            (setq tab-width 2)
            (setq proof-three-window-mode-policy 'hybrid)
            (electric-indent-local-mode -1)))
