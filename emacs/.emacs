(setq inhibit-startup-message t)  ; dont show the GNU splash screen
(transient-mark-mode t)           ; show selection from mark
(setq visible-bell 1)             ; turn off bip warnings
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
 ;;'(coq-indent-basic 0)
 '(coq-one-command-per-line nil)
 '(coq-script-indent t)
 ;;'(coq-smie-after-bolp-indentation 0)
 '(package-selected-packages (quote (proof-general)))
 '(proof-next-command-insert-space nil)
 '(proof-splash-enable nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

; (setq auto-mode-alist (cons '("\\.v$" . coq-mode) auto-mode-alist))
(setq exec-path (append exec-path '("/usr/local/bin")))
(setq proof-three-window-mode-policy 'hybrid)
(add-hook 'coq-mode-hook
          (lambda ()
            (setq tab-width 2)
            (setq indent-tabs-mode nil)
            (setq show-trailing-whitespace t)
            (electric-indent-local-mode -1)))
