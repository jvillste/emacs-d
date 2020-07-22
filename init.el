(load-file "~/.emacs.d/local.el")

(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(beacon-blink-delay 0.3)
 '(beacon-blink-duration 0.1)
 '(beacon-blink-when-focused t)
 '(beacon-blink-when-point-moves-vertically 10)
 '(beacon-color "Emacs")
 '(beacon-mode t)
 '(beacon-size 140)
 '(cider-ns-refresh-show-log-buffer nil)
 '(cider-output-std-streams-to-popup t)
 '(cider-refresh-show-log-buffer nil)
 '(cider-repl-print-length 1000)
 '(cider-save-files-on-cider-refresh t)
 '(cider-test-defining-forms (quote ("deftest" "defspec" "with-test")))
 '(cljr-auto-clean-ns nil)
 '(cljr-favor-prefix-notation nil)
 '(cljr-magic-require-namespaces
   (quote
    (("io" . "clojure.java.io")
     ("set" . "clojure.set")
     ("string" . "clojure.string")
     ("walk" . "clojure.walk")
     ("zip" . "clojure.zip"))))
 '(cljr-warn-on-eval nil)
 '(custom-enabled-themes (quote (deeper-blue)))
 '(ediff-merge-split-window-function (quote split-window-horizontally))
 '(ediff-split-window-function (quote split-window-horizontally))
 '(ediff-window-setup-function (quote ediff-setup-windows-plain))
 '(git-gutter:diff-option "-b")
 '(global-git-gutter-mode t)
 '(global-whitespace-mode nil)
 '(highlight-symbol-idle-delay 0.1)
 '(ivy-height 30)
 '(ivy-mode t)
 '(ivy-use-virtual-buffers t)
 '(ivy-virtual-abbreviate (quote full))
 '(mc/always-run-for-all t)
 '(minimap-minimum-width 20)
 '(minimap-width-fraction 0.05)
 '(package-selected-packages
   (quote
    (ivy-rich counsel councel clj-refactor ivy projectile ace-mc intero flx-ido rust-mode cider minimap beacon wgrep-helm cider-macroexpansion clojure-mode epl yasnippet wgrep web-mode slamhound scala-mode racer pixie-mode php-mode paredit nodejs-repl multiple-cursors multi-web-mode markdown-mode magit inflections hydra htmlize highlight-symbol helm-projectile git-gutter ggtags exec-path-from-shell edn company avy)))
 '(projectile-enable-caching t)
 '(projectile-mode t nil (projectile))
 '(projectile-use-git-grep nil)
 '(recentf-max-menu-items 25)
 '(recentf-max-saved-items 100)
 '(recentf-mode t)
 '(safe-local-variable-values
   (quote
    ((elisp-lint-indent-specs
      (if-let* . 2)
      (when-let* . 1)
      (let* . defun)
      (nrepl-dbind-response . 2)
      (cider-save-marker . 1)
      (cider-propertize-region . 1)
      (cider-map-repls . 1)
      (cider--jack-in . 1)
      (cider--make-result-overlay . 1)
      (insert-label . defun)
      (insert-align-label . defun)
      (insert-rect . defun)
      (cl-defun . 2)
      (with-parsed-tramp-file-name . 2)
      (thread-first . 1)
      (thread-last . 1))
     (checkdoc-package-keywords-flag))))
 '(undo-outer-limit 22000000)
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
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "light gray" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 150 :width normal :foundry "nil" :family "Menlo"))))
 '(highlight-symbol-face ((t (:background "forest green" :foreground "gray100"))))
 '(minimap-font-face ((t (:height 20 :family "DejaVu Sans Mono"))))
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

