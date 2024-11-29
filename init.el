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
 '(cider-auto-select-error-buffer nil)
 '(cider-dynamic-indentation nil)
 '(cider-enhanced-cljs-completion-p nil)
 '(cider-interactive-eval-output-destination 'repl-buffer)
 '(cider-ns-refresh-after-fn "dev/start" t)
 '(cider-ns-refresh-before-fn "dev/stop" t)
 '(cider-ns-refresh-show-log-buffer nil)
 '(cider-output-std-streams-to-popup t)
 '(cider-refresh-show-log-buffer nil)
 '(cider-repl-print-length 1000)
 '(cider-save-file-on-load t)
 '(cider-save-files-on-cider-refresh t)
 '(cider-test-defining-forms '("deftest" "defspec" "with-test"))
 '(cljr-auto-clean-ns nil)
 '(cljr-favor-prefix-notation nil)
 '(cljr-magic-require-namespaces
   '(("io" . "clojure.java.io")
     ("set" . "clojure.set")
     ("string" . "clojure.string")
     ("walk" . "clojure.walk")
     ("zip" . "clojure.zip")))
 '(cljr-warn-on-eval nil)
 '(clojure-thread-all-but-last t)
 '(custom-enabled-themes '(juvi-deeper-blue))
 '(custom-safe-themes
   '("8a3c4b0e97c2007655aa56e4201cfb592b75d01804b6968fb2b5e4e93d9818ee" "a60c1317f8a048ff232de128974f1e0219e99a8f4032069eef1a96d62c9e16da" "5252c9e5f25ccb15ba0e2c6890770534499f430c202588d6adb82739de5a2f15" "64510b8379398428665d62469a65f1f26a143f50bdfd75aa08ab82c58666a16a" "b32cf217327b6b6b2c4fc7e917fb04626a1a081c164059c58f81447639085c6f" "1ff292adb82d413c3b540f1936df0a6ec953f1e9b53a0e1b1331c626b288a80f" "e1c652f78f723bee2c626d6b11444b9e064ab6fe941306ee72a7a1ff8c2762dc" "4e6439567a7d852cb5e4b916ec5f8d2567ac1b8f51bbe92bc75e1c47564fed54" "ff5e537e366db140285c24ca399abfe116379abfb83ce42fdd0844ace47d9d63" "d7ddab1ce8e1eac362036a647955790d897db221a8f18757415af4bcf934a76d" "c0579966a5f9f1d9f7d499f4869278073b913bcc12a98f4dce9b7590939d34fe" "f9a3cd3ecf80347e2716daf7f8f929adecd3efcafe660ae7785172d11b17fa49" "df3a0d74d0294a7a4fbb566975ab1659e8f75e2c020067c2a3becf0a5e4b1d84" "78459fbbfc2c176ca5c481e429598e2f1b644e5f2d610679d379d75ef3c0dc9a" "faeec12e44d84a02a578d16460e7b00d491fca28b109d6fc9301e6aa45145492" "6fac5cd7353e2ab050b80923147c4846afac198c6c757c9eaa5736a5d1e52218" "2d44815daa6caa2341cf1abae1713315e17b3eca394cbccb8ed5929022f30538" "48455a96d7234093c0b5a156f0dc9b8ceb6c8a99e32beca521395ff973828ad5" "24c251a53f48fc529805aa4d567d212a4837eba475ce22992e448b210f51867e" "7205b1e53c3255ee0da478ca2c51e4ddf30a71a659802e0dbfae8a83d8662703" "ec0a8caf37e3df9c0911ee8e83068dde5808270687751de995c17609150bf342" "f366d4bc6d14dcac2963d45df51956b2409a15b770ec2f6d730e73ce0ca5c8a7" default))
 '(ediff-merge-split-window-function 'split-window-horizontally)
 '(ediff-split-window-function 'split-window-horizontally)
 '(ediff-window-setup-function 'ediff-setup-windows-plain)
 '(elpy-shell-display-buffer-after-send t)
 '(elpy-shell-echo-input nil)
 '(elpy-shell-starting-directory 'current-directory)
 '(git-gutter:diff-option "-b")
 '(global-git-gutter-mode t)
 '(global-whitespace-mode t)
 '(highlight-symbol-idle-delay 0.1)
 '(indent-tabs-mode nil)
 '(ivy-height 30)
 '(ivy-mode t)
 '(ivy-use-virtual-buffers t)
 '(ivy-virtual-abbreviate 'full)
 '(js-indent-level 2)
 '(mc/always-run-for-all t)
 '(minimap-minimum-width 20)
 '(minimap-width-fraction 0.05)
 '(package-selected-packages
   '(python-pytest gnu-elpa-keyring-update pytest xml-format lsp-ui lsp-mode clj-refactor yaml-mode typescript-mode wgsl-mode zenburn-theme terraform-mode change-case quelpa python helm-gtags irony-eldoc irony sync-recentf zettelkasten flycheck-clj-kondo re-jump rg ag ivy-rich counsel councel ivy projectile ace-mc intero flx-ido rust-mode cider minimap beacon wgrep-helm cider-macroexpansion epl yasnippet wgrep web-mode slamhound scala-mode racer pixie-mode php-mode paredit nodejs-repl multiple-cursors multi-web-mode markdown-mode magit inflections hydra htmlize highlight-symbol helm-projectile ggtags exec-path-from-shell edn company avy))
 '(projectile-enable-caching nil)
 '(projectile-globally-ignored-directories
   '(".idea" ".ensime_cache" ".eunit" ".git" ".hg" ".fslckout" "_FOSSIL_" ".bzr" "_darcs" ".tox" ".svn" ".stack-work" "target"))
 '(projectile-mode t nil (projectile))
 '(projectile-project-root-files-bottom-up
   '(".projectile" "build.sh" ".git" ".hg" ".fslckout" "_FOSSIL_" ".bzr" "_darcs"))
 '(projectile-use-git-grep nil)
 '(python-pytest-executable "python -m pytest ")
 '(recentf-max-menu-items 100)
 '(recentf-max-saved-items 10000)
 '(recentf-mode t)
 '(safe-local-variable-values
   '((eval progn
           (setenv "VK_LAYER_PATH" "/Users/jukka/VulkanSDK/1.2.198.0/macOS/share/vulkan/explicit_layer.d")
           (setenv "VK_ICD_FILENAMES" "/Users/jukka/VulkanSDK/1.2.198.0/macOS/share/vulkan/icd.d/MoltenVK_icd.json")
           (setenv "VK_LOADER_DEBUG" "all"))
     (eval progn
           (setenv "MY_VAR_1" "VALUE 1")
           (setenv "MY_VAR_2" "VALUE 2"))
     (elisp-lint-indent-specs
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
     (checkdoc-package-keywords-flag)))
 '(show-paren-mode t)
 '(undo-outer-limit 22000000)
 '(whitespace-action nil)
 '(whitespace-line-column 1000)
 '(whitespace-style
   '(face tabs trailing lines-tail space-before-tab empty space-after-tab tab-mark)))

