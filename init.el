(load-file "~/.emacs.d/local.el")


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(cljr-auto-clean-ns nil)
 '(cljr-favor-prefix-notation t)
 '(cljr-magic-require-namespaces
   (quote
    (("io" . "clojure.java.io")
     ("set" . "clojure.set")
     ("string" . "clojure.string")
     ("walk" . "clojure.walk")
     ("zip" . "clojure.zip"))))
 '(custom-enabled-themes (quote (deeper-blue)))
 '(global-whitespace-mode t)
 '(whitespace-action nil)
 '(whitespace-line-column 1000)
 '(whitespace-style
   (quote
    (face tabs trailing lines-tail space-before-tab empty space-after-tab tab-mark))))

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

(global-unset-key (kbd "C-o"))


;; cider is loaded as a git submodule to get a stable version
(add-to-list 'load-path "~/.emacs.d/vendor/cider/")
(require 'cider)
(require 'cider-macroexpansion)

(define-key cider-mode-map (kbd "C-o C-t C-t") 'cider-test-run-test)
(define-key cider-mode-map (kbd "C-o C-t C-r") 'cider-test-rerun-test)

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

(global-set-key (kbd "C-o C-z") 'projectile-grep)

(require-packages 'clojure-mode)

;; paredit

(require-packages 'paredit)
(add-hook 'clojure-mode-hook 'paredit-mode)
(add-hook 'cider-repl-mode-hook 'paredit-mode)
(add-hook 'emacs-lisp-mode-hook 'paredit-mode)

(defhydra paredit-mode-map (global-map "C-c l")
  "move-parens"
  ("f" paredit-forward-slurp-sexp "forward slurp")
  ("d" paredit-forward-barf-sexp "forward barf")
  ("a" paredit-backward-slurp-sexp "backward slurp")
  ("s" paredit-backward-barf-sexp "backward barf"))

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


(require-packages 'git-gutter)
(global-git-gutter-mode +1)
(define-key cider-mode-map (kbd "C-o C-h") 'git-gutter:popup-hunk)

(setq magit-last-seen-setup-instructions "1.4.0")
(require-packages 'magit)
(set-variable 'magit-emacsclient-executable "/usr/local/Cellar/emacs/24.3/bin/emacsclient")
(global-set-key (kbd "C-x g") 'magit-status)

(add-to-list 'load-path "~/.emacs.d/vendor/clj-refactor.el/")
(require 'clj-refactor)

(add-hook 'clojure-mode-hook
	  (lambda ()
	    (clj-refactor-mode 1)
	    (yas-minor-mode 1) ; for adding require/use/import
	    (cljr-add-keybindings-with-prefix "C-o RET")))




(require-packages 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)



;; (setq cider-lein-parameters "with-profile +dev repl :headless")

(add-to-list 'load-path "~/.emacs.d/vendor/highlight2clipboard/")
(require 'highlight2clipboard)



;; (setq cider-test-infer-test-ns (lambda (ns) ns))



(setq cider-auto-select-error-buffer nil)

(add-hook 'cider-mode-hook 'eldoc-mode)

(define-key cider-mode-map (kbd "C-c s") 'cider-restart)

(defun init-el-cider-load-buffer ()
  (interactive)
  (save-buffer)
  ;;  (cider-interactive-eval (concat "(let [ns '" (cider-current-ns) "] (doseq [alias (keys (ns-aliases ns))] (ns-unalias ns alias)))"))
  (cider-load-buffer))

(define-key cider-mode-map (kbd "C-c C-k") 'init-el-cider-load-buffer)
(define-key clojure-mode-map (kbd "C-c C-k") 'init-el-cider-load-buffer)

(define-key clojure-mode-map (kbd "C-o C-c") 'comment-region)
(define-key clojure-mode-map (kbd "C-o C-d") 'uncomment-region)

(defun remove-and-load-cider-buffer ()
  (interactive)
  (save-buffer)
  (cider-interactive-eval (concat "(remove-ns '" (cider-current-ns) ")"))
  (cider-load-buffer))
(define-key cider-mode-map (kbd "C-c C-S-k") 'remove-and-load-cider-buffer)
(define-key clojure-mode-map (kbd "C-c C-S-k") 'remove-and-load-cider-buffer)


(defun init-el-set-start-ns ()
  (interactive)
  (setq start-ns (cider-current-ns))
  (message "start-ns is now '%s'" start-ns))
(define-key cider-mode-map (kbd "C-o C-n") 'init-el-set-start-ns)

(defun init-el-start ()
  (interactive)
  (let ((start-ns (if start-ns
		      start-ns
		    (cider-current-ns))))
    (message "using start-ns '%s'" start-ns)
    (cider-interactive-eval (concat "(" start-ns "/start)"))))
(define-key cider-mode-map (kbd "C-o C-s") 'init-el-start)

(defun init-el-set-refresh-ns ()
  (interactive)
  (setq init-el-refresh-ns (cider-current-ns))
  (message "refresh-ns is now '%s'" init-el-refresh-ns))
;; (define-key cider-mode-map (kbd "C-o C-t") 'init-el-set-refresh-ns)

(defun init-el-refresh ()
  (interactive)
  (message "using refresh-ns '%s'" init-el-refresh-ns)
  (cider-interactive-eval (concat "(require '" init-el-refresh-ns ")"))
  (cider-interactive-eval (concat "(" init-el-refresh-ns "/start)")))
(define-key cider-mode-map (kbd "C-o C-r") 'init-el-refresh)

(defun cider-pprint-start ()
  (interactive)
  (init-el-cider-load-buffer)
  (let ((start-ns (if start-ns
		      start-ns
		    (cider-current-ns))))
    (message "using start-ns '%s'" start-ns)
    (cider--pprint-eval-form (concat "(" start-ns "/start)"))))
(define-key cider-mode-map (kbd "C-o C-p") 'cider-pprint-start)

;; (define-key cider-mode-map (kbd "C-o C-p") 'cider-pprint-eval-defun-at-point)


(defun juvi-mark-function-for-eval ()
  (interactive)
  (setq juvi-marked-ns (cider-current-ns))
  (setq juvi-marked-function (cider-last-sexp))
  (message juvi-marked-function))

(defun juvi-eval-marked-function ()
  (interactive)
  (init-el-cider-load-buffer)
  (cider--pprint-eval-form (concat "(" juvi-marked-ns "/" juvi-marked-function ")")))

(define-key cider-mode-map (kbd "C-M-o C-M-e") 'juvi-mark-function-for-eval)
(define-key cider-mode-map (kbd "C-M-o C-M-i") 'juvi-eval-marked-function)

(defun make-mark-sexp-for-eval ()
  (interactive)
  (setq make-marked-buffer (current-buffer))
  (setq make-marked-sexp (cider-last-sexp)))

(defun make-eval-marked-sexp ()
  (interactive)
  (if (and make-marked-buffer make-marked-sexp)
      (with-current-buffer make-marked-buffer
        (save-excursion
          (cider--pprint-eval-form make-marked-sexp)))
    (message "First mark sexp with `make-mark-sexp-for-eval`" 'font-lock-warning-face)))

(defun make-save-and-eval-marked-sexp ()
  (interactive)
  (init-el-cider-load-buffer)
  (make-eval-marked-sexp))

(define-key cider-mode-map (kbd "C-o C-e") 'make-mark-sexp-for-eval)
(define-key cider-mode-map (kbd "C-o C-i") 'make-save-and-eval-marked-sexp)

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

(setq cider-cljs-lein-repl "(do (use 'figwheel-sidecar.repl-api) (start-figwheel!) (cljs-repl))")

;; (setq cider-cljs-lein-repl "(println \"now evaluate: (do (use 'figwheel-sidecar.repl-api) (start-figwheel!) (cljs-repl)))")

(defun cider-kill ()
  "Kill all cider buffers and processes"
  (interactive)
  (let ((killed-any? nil))
    (dolist (process (process-list))
      (when (string-prefix-p "nrepl" (process-name process))
        (setq killed-any? t)
        (set-process-sentinel process
                              (lambda (proc evt) t))))
    (dolist (buffer (buffer-list))
      (when (string-prefix-p "*cider" (buffer-name buffer))
        (setq killed-any? t)
        (kill-buffer buffer))
      (when (string-prefix-p "*nrepl" (buffer-name buffer))
        (setq killed-any? t)
        (kill-buffer buffer)))
    killed-any?))

(global-set-key (kbd "C-c C-w") 'cider-kill)



(define-key cider-mode-map (kbd "C-c s") 'cider-restart)


(defun force-cider-restart ()
  (interactive)
  (cider-kill)
  (setq cider-lein-parameters "with-profile +dev repl :headless")
  (cider-jack-in nil))



(defun run-tests ()
  (interactive)
  (init-el-cider-load-buffer)
  (cider-test-run-ns-tests nil))

;; (define-key cider-mode-map (kbd "C-c l t") 'run-tests)
(define-key cider-mode-map (kbd "C-o C-f") 'run-tests)

(defun run-current-ns-tests ()
  (interactive)
  (init-el-cider-load-buffer)
  (cider-test-run-ns-tests t))

(define-key cider-mode-map (kbd "C-o C-g") 'run-current-ns-tests)


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
(global-set-key (kbd "C-c b") 'indent-buffer)


(defun indent-whole-sexp ()
  (interactive)
  (save-excursion
    (beginning-of-defun)
    (indent-sexp)))

(define-key clojure-mode-map (kbd "C-c n") 'indent-whole-sexp)

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


(defun other-window-backwards ()
  (interactive)
  (other-window -1))

(global-set-key (kbd "C-x C-o") 'other-window-backwards)

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




;; (require-packages 'multi-web-mode)
;; (setq mweb-default-major-mode 'html-mode)
;; (setq mweb-tags
;;       '((php-mode "<\\?php\\|<\\? \\|<\\?=" "\\?>")
;;	(js-mode  "<script[^>]*>" "</script>")
;;	(css-mode "<style[^>]*>" "</style>")))
;; (setq mweb-filename-extensions '("php" "htm" "html" "ctp" "phtml" "php4" "php5" "html"))
;; (multi-web-global-mode 1)

;; web mode

;; (require-packages 'multi-web-mode)
;; (setq mweb-default-major-mode 'html-mode)
;; (setq mweb-tags
;;       '((php-mode "<\\?php\\|<\\? \\|<\\?=" "\\?>")
;;	(js-mode  "<script[^>]*>" "</script>")
;;	(css-mode "<style[^>]*>" "</style>")))
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
(global-set-key (kbd "M-j") 'avy-goto-char-timer)
(define-key cider-mode-map (kbd "M-j") 'avy-goto-char-timer)
(define-key outline-mode-map (kbd "M-j") 'avy-goto-char-timer)

;; scala

(require-packages 'scala-mode)
(add-to-list 'auto-mode-alist '("\\.scala\\'" . scala-mode))

;; rust

(require-packages 'rust-mode)
(require-packages 'racer)

(require-packages 'company)
(require 'rust-mode)
(define-key rust-mode-map (kbd "TAB") #'company-indent-or-complete-common)
(setq company-tooltip-align-annotations t)

(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'racer-mode-hook #'company-mode)

(define-key rust-mode-map (kbd "C-c C-k")  (lambda () (interactive)
					     (let ((default-directory (concat default-directory "..")))
					       (message default-directory)
					       (compile "../build.sh"))))



;; pixie

(add-to-list 'auto-mode-alist '("\\.pxi\\'" . pixie-mode))
(add-hook 'pixie-mode-hook #'inf-clojure-minor-mode)

;; disable suspend frame

(global-unset-key (kbd "C-z"))
(put 'erase-buffer 'disabled nil)



;; projects

(defun open-argumentica ()
  ""
  (interactive)
  (find-file "/Users/jukka/src/argumentica/src/argumentica/db.clj"))


;; c/++

(require-packages 'ggtags)

;; whitespace

;; (add-hook 'before-save-hook 'delete-trailing-whitespace)


;; auto-revert-mode
(global-auto-revert-mode)
