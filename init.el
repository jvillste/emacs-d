(load-file "~/.emacs.d/local.el")

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


(require-packages 'markdown-mode)

(add-hook 'markdown-mode-hook
	  (lambda ()
	    (visual-line-mode)))


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

(global-set-key (kbd "C-x C-f") 'helm-find-files)

(require-packages 'clojure-mode)
(add-hook 'clojure-mode-hook 'show-paren-mode)
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

(require-packages 'projectile 'helm 'helm-projectile)
(projectile-global-mode)
(setq projectile-completion-system 'helm)
(helm-projectile-on)

(require-packages 'clojure-mode)

;; paredit

(require-packages 'paredit)
(add-hook 'clojure-mode-hook 'paredit-mode)
(add-hook 'cider-repl-mode-hook 'paredit-mode)
(add-hook 'emacs-lisp-mode-hook 'paredit-mode)

;; (defun my-paredit-nonlisp ()
;;   "Turn on paredit mode for non-lisps."
;;   (interactive)
;;   (set (make-local-variable 'paredit-space-for-delimiter-predicates)
;;        '((lambda (endp delimiter) nil)))
;;   (paredit-mode 1))

;; (add-hook 'web-mode-hook 'my-paredit-nonlisp)


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
;; 			       (yas-minor-mode 1) ; for adding require/use/import
;;                                (cljr-add-keybindings-with-prefix "C-c C-m")))

(require-packages 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)


;; cider is loaded as a git submodule to get a stable version
(add-to-list 'load-path "~/.emacs.d/vendor/cider/")
(require 'cider)
(require 'cider-macroexpansion)


(add-to-list 'load-path "~/.emacs.d/vendor/highlight2clipboard/")
(require 'highlight2clipboard)



(setq cider-test-infer-test-ns (lambda (ns) ns))

(setq cider-auto-select-error-buffer nil)

(add-hook 'cider-mode-hook 'eldoc-mode)

(define-key cider-mode-map (kbd "C-c s") 'cider-restart)

(defun load-cider-buffer ()
  (interactive)
  (save-buffer)
;;  (cider-interactive-eval (concat "(let [ns '" (cider-current-ns) "] (doseq [alias (keys (ns-aliases ns))] (ns-unalias ns alias)))"))
  (cider-load-buffer))
(define-key cider-mode-map (kbd "C-c C-k") 'load-cider-buffer)
(define-key clojure-mode-map (kbd "C-c C-k") 'load-cider-buffer)


(defun remove-and-load-cider-buffer ()
  (interactive)
  (save-buffer)
  (cider-interactive-eval (concat "(remove-ns '" (cider-current-ns) ")"))
  (cider-load-buffer))
(define-key cider-mode-map (kbd "C-c C-S-k") 'remove-and-load-cider-buffer)
(define-key clojure-mode-map (kbd "C-c C-S-k") 'remove-and-load-cider-buffer)


(defun set-start-ns ()
  (interactive)
  (setq start-ns (cider-current-ns))
  (message "start-ns is now '%s'" start-ns))
(define-key cider-mode-map (kbd "C-o C-b") 'set-start-ns)

(defun cider-start ()
  (interactive)
  (let ((start-ns (if start-ns
		      start-ns
		    (cider-current-ns))))
    (message "using start-ns '%s'" start-ns)
    (cider-interactive-eval (concat "(" start-ns "/start)"))))
(define-key cider-mode-map (kbd "C-o C-s") 'cider-start)


(defun cider-pprint-start ()
  (interactive)
  (let ((start-ns (if start-ns
		      start-ns
		    (cider-current-ns))))
    (message "using start-ns '%s'" start-ns)
    (cider--pprint-eval-form (concat "(" start-ns "/start)"))))
(define-key cider-mode-map (kbd "C-c l p") 'cider-pprint-start)

(define-key cider-mode-map (kbd "C-o C-p") 'cider-pprint-eval-defun-at-point)



;; (defun cider-refresh ()
;;   (interactive)
;;   (save-buffer)
;;   (cider-interactive-eval "(require 'flow-gl.refresh)(flow-gl.refresh/refresh)"))
;; (global-set-key (kbd "C-c l l") 'cider-refresh)

;; (defun cider-refresh-and-start ()
;;   (interactive)
;;   (cider-refresh)
;;   (cider-start))
;; (global-set-key (kbd "C-c l r") 'cider-refresh-and-start)

(define-key cider-mode-map (kbd "M-.")
  (lambda ()
    (interactive)
    (cider-find-var 0)))


(defun figwheel-start ()
  (interactive)
  (cider-interactive-eval  "(use 'figwheel-sidecar.repl-api)")
  (cider-interactive-eval  "(start-figwheel!)")
  (cider-interactive-eval  "(cljs-repl)"))

(define-key cider-repl-mode-map (kbd "C-c l f") 'figwheel-start)

(defun run-tests ()
  (interactive)
  (load-cider-buffer)
  (cider-test-run-ns-tests nil))

;; (define-key cider-mode-map (kbd "C-c l t") 'run-tests)
(define-key cider-mode-map (kbd "C-o C-f") 'run-tests)

(require-packages 'iedit)
;; (define-key cider-mode-map (kbd "C-c C-y") 'iedit-mode)
(global-set-key (kbd "C-c C-y") 'iedit-mode)


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

;; backup and autosave files


(defconst backup-directory (expand-file-name "~/.emacs.backups/"))

(setq backup-directory-alist
      `((".*" . ,backup-directory)))

(setq auto-save-file-name-transforms
      `((".*" ,backup-directory t)))

(setq auto-save-list-file-prefix backup-directory)

(setq delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      version-control t)


;; org mode

(defhydra hydra-org-structure (org-mode-map "M-p")
  "org-structure"

  ("n" org-metadown "down")
  ("M-n" org-shiftmetadown "down")
  
  ("p" org-metaup "up")
  ("M-p" org-shiftmetaup "up")
  
  ("f" org-metaright "right")
  ("M-f" org-shiftmetaright "right")
  
  ("b" org-metaleft "left")
  ("M-b" org-shiftmetaleft "left"))


(setq org-startup-indented t)

(define-key org-mode-map (kbd "C-c k") 'org-cut-subtree)
(define-key org-mode-map (kbd "C-c y") 'org-paste-subtree)




;; web mode

;; (require-packages 'multi-web-mode)
;; (setq mweb-default-major-mode 'html-mode)
;; (setq mweb-tags 
;;       '((php-mode "<\\?php\\|<\\? \\|<\\?=" "\\?>")
;; 	(js-mode  "<script[^>]*>" "</script>")
;; 	(css-mode "<style[^>]*>" "</style>")))
;; (setq mweb-filename-extensions '("php" "htm" "html" "ctp" "phtml" "php4" "php5" "html"))
;; (multi-web-global-mode 1)

(require-packages 'web-mode)
;; (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsx?\\'" . web-mode))
(setq web-mode-enable-auto-quoting nil)

;; Htmlize

(require-packages 'htmlize)
(require 'htmlize)


(defun html-to-file ()
  (interactive)
  (htmlize-file (buffer-file-name) "~/Downloads/htmlize.html"))

(defun region-to-html-file ()
  (interactive)
  (let ((html-buffer (htmlize-region (region-beginning) (region-end))))
    (set-buffer html-buffer)
    (write-file "~/Downloads/htmlize.html")))

;; path

(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
(setq exec-path (append exec-path '("/usr/local/bin")))

;; node repl

(require-packages 'nodejs-repl)
(define-key web-mode-map (kbd "C-c C-k") 'nodejs-repl-send-buffer)
(define-key web-mode-map (kbd "C-c C-c") 'nodejs-repl-send-region)
(define-key web-mode-map (kbd "C-c C-z") 'nodejs-repl)


;; from http://emacsredux.com/blog/2013/05/04/rename-file-and-buffer/

(defun rename-file-and-buffer ()
  "Rename the current buffer and file it is visiting."
  (interactive)
  (let ((filename (buffer-file-name)))
    (if (not (and filename (file-exists-p filename)))
        (message "Buffer is not visiting a file!")
      (let ((new-name (read-file-name "New name: " filename)))
        (cond
         ((vc-backend filename) (vc-rename-file filename new-name))
         (t
          (rename-file filename new-name t)
          (set-visited-file-name new-name t t)))))))



;; kill spaces

(defun kill-spaces ()
  (interactive)
  (just-one-space -1))

(global-set-key (kbd "C-M-k") 'kill-spaces)


;; avy

(require-packages 'avy)
(global-set-key (kbd "M-j") 'avy-goto-char-2)
(define-key cider-mode-map (kbd "M-j") 'avy-goto-char-2)
(define-key outline-mode-map (kbd "M-j") 'avy-goto-char-2)

;; scala

(require-packages 'scala-mode)
(add-to-list 'auto-mode-alist '("\\.scala\\'" . scala-mode))

;; rust

(require-packages 'rust-mode)

;; pixie

(add-to-list 'auto-mode-alist '("\\.pxi\\'" . pixie-mode))
(add-hook 'pixie-mode-hook #'inf-clojure-minor-mode)

;; disable suspend frame

(global-unset-key (kbd "C-z"))
(put 'erase-buffer 'disabled nil)
