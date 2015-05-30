
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


(require-packages 'hydra)



(require-packages 'helm)
(require 'helm-config)
(helm-mode 1)
(global-set-key (kbd "M-x") 'helm-M-x)

(define-key helm-find-files-map (kbd "<tab>") 'helm-execute-persistent-action)
(define-key helm-find-files-map (kbd "C-z") 'helm-select-action)

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
(add-hook 'cider-repl-mode-hook 'paredit-mode)
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


;; cider is loaded as a git submodule to get a stable version
(add-to-list 'load-path "~/.emacs.d/vendor/cider/")
(require 'cider)



(setq cider-auto-select-error-buffer nil)

(define-key cider-mode-map (kbd "C-c s") 'cider-restart)

(defun load-cider-buffer ()
  (interactive)
  (save-buffer)
  (cider-load-buffer))
(define-key cider-mode-map (kbd "C-c C-k") 'load-cider-buffer)

(defun set-start-ns ()
  (interactive)
  (setq start-ns (cider-current-ns))
  (message "start-ns is now '%s'" start-ns))
(define-key cider-mode-map (kbd "C-c l b") 'set-start-ns)

(defun cider-start ()
  (interactive)
  (let ((start-ns (if start-ns
		      start-ns
		    (cider-current-ns))))
    (message "using start-ns '%s'" start-ns)
    (cider-interactive-eval (concat "(" start-ns "/start)"))))
(define-key cider-mode-map (kbd "C-c l s") 'cider-start)

(defun cider-refresh ()
  (interactive)
  (save-buffer)
  (cider-interactive-eval "(require 'flow-gl.refresh)(flow-gl.refresh/refresh)"))
(global-set-key (kbd "C-c l l") 'cider-refresh)

(defun cider-refresh-and-start ()
  (interactive)
  (cider-refresh)
  (cider-start))
(global-set-key (kbd "C-c l r") 'cider-refresh-and-start)


(require-packages 'iedit)
(define-key cider-mode-map (kbd "C-c C-y") 'iedit-mode)

(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)

(require-packages 'company)
(add-hook 'cider-repl-mode-hook #'company-mode)
(add-hook 'clojure-mode-hook #'company-mode)
(add-hook 'emacs-lisp-mode-hook #'company-mode)

(define-key clojure-mode-map (kbd "C-<tab>") 'company-complete)

(require-packages 'highlight-symbol)
(set 'highlight-symbol-idle-delay 0.1)
(global-set-key (kbd "C-c h") 'highlight-symbol-mode)
(defhydra hydra-highlight-symbol (global-map "C-c j")
  "highlight-symbol"
  ("n" highlight-symbol-next "next")
  ("p" highlight-symbol-prev "previous"))

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

(auto-revert-mode 1)


(defun delete-this-buffer-and-file ()
  "Removes file connected to current buffer and kills buffer."
  (interactive)
  (let ((filename (buffer-file-name))
        (buffer (current-buffer))
        (name (buffer-name)))
    (if (not (and filename (file-exists-p filename)))
        (error "Buffer '%s' is not visiting a file!" name)
      (when (yes-or-no-p "Are you sure you want to remove this file? ")
        (delete-file filename)
        (kill-buffer buffer)
        (message "File '%s' successfully removed" filename)))))

(global-set-key (kbd "C-c r") 'delete-this-buffer-and-file)

;; disable backups
(setq make-backup-files nil)