(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/") t)

;; (add-to-list 'package-archives
;;           '("marmalade" . "http://marmalade-repo.org/packages/"))



;; (require-packages 'package-filter)

;; (require 'melpa)
;; (setq package-archive-enable-alist '(("melpa"
;;                                       iedit-mode
;;                                       melpa)))
;;(package-refresh-contents)

(global-unset-key (kbd "C-o"))


;; cider is loaded as a git submodule to get a stable version
(add-to-list 'load-path "~/.emacs.d/vendor/cider/")
(require-packages 'parseedn 'cider)
;; (require 'cider)
;; (require 'cider-ns)
;; use stable cider version
;; (add-to-list 'package-pinned-packages '(cider . "melpa-stable") t)

;;(require 'cider-macroexpansion)



(define-key cider-mode-map (kbd "C-c C-i") 'cider-pprint-eval-last-sexp-to-comment)

(define-key cider-mode-map (kbd "C-o C-t C-t") (lambda ()
                                                 (interactive)
                                                 (cider-eval-defun-at-point)
                                                 (cider-test-run-test)))

(define-key cider-mode-map (kbd "C-o C-t C-r") 'cider-test-rerun-test)

(define-key cider-mode-map (kbd "C-o C-t C-p") 'cider-test-run-project-tests)




(require-packages 'hydra)


(require-packages 'markdown-mode)

(add-hook 'markdown-mode-hook
          (lambda ()
            (visual-line-mode)))


;; (require-packages 'helm)
;; (require-packages 'wgrep-helm)

;; (require 'helm-config)
;; (helm-mode 1)
;; (global-set-key (kbd "M-x") 'helm-M-x)

;; (define-key helm-find-files-map (kbd "<tab>") 'helm-execute-persistent-action)
;; (define-key helm-find-files-map (kbd "C-z") 'helm-select-action)

;; (setq helm-M-x-fuzzy-match t)
;; (global-set-key (kbd "C-x b") 'helm-mini)
;; (setq helm-buffers-fuzzy-matching t
;;       helm-recentf-fuzzy-match    t)

;; (global-set-key (kbd "C-x C-f") 'helm-find-files)

(require-packages 'clojure-mode)
(add-hook 'clojure-mode-hook 'show-paren-mode)
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

(require-packages 'ivy)
(ivy-mode)
(setq ivy-use-virtual-buffers t)

(require-packages 'ivy-rich)
(ivy-rich-mode 1)

(require-packages 'counsel)
(counsel-mode)
(global-set-key (kbd "C-x b") 'ivy-switch-buffer)
(global-set-key (kbd "C-x n") 'counsel-recentf)

(require-packages 'projectile)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(setq projectile-indexing-method 'native)
(setq projectile-completion-system 'ivy)
(projectile-global-mode)
(global-set-key (kbd "C-o C-z") 'projectile-grep)

;; (helm-projectile-on)
;; (setq helm-projectile-fuzzy-match t)
;; (setq helm-mode-fuzzy-match t)
;; disable helm projectile grep for C-o C-z
;; (define-key projectile-mode-map [remap projectile-grep] nil)
;; (global-set-key (kbd "C-o C-v") 'helm-projectile-grep)


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

(defhydra hydra-gitgutter-hunk (global-map "C-o C-h")
  "hunk"
  ("n" git-gutter:next-hunk "next")
  ("p" git-gutter:previous-hunk "previous"))

(global-set-key (kbd "C-o C-j") 'git-gutter:revert-hunk)

(setq magit-last-seen-setup-instructions "1.4.0")
(require-packages 'magit)
(set-variable 'magit-emacsclient-executable "/usr/local/Cellar/emacs/24.3/bin/emacsclient")
(global-set-key (kbd "C-x g") 'magit-status)

;; (add-to-list 'load-path "~/.emacs.d/vendor/clj-refactor.el/")
;; (require 'clj-refactor)

(add-to-list 'package-pinned-packages '(clj-refactor . "melpa-stable") t)
(require-packages 'clj-refactor)


(add-hook 'clojure-mode-hook
          (lambda ()
            (clj-refactor-mode 1)
          ;;  (yas-minor-mode 1) ; for adding require/use/import
            (cljr-add-keybindings-with-prefix "C-o RET")))


(require-packages 'recentf)
(recentf-mode 1)
;; save the list every five minutes
(run-at-time nil (* 5 60) 'recentf-save-list)


;; (setq cider-lein-parameters "with-profile +dev repl :headless")

(add-to-list 'load-path "~/.emacs.d/vendor/highlight2clipboard/")
(require 'highlight2clipboard)



;; (setq cider-test-infer-test-ns (lambda (ns) ns))


;; see https://github.com/clojure-emacs/cider/issues/2808
(setq cider-enhanced-cljs-completion-p nil)

(setq cider-auto-select-error-buffer nil)

(add-hook 'cider-mode-hook 'eldoc-mode)

(define-key cider-mode-map (kbd "C-c s") 'sesman-restart)

(defun init-el-cider-load-buffer ()
  (interactive)
  (save-buffer)
  ;;  (cider-interactive-eval (concat "(let [ns '" (cider-current-ns) "] (doseq [alias (keys (ns-aliases ns))] (ns-unalias ns alias)))"))
  (cider-load-buffer))

(define-key cider-mode-map (kbd "C-c C-k") 'init-el-cider-load-buffer)
(define-key clojure-mode-map (kbd "C-c C-k") 'init-el-cider-load-buffer)

(define-key clojure-mode-map (kbd "C-o C-c") 'comment-region)
(define-key clojure-mode-map (kbd "C-o C-u") 'uncomment-region)

(define-key cider-mode-map (kbd "C-c C-p") 'cider-pprint-eval-last-sexp)



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

(defun juvi-insert-conversion ()
  (interactive)
  (cider-interactive-eval (concat "(convert " (buffer-substring (mark) (point)) ")")
                          (cider-insert-eval-handler))
  ;;(delete-region (region-beginning) (region-end))
  )

(defun init-el-refresh ()
  (interactive)
  (save-buffer)
  (cider-ns-refresh))

(define-key cider-mode-map (kbd "C-o C-r") 'init-el-refresh)

(defun set-refresh-to-dev ()
  (interactive)
  (setq cider-refresh-before-fn "dev/stop"
        cider-refresh-after-fn "dev/start"))

(setq cider-refresh-before-fn "user/stop"
      cider-refresh-after-fn "user/start")

(defun cider-pprint-start ()
  (interactive)
  (init-el-cider-load-buffer)
  (let ((start-ns (if start-ns
                      start-ns
                    (cider-current-ns))))
    (message "using start-ns '%s'" start-ns)
    (cider--pprint-eval-form (concat "(" start-ns "/start)"))))
;; (define-key cider-mode-map (kbd "C-o C-p") 'cider-pprint-start)

;; (define-key cider-mode-map (kbd "C-o C-p") 'cider-pprint-eval-defun-at-point)


(defun juvi-mark-function-for-eval ()
  (interactive)
  (setq juvi-marked-ns (cider-current-ns))
  (setq juvi-marked-function (cider-last-sexp))
  (message juvi-marked-function))

(define-key cider-mode-map (kbd "C-M-o C-M-e") 'juvi-mark-function-for-eval)

(defun juvi-eval-marked-function ()
  (interactive)
  (init-el-cider-load-buffer)
  (cider--pprint-eval-form (concat "(" juvi-marked-ns "/" juvi-marked-function ")")))

(define-key cider-mode-map (kbd "C-M-o C-M-i") 'juvi-eval-marked-function)

(defun juvi-eval-function-at-point ()
  (interactive)
  (cider--pprint-eval-form (concat "(" (cider-current-ns) "/" (cider-last-sexp) ")")))

(define-key cider-mode-map (kbd "M-o M-i") 'juvi-eval-function-at-point)

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

(defun juvi-pprint-first ()
  (interactive)
  (cider--pprint-eval-form (concat "(first " (cider-last-sexp) ")")))

(define-key cider-mode-map (kbd "M-p") 'juvi-pprint-first)

(define-key cider-mode-map (kbd "M-.")
  (lambda ()
    (interactive)
    (cider-find-var 0)))

(defun juvi-pprint-sample ()
  (interactive)
  (cider--pprint-eval-form (concat "@dev/sample-atom")))
(define-key cider-mode-map (kbd "C-o C-d") 'juvi-pprint-sample)

(defun initel-eval-last-sexp ()
  (interactive)
  (cider-eval-last-sexp))

(define-key cider-mode-map (kbd "S-<return>") 'cider-eval-last-sexp)

(defun figwheel-start ()
  (interactive)
  (cider-interactive-eval  "(use 'figwheel-sidecar.repl-api)")
  (cider-interactive-eval  "(start-figwheel!)")
  (cider-interactive-eval  "(cljs-repl)"))

(define-key cider-repl-mode-map (kbd "C-c l f") 'figwheel-start)

(setq cider-cljs-lein-repl "(do (use 'figwheel-sidecar.repl-api) (start-figwheel!) (cljs-repl))")

;; (setq cider-cljs-lein-repl "(println \"now evaluate: (do (use 'figwheel-sidecar.repl-api) (start-figwheel!) (cljs-repl)))")

;; (defun cider-kill ()
;;   "Kill all cider buffers and processes"
;;   (interactive)
;;   (let ((killed-any? nil))
;;     (dolist (process (process-list))
;;       (when (string-prefix-p "nrepl" (process-name process))
;;         (setq killed-any? t)
;;         (set-process-sentinel process
;;                               (lambda (proc evt) t))))
;;     (dolist (buffer (buffer-list))
;;       (when (string-prefix-p "*cider" (buffer-name buffer))
;;         (setq killed-any? t)
;;         (kill-buffer buffer))
;;       (when (string-prefix-p "*nrepl" (buffer-name buffer))
;;         (setq killed-any? t)
;;         (kill-buffer buffer)))
;;     killed-any?))


(defun cider-kill ()
  (interactive)
  (dolist (process (process-list))
    (when (string-prefix-p "nrepl-server" (process-name process))
      (kill-process process)))
  (let ((kill-buffer-query-functions '()))
    (dolist (buffer (buffer-list))
      (when (string-prefix-p "*cider" (or (buffer-name buffer)
                                          ""))
        (kill-buffer buffer))
      (when (string-prefix-p "*nrepl" (or (buffer-name buffer)
                                          ""))
        (kill-buffer buffer)))))

(global-set-key (kbd "C-c C-w") 'cider-kill)

(define-key cider-mode-map (kbd "C-c s") 'sesman-restart)


(defun force-cider-restart ()
  (interactive)
  (cider-kill)
  (setq cider-lein-parameters "with-profile +dev repl :headless")
  (cider-jack-in nil))

(defun run-current-ns-tests ()
  (interactive)
  (init-el-cider-load-buffer)
  (cider-test-run-ns-tests t))

(define-key cider-mode-map (kbd "C-o C-g") 'run-current-ns-tests)


(defun juvi-eval-last-sexp-to-kill-ring ()
  (interactive)
  (cider-interactive-eval (cider-last-sexp)
                          (nrepl-make-response-handler (current-buffer)
                                                       (lambda (_buffer value)
                                                         (message value)
                                                         (kill-new value))
                                                       (lambda (_buffer out)
                                                         (cider-emit-interactive-eval-output out))
                                                       (lambda (_buffer err)
                                                         (cider-emit-interactive-eval-err-output err))
                                                       '())
                          nil
                          (cider--nrepl-print-request-map fill-column)))

(define-key cider-mode-map (kbd "C-o C-p") 'juvi-eval-last-sexp-to-kill-ring)

(add-to-list 'load-path "~/.emacs.d/vendor/iedit/")
(require 'iedit)
;;(require-packages 'iedit)
;; (define-key cider-mode-map (kbd "C-c C-y") 'iedit-mode)
(global-set-key (kbd "C-c C-y") 'iedit-mode)


(require-packages 'company)
(add-hook 'cider-repl-mode-hook #'company-mode)
(add-hook 'clojure-mode-hook #'company-mode)
(add-hook 'emacs-lisp-mode-hook #'company-mode)

(define-key clojure-mode-map (kbd "C-<tab>") 'company-complete)

(require-packages 'highlight-symbol)
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

(defun insert-debug-prn ()
  (interactive)
  (save-excursion
    (insert "(prn ) ;; TODO: remove-me\n"))
  (forward-char 5))
(define-key clojure-mode-map (kbd "C-M-o C-M-p") 'insert-debug-prn)


(defun insert-comment-block ()
  (interactive)
  (save-excursion
    (insert "(comment\n  \n) ;; TODO: remove-me\n"))
  (forward-char 11)
  (indent-whole-sexp))
(define-key clojure-mode-map (kbd "C-M-o C-M-n") 'insert-comment-block)

(defun yank-quoted-and-unquoted ()
  (interactive)
  (insert "'")
  (yank)
  (insert " ")
  (yank))
(define-key clojure-mode-map (kbd "C-M-o C-M-y") 'yank-quoted-and-unquoted)

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

(global-set-key (kbd "C-o C-f") 'open-init)

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

(defhydra other-window (global-map "C-x C-o")
  "other-window"
  ("C-j" other-window-backwards "other window backwards")
  ("C-k" other-window "other window"))

;; (global-set-key (kbd "C-x C-o") 'other-window-backwards)

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
;;      (js-mode  "<script[^>]*>" "</script>")
;;      (css-mode "<style[^>]*>" "</style>")))
;; (setq mweb-filename-extensions '("php" "htm" "html" "ctp" "phtml" "php4" "php5" "html"))
;; (multi-web-global-mode 1)

;; web mode

;; (require-packages 'multi-web-mode)
;; (setq mweb-default-major-mode 'html-mode)
;; (setq mweb-tags
;;       '((php-mode "<\\?php\\|<\\? \\|<\\?=" "\\?>")
;;      (js-mode  "<script[^>]*>" "</script>")
;;      (css-mode "<style[^>]*>" "</style>")))
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

;; mark-sexp

(global-set-key (kbd "C-M-m") 'mark-sexp)

;; kill spaces

(defun kill-spaces ()
  (interactive)
  (just-one-space -1))

(global-set-key (kbd "C-M-k") 'kill-spaces)

(defun just-one-space-in-region (beg end)
  "replace all whitespace in the region with single spaces"
  (interactive "r")
  (save-excursion
    (save-restriction
      (narrow-to-region beg end)
      (goto-char (point-min))
      (while (re-search-forward "[ \n]+" nil t)
        (replace-match " ")))))

(global-set-key (kbd "M-K") 'just-one-space-in-region)

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

(defun juvi-clean-white-space ()
  (interactive)
  (save-excursion
    (delete-trailing-whitespace)
    (untabify (point-min) (point-max))))

(global-set-key (kbd "C-M-l") 'juvi-clean-white-space)

;; auto-revert-mode
(global-auto-revert-mode)

;; misc
(global-set-key (kbd "C-o C-b") 'previous-buffer)


;; slamhound
;; (require-packages 'slamhound)

;; wgrep

(require-packages 'wgrep)

;; easyPG https://www.emacswiki.org/emacs/EasyPG

(epa-file-enable)

;; (add-to-list 'load-path "~/.emacs.d/vendor/beacon/")
;; (require 'beacon)
;; (beacon-mode 1)

(set-scroll-bar-mode 'left)
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

;; haskell
(require-packages 'intero)
(add-hook 'haskell-mode-hook 'intero-mode)

;; multiple-cursors
(require-packages 'multiple-cursors 'ace-mc)

(global-set-key (kbd "C-o C-k C-l") 'mc/edit-lines)
(global-set-key (kbd "C-o C-k C-e") 'mc/edit-ends-of-lines)
(global-set-key (kbd "C-o C-k C-f") 'mc/mark-all-like-this-in-defun)
(global-set-key (kbd "C-o C-k C-s") 'mc/mark-all-symbols-like-this-in-defun)
(global-set-key (kbd "C-o C-k C-a") 'mc/mark-all-symbols-like-this)
(global-set-key (kbd "C-o C-k C-m") 'mc/mark-all-like-this)
(global-set-key (kbd "C-o C-k C-n") 'mc/mark-next-like-this)
(global-set-key (kbd "C-o C-k C-r") 'mc/mark-all-in-region)
(global-set-key (kbd "C-o C-k C-c")
                ;;'ace-mc-add-multiple-cursors
                 'ace-mc-add-single-cursor
                )
(global-set-key (kbd "C-M-,") 'mc/mark-all-dwim)

(global-unset-key (kbd "M-<down-mouse-1>"))
(global-set-key (kbd "M-<mouse-1>") 'mc/add-cursor-on-click)

;; (defhydra paredit-mode-map (global-map "C-o C-k")
;;   "multiple-cursors"
;;   ("l" mc/edit-lines "edit-lines")
;;   ("n" mc/mark-next-like-this "mark-next-like-this"))

;; (global-unset-key (kbd "C-o C-k C-n"))

;; profiling

(global-set-key (kbd "C-o C-q")
                (lambda ()
                  (interactive)
                  (profiler-report)
                  (profiler-stop)))

(global-set-key (kbd "C-o C-w")
                (lambda ()
                  (interactive)
		  (customize)))