;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(default ((t (:inherit nil :stipple nil :background "black" :foreground "light gray" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 130 :width normal :foundry "nil" :family "Menlo"))))
;;  '(highlight-symbol-face ((t (:background "forest green" :foreground "gray100"))))
;;  '(minimap-font-face ((t (:height 20 :family "DejaVu Sans Mono"))))
;;  '(region ((t (:background "dark green")))))

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

(global-set-key (kbd "M-z") 'undo)

;; cider is loaded as a git submodule to get a stable version
;; (add-to-list 'load-path "~/.emacs.d/vendor/cider/")
(require-packages 'parseedn 'cider)
;; (require 'cider)
;; (require 'cider-ns)
;; use stable cider version
;; (add-to-list 'package-pinned-packages '(cider . "melpa-stable") t)

;;(require 'cider-macroexpansion)

(setq cider-dynamic-indentation nil)

(define-key cider-mode-map (kbd "C-c C-i") 'cider-pprint-eval-last-sexp-to-comment)

(define-key cider-mode-map (kbd "C-o C-t C-t") (lambda ()
                                                 (interactive)
                                                 (cider-eval-defun-at-point)
                                                 (cider-test-run-test)))

(define-key cider-mode-map (kbd "C-o C-t C-r") 'cider-test-rerun-test)

(define-key cider-mode-map (kbd "C-o C-t C-p") 'cider-test-run-project-tests)

(global-unset-key (kbd "M-k"))
(define-key clojure-mode-map (kbd "M-k M-k") 'cider-jack-in)
(define-key clojure-mode-map (kbd "M-k M-j") 'cider-jack-in-clj&cljs)
(define-key clojure-mode-map (kbd "M-k M-q") 'sesman-quit)
(define-key clojure-mode-map (kbd "C-t") 'transpose-sexps)

(require-packages 'hydra)


(require-packages 'markdown-mode)

(add-hook 'markdown-mode-hook
          (lambda ()
            (visual-line-mode)))

(defhydra juvi-move-markdown-list-item (markdown-mode-map "C-c l")
  "move list item"
  ("p" markdown-move-list-item-up "list item up")
  ("n" markdown-move-list-item-down "list item down")
  ("b" markdown-promote-list-item "promote list item")
  ("f" markdown-demote-list-item "demote list item"))

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

(global-set-key (kbd "C-o C-y") 'clojure-mode)

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
(setq projectile-indexing-method 'hybrid)
(setq projectile-completion-system 'ivy)
(projectile-global-mode)


;; (helm-projectile-on)
;; (setq helm-projectile-fuzzy-match t)
;; (setq helm-mode-fuzzy-match t)
;; disable helm projectile grep for C-o C-z
;; (define-key projectile-mode-map [remap projectile-grep] nil)
;; (global-set-key (kbd "C-o C-v") 'helm-projectile-grep)


(require-packages 'clojure-mode)

;; clojure-lsp

;; orignally from https://gist.github.com/borkdude/61d1532c57f9efdfd336a9ab6f468353
;; also see https://youtu.be/WMnVv63ezFQ
;; and https://emacs-lsp.github.io/lsp-mode/tutorials/clojure-guide/
;; and https://clojure-lsp.github.io/clojure-lsp/clients/#emacs

;; (require-packages 'lsp-mode)

;; (add-hook 'clojure-mode-hook 'lsp)
;; (add-hook 'clojurescript-mode-hook 'lsp)
;; (add-hook 'clojurec-mode-hook 'lsp)

;; (setq ;; lsp-keymap-prefix "M-l" ;; this is set through customize
;;  lsp-lens-enable nil
;;  gc-cons-threshold (* 100 1024 1024)
;;  read-process-output-max (* 1024 1024)
;;  treemacs-space-between-root-nodes nil
;;  lsp-headerline-breadcrumb-enable nil
;;  company-idle-delay 0.2
;;  company-minimum-prefix-length 1
;;  ;; lsp-lens-enable t
;;  lsp-file-watch-threshold 10000
;;  lsp-signature-auto-activate nil
;;  lsp-clojure-custom-server-command '("/opt/homebrew/Cellar/clojure-lsp-native/2022.11.03-00.14.57/bin/clojure-lsp")
;;  ;; clj-kondo is used directly
;;  lsp-diagnostics-provider :none
;;  lsp-enable-indentation nil ;; uncomment to use cider indentation instead of lsp
;;  ;; lsp-enable-completion-at-point nil ;; uncomment to use cider completion instead of lsp
;;  )


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

(define-key paredit-mode-map (kbd "M-d") 'paredit-backward-delete)

;; Copy PATH from the environment to emacs
(require-packages 'exec-path-from-shell)
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))


(require-packages 'git-gutter)
(global-git-gutter-mode +1)

(defhydra hydra-gitgutter-hunk (global-map "C-o C-h")
  "hunk"
  ("n" git-gutter:next-hunk "next")
  ("p" git-gutter:previous-hunk "previous")
  ("k" git-gutter:revert-hunk "revert"))

(global-set-key (kbd "C-o C-j") 'git-gutter:revert-hunk)
(global-set-key (kbd "C-o g") 'git-gutter:update-all-windows)


(setq magit-last-seen-setup-instructions "1.4.0")
(require-packages 'magit)
(set-variable 'magit-emacsclient-executable "/usr/local/Cellar/emacs/24.3/bin/emacsclient")
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-o C-v") 'magit-blame)

(defun juvi-git-commit-setup-handler ()
  (insert (magit-get-current-branch)))

(add-hook 'git-commit-setup-hook 'juvi-git-commit-setup-handler)

;; (add-to-list 'load-path "~/.emacs.d/vendor/clj-refactor.el/")
;; (require 'clj-refactor)

(add-to-list 'package-pinned-packages '(clj-refactor . "melpa-stable") t)
;; (require-packages 'clj-refactor)

(add-hook 'clojure-mode-hook
          (lambda ()
            (clj-refactor-mode 1)
            ;;  (yas-minor-mode 1) ; for adding require/use/import
            (cljr-add-keybindings-with-prefix "C-o RET")))


(require-packages 'recentf)
(recentf-mode 1)
(require-packages 'sync-recentf)
(setq recentf-auto-cleanup 60) ;; this is triggers sync-recentf once in a minute

;; save the list every fifteen minutes
(run-at-time nil (* 15 60) 'recentf-save-list)


;; (setq cider-lein-parameters "with-profile +dev repl :headless")

(add-to-list 'load-path "~/.emacs.d/vendor/highlight2clipboard/")
(require 'highlight2clipboard)



;; (setq cider-test-infer-test-ns (lambda (ns) ns))


;; see https://github.com/clojure-emacs/cider/issues/2808
(setq cider-enhanced-cljs-completion-p nil)

(setq cider-auto-select-error-buffer nil)

(add-hook 'cider-mode-hook 'eldoc-mode)

(define-key cider-mode-map (kbd "C-c s") 'sesman-restart)

(define-key cider-mode-map (kbd "C-c C-k") 'cider-load-buffer)
(define-key clojure-mode-map (kbd "C-c C-k") 'cider-load-buffer)

(global-set-key (kbd "C-o C-c") 'comment-region)
(global-set-key (kbd "C-o C-u") 'uncomment-region)

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
  (cider-ns-refresh ;; 'refresh-all ;;'clear
   ))

(define-key cider-mode-map (kbd "C-o C-r") 'init-el-refresh)

(defun juvi-set-refresh-to-dev ()
  (interactive)
  (setq cider-ns-refresh-before-fn "dev/stop"
        cider-ns-refresh-after-fn "dev/start"))

(defun juvi-set-refresh-to-user ()
  (interactive)
  (setq cider-ns-refresh-before-fn "userstop"
        cider-ns-refresh-after-fn "user/start"))

(setq cider-ns-refresh-before-fn "dev/stop"
      cider-ns-refresh-after-fn "dev/start")

(defun juvi-unset-refresh ()
  (interactive)
  (setq cider-ns-refresh-before-fn nil
        cider-ns-refresh-after-fn nil))

(defun cider-pprint-start ()
  (interactive)
  (cider-load-buffer)
  (let ((start-ns (if start-ns
                      start-ns
                    (cider-current-ns))))
    (message "using start-ns '%s'" start-ns)
    (cider--pprint-eval-form (concat "(" start-ns "/start)"))))

(defun juvi-show-result-buffer-cursor ()
  (interactive)
  (with-current-buffer cider-result-buffer
    (setq cursor-type 'box)))

(defun juvi-hide-result-buffer-cursor ()
  (interactive)
  (with-current-buffer cider-result-buffer
    (setq cursor-type nil)))

(defun juvi-copy-result-buffer ()
  (interactive)
  (with-current-buffer cider-result-buffer
    (copy-region-as-kill (buffer-end -1) (buffer-end 1))))

(defun juvi-pprint-eval-to-result-buffer (form)
  (cider-interactive-eval form
                          (nrepl-make-response-handler (cider-popup-buffer cider-result-buffer nil 'clojure-mode 'ancillary)
                                                       (lambda (buffer value)
                                                         (cider-emit-into-popup-buffer buffer value)
                                                         (with-current-buffer cider-result-buffer
                                                           (beginning-of-buffer)
                                                           (set-window-point (get-buffer-window cider-result-buffer)
                                                                             (point-at-eol))))
                                                       (lambda (buffer out)
                                                         (cider-emit-into-popup-buffer buffer out))
                                                       (lambda (buffer err)
                                                         (cider-emit-into-popup-buffer buffer err))
                                                       '())
                          nil
                          (cider--nrepl-print-request-map fill-column)))

(defun juvi-pprint-eval-last-sexp-to-result-buffer ()
  (interactive)
  (juvi-pprint-eval-to-result-buffer (cider-last-sexp)))

(define-key cider-mode-map (kbd "C-c C-p") 'juvi-pprint-eval-last-sexp-to-result-buffer)

(defun juvi-mark-function-for-eval ()
  (interactive)
  (setq juvi-marked-ns (cider-current-ns))
  (setq juvi-marked-function (cider-last-sexp))
  (message juvi-marked-function))

(define-key cider-mode-map (kbd "C-M-o C-M-e") 'juvi-mark-function-for-eval)

(defun juvi-eval-marked-function ()
  (interactive)
  (cider-load-buffer)
  (juvi-pprint-eval-to-result-buffer (concat "(" juvi-marked-ns "/" juvi-marked-function ")")))

(define-key cider-mode-map (kbd "C-M-o C-M-i") 'juvi-eval-marked-function)

(defun juvi-eval-function-at-point ()
  (interactive)
  (juvi-pprint-eval-to-result-buffer (concat "(" (cider-current-ns) "/" (cider-last-sexp) ")")))

(define-key cider-mode-map (kbd "M-S-o M-S-i") 'juvi-eval-function-at-point)

(defun juvi-mark-sexp-for-eval ()
  (interactive)
  (setq juvi-marked-buffer (current-buffer))
  (setq juvi-marked-sexp (cider-last-sexp)))

(define-key cider-mode-map (kbd "C-o C-e") 'juvi-mark-sexp-for-eval)

(defun juvi-eval-marked-sexp ()
  (interactive)
  (if (and juvi-marked-buffer juvi-marked-sexp)
      (with-current-buffer juvi-marked-buffer
        (save-excursion
          (juvi-pprint-eval-to-result-buffer juvi-marked-sexp)))
    (message "First mark sexp with `juvi-mark-sexp-for-eval`" 'font-lock-warning-face)))

(define-key cider-mode-map (kbd "C-o C-i") 'juvi-eval-marked-sexp)

(defun juvi-eval-marked-sexp-silently ()
  (interactive)
  (with-current-buffer juvi-marked-buffer
    (cider-interactive-eval juvi-marked-sexp
                            (nrepl-make-response-handler juvi-marked-buffer
                                                         (lambda (buffer value))
                                                         (lambda (_buffer out))
                                                         (lambda (_buffer err))
                                                         nil)))
  (message "Ran marked sexp."))

(define-key cider-mode-map (kbd "M-o M-i") 'juvi-eval-marked-sexp-silently)

(defun juvi-eval-last-sexp-to-kill-ring ()
  (interactive)
  (cider-interactive-eval
   (cider-last-sexp)
   (nrepl-make-response-handler (current-buffer)
                                (lambda (_buffer value)
                                  (message "result is now in the kill ring")
                                  (kill-new value))
                                (lambda (_buffer out)
                                  (cider-emit-interactive-eval-output out))
                                (lambda (_buffer err)
                                  (cider-emit-interactive-eval-err-output err))
                                '())
   nil
   (cider--nrepl-print-request-map fill-column)))

(define-key cider-mode-map (kbd "C-o C-p") 'juvi-eval-last-sexp-to-kill-ring)

(defun juvi-eval-last-sexp-output-to-kill-ring ()
  (interactive)
  (kill-new "")
  (cider-interactive-eval (cider-last-sexp)
                          (nrepl-make-response-handler (current-buffer)
                                                       (lambda (_buffer _value))
                                                       (lambda (_buffer output)
                                                         (kill-append output nil))
                                                       (lambda (_buffer err)
                                                         (cider-emit-interactive-eval-err-output err))
                                                       '())
                          nil
                          (cider--nrepl-print-request-map fill-column))
  (message "evaluation output is now in the kill ring"))

(define-key cider-mode-map (kbd "C-S-o C-S-p") 'juvi-eval-last-sexp-output-to-kill-ring)


(defun juvi-copy-fully-qualified-name ()
  (interactive)
  (message (concat (cider-current-ns) "/" (cider-last-sexp)))
  (kill-new (concat (cider-current-ns) "/" (cider-last-sexp))))

(defun juvi-pprint-first ()
  (interactive)
  (cider--pprint-eval-form (concat "(first " (cider-last-sexp) ")")))

(define-key cider-mode-map (kbd "M-p") 'juvi-pprint-first)

(define-key cider-mode-map (kbd "M-.") 'cider-find-var)

(defun juvi-execute-tests (include-selectors exclude-selectors)
  "based on cider-test-execute"
  (cider-test-clear-highlights)
  (cider-map-repls :clj-strict
    (lambda (conn)
      (message "Running tests including: %s and excluding %s" include-selectors exclude-selectors)
      (setq cider-test--current-repl conn)
      (let* ((request '("op" "test-all"
                        "load?" "true"
                        "fail-fast" "false")))
        (when (and (listp include-selectors) include-selectors)
          (setq request (append request `("include" ,include-selectors))))
        (when (and (listp exclude-selectors) exclude-selectors)
          (setq request (append request `("exclude" ,exclude-selectors))))
        (cider-nrepl-send-request
         request
         (lambda (response)
           (nrepl-dbind-response response (summary results status out err elapsed-time ns-elapsed-time var-elapsed-time)
             (cond ((member "namespace-not-found" status)
                    (unless silent
                      (message "No test namespace: %s" (cider-propertize ns 'ns))))
                   (out (cider-emit-interactive-eval-output out))
                   (err (cider-emit-interactive-eval-err-output err))
                   (results
                    (nrepl-dbind-response summary (error fail)
                      (setq cider-test-last-summary summary)
                      (setq cider-test-last-results results)
                      (cider-test-highlight-problems results)
                      (cider-test-echo-summary summary results elapsed-time)
                      (if (or (not (zerop (+ error fail)))
                              cider-test-show-report-on-success)
                          (let ((b (cider-popup-buffer
                                    cider-test-report-buffer
                                    cider-auto-select-test-report-buffer)))
                            (with-current-buffer b
                              ;; Change the default-directory so that it doesn't affect `sesman--linked-sessions` logic:
                              (setq-local default-directory
                                          (with-current-buffer "*Messages*" default-directory)))
                            (cider-test-render-report
                             b
                             summary
                             results
                             elapsed-time
                             ns-elapsed-time
                             var-elapsed-time))
                        (when (get-buffer cider-test-report-buffer)
                          (with-current-buffer cider-test-report-buffer
                            (let ((inhibit-read-only t))
                              (erase-buffer)))
                          (cider-test-render-report
                           cider-test-report-buffer
                           summary
                           results
                           elapsed-time
                           ns-elapsed-time))))))))
         conn)))))

(defun juvi-execute-all-but-integration-tests ()
  (interactive)
  (juvi-execute-tests nil '("integration-test")))

(define-key cider-mode-map (kbd "C-o C-t C-o") 'juvi-execute-all-but-integration-tests)

(defun juvi-execute-integration-tests ()
  (interactive)
  (juvi-execute-tests '("integration-test") nil))

(define-key cider-mode-map (kbd "C-o C-t C-i") 'juvi-execute-integration-tests)

;; (defun juvi-pprint-sample ()
;;   (interactive)
;;   (cider--pprint-eval-form (concat "@dev/sample-atom")))
;; (define-key cider-mode-map (kbd "C-o C-d") 'juvi-pprint-sample)

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


(defun force-cider-restart ()
  (interactive)
  (cider-kill)
  (setq cider-lein-parameters "with-profile +dev repl :headless")
  (cider-jack-in nil))

(defun run-current-ns-tests ()
  (interactive)
  (cider-load-buffer)
  (cider-test-run-ns-tests t))

(define-key cider-mode-map (kbd "C-o C-g") 'run-current-ns-tests)

(defun indend-in-kill-ring ()
  (interactive)
  (cider-popup-buffer cider-result-buffer nil 'clojure-mode 'ancillary))

(defun juvi-indent-whole-sexp ()
  (interactive)
  (save-excursion
    (beginning-of-defun)
    (indent-sexp)))

(define-key clojure-mode-map (kbd "C-c n") 'juvi-indent-whole-sexp)

(defun juvi-require-sc-api ()
  (interactive)
  (cider-interactive-eval "(require 'sc.api)"))

(define-key cider-mode-map (kbd "C-q C-q") 'juvi-require-sc-api)

(defun juvi-define-local-variables-of-most-recent-execution-point ()
  (interactive)
  (cider-interactive-eval "
(let [ep-id (apply max (keys (:execution-points @sc.impl.db/db)))]
    (doseq [local-name (:sc.cs/local-names (sc.impl/resolve-code-site ep-id))]
      (println \"defining \" local-name)
      (intern *ns* local-name (sc.impl/ep-binding ep-id local-name))))"))

(define-key cider-mode-map (kbd "C-q C-w") 'juvi-define-local-variables-of-most-recent-execution-point)

(defun juvi-add-spy ()
  (interactive)
  (insert "(sc.api/spy )")
  (backward-char)
  (paredit-forward-slurp-sexp)
  (juvi-indent-whole-sexp))

(define-key cider-mode-map (kbd "C-q C-r") 'juvi-add-spy)

(defun juvi-remove-spy ()
  (interactive)
  (paredit-forward-barf-sexp)
  (backward-kill-sexp)
  (juvi-indent-whole-sexp))

(define-key cider-mode-map (kbd "C-q C-e") 'juvi-remove-spy)

(defun juvi-def-locals-definition ()
  (interactive)
  (insert "(defmacro def-locals [& value] ;; TODO: remove me
  `(do ~@(for [local-variable (map symbol (map name (keys &env)))]
           `(def ~local-variable ~local-variable))
       ~value))"))

(define-key cider-mode-map (kbd "C-q C-d") 'juvi-def-locals-definition)

(defun define-def-locals ()
  (cider-interactive-eval "(defmacro def-locals [& value]
                            `(do ~@(for [local-variable (map symbol (map name (keys &env)))]
                                     `(def ~local-variable ~local-variable))
                                 ~value))"))

(defun juvi-insert-def-locals ()
  (interactive)
  (define-def-locals)
  (insert "(def-locals) ;; TODO: remove me"))

(define-key cider-mode-map (kbd "C-q C-f") 'juvi-insert-def-locals)

(defun juvi-insert-identity ()
  (interactive)
  (insert "identity #_"))

(define-key cider-mode-map (kbd "C-q C-i") 'juvi-insert-def-locals)

(defun juvi-wrap-with-def-locals ()
  (interactive)
  (define-def-locals)
  (insert "(def-locals )")
  (backward-char 1)
  (paredit-forward-slurp-sexp))

(define-key cider-mode-map (kbd "C-S-q C-S-f") 'juvi-wrap-with-def-locals)

(add-to-list 'load-path "~/.emacs.d/vendor/iedit/")
(require 'iedit)
;;(require-packages 'iedit)
;; (define-key cider-mode-map (kbd "C-c C-y") 'iedit-mode)
(global-set-key (kbd "C-c C-y") 'iedit-mode)


(require-packages 'company)
(add-hook 'cider-repl-mode-hook #'company-mode)
(add-hook 'cider-mode-hook #'cider-company-enable-fuzzy-completion)
(add-hook 'clojure-mode-hook #'company-mode)
(add-hook 'emacs-lisp-mode-hook #'company-mode)

(define-key clojure-mode-map (kbd "C-<tab>") 'company-complete)

(require-packages 'highlight-symbol)
(global-set-key (kbd "C-c h") 'highlight-symbol-mode)
(defhydra hydra-highlight-symbol (global-map "C-c j")
  "highlight-symbol"
  ("n" highlight-symbol-next "next")
  ("p" highlight-symbol-prev "previous"))

(defun indent-buffer ()
  (interactive)
  (save-excursion
    (indent-region (point-min) (point-max) nil)))

(global-set-key (kbd "C-c b") 'indent-buffer)

(defun insert-current-date-time ()
  (interactive)
  (when (use-region-p)
    (delete-region (region-beginning) (region-end)))
  (insert (format-time-string "%_e %_m %_Y %_H %_M" (current-time))))
(define-key clojure-mode-map (kbd "C-c d") 'insert-current-date-time)

(defun juvi-insert-debug-prn ()
  (interactive)
  (save-excursion
    (insert "(prn ) ;; TODO: remove me\n"))
  (forward-char 5))

(define-key clojure-mode-map (kbd "C-M-o C-M-p") 'juvi-insert-debug-prn)

(defun juvi-insert-debug-emit ()
  (interactive)
  (save-excursion
    (insert "(log/serialized-prn ) ;; TODO: remove me\n"))
  (forward-char 20))

(define-key clojure-mode-map (kbd "C-M-O C-M-O") 'juvi-insert-debug-emit)

(defun juvi-insert-now ()
  (interactive)
  (save-excursion
    (insert ";; NOW TODO: remove me"))
  (juvi-indent-whole-sexp))

(defun juvi-search-now-forward ()
  (interactive)
  (search-forward "NOW"))

(defun juvi-search-now-backward ()
  (interactive)
  (search-backward "NOW"))

(defhydra hydra-now (global-map "C-o n")
  "now"
  ("i" juvi-insert-now "insert-now")
  ("n" juvi-search-now-forward "search-now-forward")
  ("p" juvi-search-now-backward "search-now-backward"))

(defun juvi-insert-comment-block ()
  (interactive)
  (save-excursion
    (insert "(comment\n  \n) ;; TODO: remove me\n"))
  (forward-char 11)
  (juvi-indent-whole-sexp))

(define-key clojure-mode-map (kbd "C-M-o C-M-n") 'juvi-insert-comment-block)

(defun juvi-insert-break-point ()
  (interactive)
  (insert "#break ")
  (juvi-indent-whole-sexp))

(define-key clojure-mode-map (kbd "C-o b") 'juvi-insert-break-point)

(defun juvi-add-test ()
  (interactive)
  (let ((function-name (cider-last-sexp)))
    (goto-char (second (cider-defun-at-point t)))
    (insert (concat "\n(deftest test-" function-name "\n  (is (= \n         (" function-name " ))))\n"))
    (backward-char 5)))

(define-key clojure-mode-map (kbd "C-o v") 'juvi-add-test)

(defun juvi-yank-quoted-and-unquoted ()
  (interactive)
  (insert "'")
  (yank)
  (insert " ")
  (yank))

(define-key clojure-mode-map (kbd "C-M-o C-M-y") 'juvi-yank-quoted-and-unquoted)

(defun juvi-define-last-sexp ()
  (interactive)
  (let  ((sexp (cider-last-sexp)))
    (backward-sexp)
    (insert "(def ")
    (forward-sexp)
    (insert " ")
    (insert sexp)
    (insert ") ;; TODO: remove me")))

(define-key clojure-mode-map (kbd "C-M-o C-M-u") 'juvi-define-last-sexp)

(defun juvi-define-vars-for-symbols-in-a-vector-in-the-kill-ring ()
  (interactive)
  (dolist (symbol (split-string (substring (first kill-ring)
                                           1
                                           -1)
                                "\s+"))
    (insert "(def " symbol " " symbol ") ;; TODO: remove me\n"))

  (juvi-indent-whole-sexp))

(define-key clojure-mode-map (kbd "S-C-M-o S-C-M-u") 'juvi-define-vars-for-symbols-in-a-vector-in-the-kill-ring)


(defun juvi-duplicate-quoted ()
  (interactive)
  (let  ((sexp (cider-last-sexp)))
    (backward-sexp)
    (insert "'")
    (forward-sexp)
    (insert " ")
    (insert sexp)))

(define-key clojure-mode-map (kbd "C-o d") 'juvi-duplicate-quoted)

(defun insert-defun-name ()
  (interactive)
  ;; TODO: parse def and defun name from the sexp and insert that
  (insert (cider-defun-at-point)))

;; (define-key clojure-mode-map (kbd "C-o n") 'insert-defun-name)

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


(define-key clojure-mode-map (kbd "M-q") 'lisp-fill-paragraph)

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
  ("p" other-window-backwards "other window backwards")
  ("n" other-window "other window"))

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
(require-packages 'org)

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

(global-set-key (kbd "M-o M-r") 'rename-file-and-buffer)

;; mark-sexp
(define-key markdown-mode-map (kbd "C-M-m") nil)
(global-set-key (kbd "C-M-m") 'mark-sexp)

;; kill spaces

(defun kill-spaces-except-one ()
  (interactive)
  (just-one-space -1))

(global-set-key (kbd "C-M-k") 'kill-spaces-except-one)

(defun kill-all-spaces ()
  (interactive)
  (just-one-space -1)
  (delete-backward-char 1))

(global-set-key (kbd "C-S-M-k") 'kill-all-spaces)

(defun juvi-just-one-space-in-region (beg end)
  "replace all whitespace in the region with single spaces"
  (interactive "r")
  (save-excursion
    (save-restriction
      (narrow-to-region beg end)
      (goto-char (point-min))
      (while (re-search-forward "[ \n]+" nil t)
        (replace-match " ")))))

(global-set-key (kbd "M-K") 'juvi-just-one-space-in-region)

;; avy

(require-packages 'avy)
(global-set-key (kbd "M-j") 'avy-goto-char-timer)
(define-key cider-mode-map (kbd "M-j") 'avy-goto-char-timer)
(define-key outline-mode-map (kbd "M-j") 'avy-goto-char-timer)
(cider-defun-at-point)
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

;; (require-packages 'ggtags)

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

(defun juvi-indent-buffers-that-wgrep-changed ()
  "Originally from Macroz."
  (interactive)
  (let ((count 0))
    (dolist (b (buffer-list))
      (with-current-buffer b
        (let ((ovs (wgrep-file-overlays)))
          (when (and ovs (buffer-modified-p))
            (indent-buffer)
            (setq count (1+ count))))))
    (message "%d buffers have been indented." count)))

(defun juvi-wgrep-finish-edit ()
  (interactive)
  (wgrep-finish-edit)
  (juvi-indent-buffers-that-wgrep-changed)
  (save-some-buffers t))

(define-key wgrep-mode-map (kbd "C-x C-s") 'juvi-wgrep-finish-edit)

;; easyPG https://www.emacswiki.org/emacs/EasyPG

(epa-file-enable)

;; (add-to-list 'load-path "~/.emacs.d/vendor/beacon/")
;; (require 'beacon)
;; (beacon-mode 1)

(set-scroll-bar-mode 'left)
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)


(global-set-key (kbd "M-l") 'downcase-dwim)
(global-set-key (kbd "M-u") 'upcase-dwim)

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

(defun juvi-double-cursor ()
  (interactive)
  (mc/save-excursion
   (insert " ")
   (mc/create-fake-cursor-at-point))
  (multiple-cursors-mode 1))

(add-to-list 'mc/cmds-to-run-once 'juvi-double-cursor)

(global-set-key (kbd "C-o M-y") 'juvi-double-cursor)


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

(global-set-key (kbd "C-o C-a") 'paredit-mode)


(defun juvi-insert-current-date-time ()
  (interactive)
  (when (use-region-p)
    (delete-region (region-beginning) (region-end)))
  (insert (format-time-string "%_Y-%_0m-%_0eT%_0H:%_0M:%0S" (current-time))))

(global-set-key (kbd "M-k M-v") 'juvi-insert-current-date-time)


(defun juvi-insert-current-date ()
  (interactive)
  (when (use-region-p)
    (delete-region (region-beginning) (region-end)))
  (insert (format-time-string "%-d.%-m.%_Y" (current-time))))

(global-set-key (kbd "C-o C-d") 'juvi-insert-current-date)

(global-set-key (kbd "C-o M-j") (lambda ()
                                  (interactive)
                                  (insert "taoensso.tufte/p :")))

(global-set-key (kbd "C-o M-k") (lambda ()
                                  (interactive)
                                  (insert "logga.core/write ")))

;; ripgrep

(require-packages 'rg)

(rg-define-search juvi-rg-project
  "Run ripgrep in current project searching for literal in all files."
  :dir project
  :files "everything"
  :format literal
  :flags '("--context 1"))

(global-set-key (kbd "C-o C-z") 'juvi-rg-project)

(rg-define-search juvi-rg-parent-project
  "Run ripgrep in current projects parent project searching for literal in all files."
  :dir (file-name-concat (projectile-project-root) "../")
  :files "everything"
  :format literal
  :flags '("--context 1"))

(global-set-key (kbd "C-o M-z") 'juvi-rg-parent-project)

(rg-define-search juvi-rg-everything
  "Run ripgrep in current project searching for literal in all files."
  :dir (projectile-project-root)
  :files "everything"
  :format literal
  :flags '("--context 1"))

(global-set-key (kbd "C-o M-z") 'juvi-rg-parent-project)


(global-set-key (kbd "C-c M-s") #'rg-menu)
(define-key cider-mode-map (kbd "C-c M-s") #'rg-menu)

;; (setq debug-on-error t)


(defun juvi-set-font-size (height)
  (set-face-attribute 'default nil :height height))

(defhydra juvi-hydra-font-size (global-map "C-o f")
  "font-size"

  ("l" (juvi-set-font-size 120) "laptop")
  ("s" (juvi-set-font-size 90) "small laptop")
  ("d" (juvi-set-font-size 180) "desktop")
  ("f" (juvi-set-font-size 160) "small desktop"))

(add-to-list 'load-path "~/.emacs.d/vendor/re-jump.el/")
(load "re-jump")

(global-set-key (kbd "M-F") 'end-of-buffer)
(global-set-key (kbd "M-B") 'beginning-of-buffer)
(global-set-key (kbd "C-o M-f") 'fill-paragraph)

(setq frame-title-format "%b")


;; show character count on modeline
;; (add-to-list 'global-mode-string '(" %i"))

;; originally from https://stackoverflow.com/a/49525307
(defun juvi-start-cider-repl-with-profile (profile)
  (interactive "sEnter profile name: ")
  (let ((lein-params (concat "with-profile +" profile " repl :headless")))
    (set-variable 'cider-lein-parameters lein-params)
    ;;(cider-jack-in-clj (list :jack-in-cmd lein-params))
    (cider-jack-in-clj '())))

(defun juvi-jack-in-experimentation ()
  (interactive)
  (cider-jack-in-clj '(:jack-in-cmd "with-profile +experimentation repl :headless")))

(require-packages 'flycheck-clj-kondo)
(add-hook 'clojurescript-mode-hook #'flycheck-mode)
(add-hook 'clojure-mode-hook #'flycheck-mode)
(add-hook 'python-mode-hook #'flycheck-mode)

(defun juvi-connect-to-localhost ()
  (interactive)
  (cider-connect-clj '(:host "localhost"
                             :port 7888)))

;; use this when developing build program with deps.edn and tools.build
(defun juvi-use-build-clj-alias ()
  (interactive)
  (setq cider-clojure-cli-global-options "-A:build"))

(defun juvi-use-dev-clj-alias ()
  (interactive)
  (setq cider-clojure-cli-global-options "-A:dev"))

(defun juvi-clear-clj-options ()
  (interactive)
  (setq cider-clojure-cli-global-options ""))

(define-key cider-mode-map (kbd "C-o c") 'juvi-connect-to-localhost)


;; python

(setq python-shell-interpreter "python3")

(require-packages 'python-pytest)

(use-package elpy
  :ensure t
  :init
  (elpy-enable))

;; (elpy-enable)
;; (require-packages 'elpy)

(setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
(add-hook 'elpy-mode-hook 'flycheck-mode)
;; (add-hook 'elpy-mode-hook (lambda () (elpy-shell-toggle-dedicated-shell 1)))
(setq elpy-shell-use-project-root nil)

(defun juvi-initialize-python-repl ()
  (interactive)
  (python-shell-send-file "initializeRepl.py"))

(defun juvi-restart-python ()
  (interactive)
  (if (python-shell-get-process)
      (elpy-shell-kill))
  (pyvenv-activate "venv")
  (run-python)
  ;;   (python-shell-send-string "print('moi')")
  ;;   (python-shell-send-string "
  ;; with open('initializeRepl.py','r') as file:
  ;;     contents = file.read()
  ;;     __PYTHON_EL_eval(contents, 'initializeRepl.py')
  ;; ")
  ;; (call-interactively #'juvi-initialize-python-repl)
;;;  (call-interactively #'python-shell-send-file "initializeRepl.py")
  ;;   (python-shell-send-file "initializeRepl.py")
  )

;; This does not work
(defun juvi-restart-and-evaluate-python-buffer ()
  (interactive)
  (juvi-restart-python)
  (juvi-initialize-python-repl)
  (elpy-shell-send-buffer))

(define-key elpy-mode-map (kbd "C-c s") 'juvi-restart-python)
(define-key elpy-mode-map (kbd "C-c C-s") 'juvi-initialize-python-repl)

(defun juvi-send-python-statement ()
  (interactive)
  (if (use-region-p)
      (python-shell-send-region (region-beginning)
                                (region-end))
    (python-shell-send-statement)))

(define-key elpy-mode-map (kbd "C-c C-c") 'juvi-send-python-statement)
(define-key elpy-mode-map (kbd "C-c c") 'elpy-shell-send-defun)

;; (defun juvi-run-python-unittests ()
;;   (interactive)
;;   (save-buffer)
;;   (juvi-restart-python)
;;   (elpy-shell-send-buffer)
;;   (python-shell-send-string "unittest.main()"))

(defun juvi-run-python-unittests ()
  (interactive)
  ;; (python-shell-send-string "unittest.main(exit=False)")
  (save-buffer)
  (python-pytest-file (buffer-file-name)))

(define-key elpy-mode-map (kbd "C-o C-t C-t") 'juvi-run-python-unittests)

(defun juvi-insert-debug-python-print ()
  (interactive)
  (insert "print(f'")
  (yank)
  (insert ": {")
  (yank)
  (insert "}') # TODO: remove-me\n"))

(define-key elpy-mode-map (kbd "C-M-o C-M-p") 'juvi-insert-debug-python-print)


(defun juvi-mark-python-region-for-eval ()
  (interactive)
  (setq juvi-marked-python-code (buffer-substring (region-beginning) (region-end)))
  (message "marked python code for eval"))

(define-key elpy-mode-map (kbd "C-M-o C-M-e") 'juvi-mark-python-region-for-eval)

(define-key elpy-mode-map (kbd "C-c C-k") 'python-shell-send-buffer)

(defun juvi-send-marked-python-code ()
  (interactive)
  (python-shell-send-string juvi-marked-python-code))

(define-key elpy-mode-map (kbd "C-M-o C-M-o") 'juvi-send-marked-python-code)

(setq python-shell-completion-native-enable nil)

(defun juvi-comment-line (n)
  "Based on comment-line.

Comment or uncomment current line and leave point after it.
With positive prefix, apply to N lines including current one.
With negative prefix, apply to -N lines above.  Also, further
consecutive invocations of this command will inherit the negative
argument.

If region is active, comment lines in active region instead.
Unlike `comment-dwim', this always comments whole lines."
  (interactive "p")
  (if (use-region-p)
      (comment-or-uncomment-region
       (save-excursion
         (goto-char (region-beginning))
         (line-beginning-position))
       (save-excursion
         (goto-char (region-end))
         (line-end-position)))
    (when (and (eq last-command 'comment-line-backward)
               (natnump n))
      (setq n (- n)))
    (let ((range
           (list (line-beginning-position)
                 (goto-char (line-end-position n)))))
      (comment-or-uncomment-region
       (apply #'min range)
       (apply #'max range)))
    (unless (natnump n) (setq this-command 'comment-line-backward))))

(define-key elpy-mode-map (kbd "C-o C-g") 'juvi-comment-line)


(define-key elpy-mode-map (kbd "C-x C-e") 'python-shell-send-statement)


(defun juvi-python-shell-buffer-substring (start end &optional nomain no-cookie)
  "Same as python-shell-buffer-substring except does not add \"if True:\" prefix.

Send buffer substring from START to END formatted for shell.
This is a wrapper over `buffer-substring' that takes care of
different transformations for the code sent to be evaluated in
the python shell:
  1. When optional argument NOMAIN is non-nil everything under an
     \"if __name__ == \\='__main__\\='\" block will be removed.
  2. When a subregion of the buffer is sent, it takes care of
     appending extra empty lines so tracebacks are correct.
  3. When the region sent is a substring of the current buffer, a
     coding cookie is added.
  4. Wraps indented regions under an \"if True:\" block so the
     interpreter evaluates them correctly."
  (let* ((start (save-excursion
                  ;; If we're at the start of the expression, and
                  ;; there's just blank space ahead of it, then expand
                  ;; the region to include the start of the line.
                  ;; This makes things work better with the rest of
                  ;; the data we're sending over.
                  (goto-char start)
                  (if (string-blank-p
                       (buffer-substring (line-beginning-position) start))
                      (line-beginning-position)
                    start)))
         (substring (buffer-substring-no-properties start end))
         (starts-at-point-min-p (save-restriction
                                  (widen)
                                  (= (point-min) start)))
         (encoding (python-info-encoding))
         (toplevel-p (zerop (save-excursion
                              (goto-char start)
                              (python-util-forward-comment 1)
                              (current-indentation))))
         (fillstr (and (not no-cookie)
                       (not starts-at-point-min-p)
                       (concat
                        (format "# -*- coding: %s -*-\n" encoding)
                        (make-string
                         ;; Subtract 2 because of the coding cookie.
                         (- (line-number-at-pos start) 2) ?\n)))))
    (with-temp-buffer
      (python-mode)
      (when fillstr
        (insert fillstr))
      (insert substring)
      (goto-char (point-min))
      ;; (when (not toplevel-p)
      ;;   (insert "if True:")
      ;;   (delete-region (point) (line-end-position)))
      (when nomain
        (let* ((if-name-main-start-end
                (and nomain
                     (save-excursion
                       (when (python-nav-if-name-main)
                         (cons (point)
                               (progn (python-nav-forward-sexp-safe)
                                      ;; Include ending newline
                                      (forward-line 1)
                                      (point)))))))
               ;; Oh destructuring bind, how I miss you.
               (if-name-main-start (car if-name-main-start-end))
               (if-name-main-end (cdr if-name-main-start-end))
               (fillstr (make-string
                         (- (line-number-at-pos if-name-main-end)
                            (line-number-at-pos if-name-main-start)) ?\n)))
          (when if-name-main-start-end
            (goto-char if-name-main-start)
            (delete-region if-name-main-start if-name-main-end)
            (insert fillstr))))
      ;; Ensure there's only one coding cookie in the generated string.
      (goto-char (point-min))
      (when (looking-at-p (python-rx coding-cookie))
        (forward-line 1)
        (when (looking-at-p (python-rx coding-cookie))
          (delete-region
           (line-beginning-position) (line-end-position))))
      (buffer-substring-no-properties (point-min) (point-max)))))

(defun juvi-python-shell-send-region (start end &optional send-main msg no-cookie)
  "The same as python-shell-send-region except calls juvi-python-shell-buffer-substring
and elpy-shell-switch-to-shell.

Send the region delimited by START and END to inferior Python process.
When optional argument SEND-MAIN is non-nil, allow execution of
code inside blocks delimited by \"if __name__== \\='__main__\\=':\".
When called interactively SEND-MAIN defaults to nil, unless it's
called with prefix argument.  When optional argument MSG is
non-nil, forces display of a user-friendly message if there's no
process running; defaults to t when called interactively."
  (interactive
   (list (region-beginning) (region-end) current-prefix-arg t))
  (let* ((string (juvi-python-shell-buffer-substring start end (not send-main)
                                                     no-cookie))
         (process (python-shell-get-process-or-error msg))
         (original-string (buffer-substring-no-properties start end))
         (_ (string-match "\\`\n*\\(.*\\)" original-string)))
    (message "Sent: %s..." (match-string 1 original-string))
    ;; Recalculate positions to avoid landing on the wrong line if
    ;; lines have been removed/added.
    (with-current-buffer (process-buffer process)
      (compilation-forget-errors))
    (python-shell-send-string string process)
    (deactivate-mark)
    (elpy-shell-switch-to-shell)))

(define-key elpy-mode-map (kbd "C-c C-p") 'juvi-python-shell-send-region)

;; overtone


(defun juvi-stop-overtone ()
  (interactive)
  (cider-interactive-eval "(overtone.sc.server/stop)"
                          (nrepl-make-response-handler juvi-marked-buffer
                                                       (lambda (buffer value))
                                                       (lambda (_buffer out))
                                                       (lambda (_buffer err))
                                                       nil))
  (message "stopped overtone"))

(define-key cider-mode-map (kbd "C-M-o C-M-k") 'juvi-stop-overtone)


(require-packages 'zettelkasten)

(require-packages 'yasnippet)

(defun juvi-set-java-17 ()
  (interactive)
  (setenv "JENV_VERSION" "17"))


;; c

(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'irony-mode-hook #'irony-eldoc)


(require 'quelpa)

(quelpa '(change-case :fetcher git :url "git@gist.github.com:e8a10244aac6308de1323d1f6685658b.git"))

;; emacs

;; originally from https://stackoverflow.com/a/2417617
(defun juvi-put-file-on-clipboard (include-path)
  (let ((filename (if (equal major-mode 'dired-mode)
                      default-directory
                    (if include-path
                        (buffer-file-name)
                      (file-name-nondirectory (buffer-file-name))))))
    (when filename
      (with-temp-buffer
        (insert filename)
        (clipboard-kill-region (point-min) (point-max)))
      (message filename))))

(defun juvi-put-file-path-on-clipboard ()
  "Put the current file name on the clipboard"
  (interactive)
  (juvi-put-file-on-clipboard t))

(defun juvi-put-file-name-on-clipboard ()
  "Put the current file path on the clipboard"
  (interactive)
  (juvi-put-file-on-clipboard nil))



(global-set-key (kbd "C-M-j") 'transient-prefix-juvi)

(setq-default frame-title-format '("%b"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(highlight-symbol-face ((t (:background "dark cyan"))))
 '(magit-hash ((t (:foreground "grey60")))))

(defun juvi-format-region-to-clipboard (mode)
  (let ((formatted-buffer (get-buffer-create "formatted-region"))
        (code-to-be-formatted (buffer-substring (mark) (point))))
    (set-buffer formatted-buffer)
    (funcall mode)
    (erase-buffer)
    (insert code-to-be-formatted)
    (indent-region (point-min) (point-max) nil)
    (clipboard-kill-ring-save (point-min) (point-max))))

(defun juvi-format-clojure-region-to-clipboard ()
  (interactive)
  (juvi-format-region-to-clipboard 'clojure-mode))

(define-key cider-mode-map (kbd "C-M-w") 'juvi-format-clojure-region-to-clipboard)

(defun juvi-format-python-region-to-clipboard ()
  (interactive)
  (juvi-format-region-to-clipboard 'python-mode))


(transient-define-prefix transient-prefix-juvi ()
  "juvi"
  [("p" "put-file-path-on-clipboard" juvi-put-file-path-on-clipboard)
   ("n" "put-file-name-on-clipboard" juvi-put-file-name-on-clipboard)
   ("h" "hide-result-buffer-cursor" juvi-hide-result-buffer-cursor)
   ("r" "copy-result-buffer" juvi-copy-result-buffer)
   ("t" "execute-all-but-integration-tests" juvi-execute-all-but-integration-tests)
   ("i" "execute-integration-tests" juvi-execute-integration-tests)
   ("f" "format-clojure-region-to-clipboard" juvi-format-clojure-region-to-clipboard)
   ("o" "insert-now" juvi-insert-now)])

(define-key python-mode-map (kbd "C-M-w") 'juvi-format-python-region-to-clipboard)




(global-set-key (kbd "C-x C-l") 'balance-windows)

;; (global-hl-line-mode)

;; lsp

(require-packages 'lsp-mode)
(require-packages 'lsp-ui)

;; odin

(add-to-list 'load-path "~/.emacs.d/vendor/odin-mode/")
(require 'odin-mode)

;; With odin-mode (https://github.com/mattt-b/odin-mode) and lsp-mode already added to your init.el of course!.
(setq-default lsp-auto-guess-root t) ;; if you work with Projectile/project.el this will help find the ols.json file.
(defvar lsp-language-id-configuration '((odin-mode . "odin")))
(lsp-register-client
 (make-lsp-client :new-connection (lsp-stdio-connection "/Users/jukka/src-others/ols/ols")
                  :major-modes '(odin-mode)
                  :server-id 'ols
                  :multi-root t)) ;; This is just so lsp-mode sends the "workspaceFolders" param to the server.
(add-hook 'odin-mode-hook #'lsp)

;; xml

(require-packages 'xml-format)
