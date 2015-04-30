
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(custom-enabled-themes (quote (deeper-blue))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(highlight-symbol-face ((t (:background "forest green" :foreground "black"))))
 '(region ((t (:background "dark green")))))



(require 'package)

(defun require-packages (&rest packages)
  (dolist (package packages)
    (unless (package-installed-p package)
      (package-install package))
    (require package)))

;; (add-to-list 'package-archives
;;              '("melpa-stable" . "http://stable.melpa.org/packages/") t)

(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)

;; (require-packages 'package-filter)

;; (require 'melpa)
;; (setq package-archive-enable-alist '(("melpa"
;;                                       iedit-mode
;;                                       melpa)))
;;(package-refresh-contents)


(require-packages 'helm)
(require 'helm-config)
(helm-mode 1)
(global-set-key (kbd "M-x") 'helm-M-x)
(setq helm-M-x-fuzzy-match t)
(global-set-key (kbd "C-x b") 'helm-mini)
(setq helm-buffers-fuzzy-matching t
      helm-recentf-fuzzy-match    t)

(require-packages 'clojure-mode)
(add-hook 'clojure-mode-hook 'show-paren-mode)
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

(require-packages 'projectile 'helm 'helm-projectile)
(projectile-global-mode)
(setq projectile-completion-system 'helm)
(helm-projectile-on)

(require-packages 'clojure-mode 'paredit)
(add-hook 'clojure-mode-hook 'paredit-mode)
(add-hook 'emacs-lisp-mode-hook 'paredit-mode)


;; Copy PATH from the environment to emacs
(require-packages 'exec-path-from-shell)
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

(setq magit-last-seen-setup-instructions "1.4.0")
(require-packages 'magit)
(set-variable 'magit-emacsclient-executable "/usr/local/Cellar/emacs/24.3/bin/emacsclient")
(global-set-key (kbd "C-x g") 'magit-status)

;; (require-packages 'clj-refactor)
;; (add-hook 'clojure-mode-hook (lambda ()
;;                                (clj-refactor-mode 1)
;;                                (cljr-add-keybindings-with-prefix "C-c C-m")))

(require-packages 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

(add-to-list 'load-path "~/.emacs.d/vendor/cider/")
(require 'cider)

(setq cider-auto-select-error-buffer nil)

(define-key cider-mode-map (kbd "<f9>") 'cider-restart)

(defun load-cider-buffer ()
  (interactive)
  (save-buffer)
  (cider-load-buffer))
(define-key cider-mode-map (kbd "C-c C-k") 'load-cider-buffer)

(defun cider-start ()
  (interactive)
  (cider-repl-set-ns (cider-current-ns))
  (cider-interactive-eval "(start)"))
(define-key cider-mode-map (kbd "<f7>") 'cider-start)

(require-packages 'iedit)
(define-key cider-mode-map (kbd "C-c C-y") 'iedit-mode)

(add-hook 'cider-mode-hook #'eldoc-mode)

(require-packages 'company)
(add-hook 'cider-repl-mode-hook #'company-mode)
(add-hook 'clojure-mode-hook #'company-mode)
(add-hook 'emacs-lisp-mode-hook #'company-mode)

(define-key clojure-mode-map (kbd "C-<tab>") 'company-complete)

(require-packages 'highlight-symbol)
(set 'highlight-symbol-idle-delay 0.1)
(global-set-key [(meta f3)] 'highlight-symbol-mode)
(global-set-key [f3] 'highlight-symbol-next)
(global-set-key [(shift f3)] 'highlight-symbol-prev)

(defun insert-current-date-time ()
  (interactive)
  (when (use-region-p)
    (delete-region (region-beginning) (region-end)))
  (insert (format-time-string "%_e %_m %_Y %_H %_M" (current-time))))
(define-key clojure-mode-map (kbd "C-c d") 'insert-current-date-time)


;; Delete selection
(delete-selection-mode 1)

;;; Set command as meta
(setq mac-option-key-is-meta nil
      mac-command-key-is-meta t
      mac-command-modifier 'meta
      mac-option-modifier 'none)

(defun open-init ()
  (interactive)
  (find-file "~/.emacs.d/init.el"))


;; always split horizontaly

(setq split-height-threshold 0)
(setq split-width-threshold nil)

;; hide tool bar
(tool-bar-mode -1)

(defun indent-buffer ()
  (interactive)
  (save-excursion
    (indent-region (point-min) (point-max) nil)))
(global-set-key (kbd "C-c n") 'indent-buffer)

