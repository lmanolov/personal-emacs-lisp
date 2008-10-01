;; ********************************************************************************
;; Load Path
;;
(add-to-list 'load-path "~/elisp/")
(add-to-list 'load-path "~/elisp/bbdb")
(add-to-list 'load-path "~/elisp/cedet-common")
(add-to-list 'load-path "~/elisp/cedet-contrib")
(add-to-list 'load-path "~/elisp/cogre")
(add-to-list 'load-path "~/elisp/ecb")
(add-to-list 'load-path "~/elisp/ede")
(add-to-list 'load-path "~/elisp/eieio")
(add-to-list 'load-path "~/elisp/flyparse")
(add-to-list 'load-path "~/elisp/git")
(add-to-list 'load-path "~/elisp/js2-mode")
(add-to-list 'load-path "~/elisp/nxml-mode")
(add-to-list 'load-path "~/elisp/rhtml")
(add-to-list 'load-path "~/elisp/ruby")
(add-to-list 'load-path "~/elisp/semantic")
(add-to-list 'load-path "~/elisp/speedbar")
(add-to-list 'load-path "~/elisp/color-theme")
(add-to-list 'load-path "~/elisp/as3-mode")
(add-to-list 'load-path "~/elisp/yasnippet")

;; ********************************************************************************
;; Require libraries
;;
(require 'windmove)
(require 'paren)
(require 'git)
(require 'vc-svn)
(require 'vc-git)
(require 'tabbar)
(require 'cedet)
(require 'ecb)
(require 'color-theme)

;; ********************************************************************************
;; Load my own elisp stuff
;;
(load "abbrevs")
(load "browser-help")
(load "buffer-cycle")
(load "completions")
(load "find-tags-file")
(load "imenu-from-pattern")
(load "js2")
(load "move-lines")
(load "window-management")



;; ********************************************************************************
;; Variables
;;
(fset 'yes-or-no-p 'y-or-n-p)
(setq x-select-enable-clipboard t)
(setq interprogram-paste-function 'x-cut-buffer-or-selection-value)
(setq browse-url-browser-function 'browse-url-firefox)
(setq case-fold-search t)
(setq compilation-read-command t)
(setq compilation-window-height nil)
(setq emacs-goodies-el-defaults t)
(setq enable-recursive-minibuffers nil)
(setq inhibit-startup-screen t)
(setq list-directory-verbose-switches "")
(setq next-line-add-newlines nil)
(setq nxml-slash-auto-complete-flag t)
(setq session-initialize t)
(setq standard-indent 2)
(setq use-file-dialog t)
(setq tags-revert-without-query t)
(setq tab-width 4)
(setq calendar-week-start-day 1)
(setq european-calendar-style 't)
(setq-default indent-tabs-mode nil)
(setq default-tab-width 4)
(setq c-basic-indent 4)


;; Rinari
(require 'rinari)
(require 'inflections)

(load "rinari-extensions")

(setq ffip-find-options "-not -regex '.*vendor.*'")

;; Cua
(cua-mode t)
(setq cua-enable-region-auto-help t)
(setq cua-highlight-region-shift-only nil)

(setq current-language-environment "UTF-8")
(setq dabbrev-abbrev-char-regexp "\\\\sw")
(setq default-input-method "rfc1345")
(setq default-major-mode 'text-mode)

;; Desktop 
(desktop-save-mode t)
(setq desktop-globals-to-save nil)
(setq desktop-load-locked-desktop t)
(setq desktop-save t)

;; Ibuffer
(setq ibuffer-default-sorting-mode 'major-mode)
(setq ibuffer-enable nil)
(setq ibuffer-expert t)

;; Ido
(ido-mode t)
(setq ido-case-fold t)
(setq ido-enable-flex-matching t)
(setq ido-everywhere nil)

;; I-Menu
(setq imenu-auto-rescan t)
(setq imenu-sort-function 'imenu--sort-by-name)

;; Modes
(setq initial-major-mode 'text-mode)
(column-number-mode t)
(mouse-wheel-mode t)
(partial-completion-mode t)
(tool-bar-mode nil)
(global-hl-line-mode t)
(show-paren-mode t)
(transient-mark-mode t)
(menu-bar-mode nil)
(tabbar-mode t)

;; Scrolling
(scroll-bar-mode nil)
(setq scroll-conservatively 5)
(setq scroll-step 1)

;; Woman
(setq woman-fill-column 80)
(setq woman-use-own-frame nil)

;; ********************************************************************************
;; Autoloads
;;
(autoload 'worklog "worklog" "Work log" t)
(autoload 'rdebug "rdebug" "Ruby Debug" t)


;; ********************************************************************************
;; Session
;;
(require 'session)
(setq session-initialize t)
(add-hook 'after-init-hook 'session-initialize)


;; ********************************************************************************
;; Git
;;
(autoload 'git-blame-mode "git-blame" "Minor mode for incremental blame for Git." t)


;; ********************************************************************************
;; RI
;;
(setq ri-ruby-script (expand-file-name "~/elisp/ruby/ri-emacs.rb"))
(autoload 'ri "~/elisp/ruby/ri-ruby.el" nil t)

;; ********************************************************************************
;; Outline
;;
(require 'outline)

(define-key outline-minor-mode-map (kbd "M-s") 'show-all)
(define-key outline-minor-mode-map (kbd "C-M-s") 'hide-leaves)
(define-key outline-minor-mode-map (kbd "<C-M-left>") 'hide-subtree)
(define-key outline-minor-mode-map (kbd "<C-M-right>") 'show-subtree)
(define-key outline-minor-mode-map (kbd "<C-up>") 'outline-previous-heading)
(define-key outline-minor-mode-map (kbd "<C-down>") 'outline-next-heading)


;; ********************************************************************************
;; Twitter
;;
(autoload 'twitter-get-friends-timeline "twitter" nil t)
(autoload 'twitter-status-edit "twitter" nil t)
(global-set-key "\C-xt" 'twitter-get-friends-timeline)
(add-hook 'twitter-status-edit-mode-hook 'longlines-mode)


;; ********************************************************************************
;; Text Mode
;;
;; (define-key text-mode-map (kbd "<tab>") 'indent-and-complete)

;; (defun text-mode-on-init ()
;;   (set (make-local-variable 'hippie-expand-try-functions-list)
;;        '(try-expand-abbrev
;; 	 try-expand-dabbrev
;; 	 try-expand-ispell)))

;; (add-hook 'text-mode-hook 'text-mode-on-init)


;; ********************************************************************************
;; Markdown Mode
;;
(defun markdown-mode-on-init ()
  (define-key markdown-mode-map (kbd "<tab>") 'indent-and-complete)
  (set (make-local-variable 'hippie-expand-try-functions-list)
       '(try-expand-abbrev
	 try-expand-dabbrev
	 try-expand-ispell)))

(add-hook 'markdown-mode-hook 'markdown-mode-on-init)
(autoload 'markdown-mode "markdown-mode.el" "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))



;; ********************************************************************************
;; Message Mode
;;
(defun message-mode-on-init ()
  (flyspell-mode t)
  (set (make-local-variable 'hippie-expand-try-functions-list)
       '(try-expand-abbrev
	 try-expand-dabbrev
	 try-expand-ispell)))


(add-hook 'message-mode-hook 'message-mode-on-init)

(setq message-tab-body-function 'indent-and-complete)



;; ********************************************************************************
;; Python Mode
;;
(autoload 'python-mode "python-mode" "Python Mode." t)
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-to-list 'interpreter-mode-alist '("python" . python-mode))



;; ********************************************************************************
;; Ruby Mode
;;
(require 'ruby-electric)

(add-to-list 'auto-mode-alist  '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist  '("\\.rb$" . ruby-mode))
(add-to-list 'auto-mode-alist  '("\\.rake$" . ruby-mode))  

(defun ruby-mode-on-init ()
  (rinari-launch)
  (ruby-electric-mode t)

  (outline-minor-mode t)
  (setq outline-regexp " *\\(def \\|class\\|module\\)")

  (make-local-variable 'tags-file-name)

  (set (make-local-variable 'tab-width) 2)
  (set (make-local-variable 'hippie-expand-try-functions-list)
       '(try-expand-abbrev
	 try-expand-dabbrev
	 try-expand-tag))

  (setq local-abbrev-table ruby-mode-abbrev-table)

  (case (rinari-whats-my-type)
    (:model      (setq local-abbrev-table rails-model-abbrev-table))
    (:controller (setq local-abbrev-table rails-controller-abbrev-table))
    (:functional (setq local-abbrev-table ruby-test-abbrev-table))
    (:unit (setq local-abbrev-table ruby-test-abbrev-table)))

  (define-key ruby-mode-map (kbd "C-c =") 'ruby-xmp-region)
  (define-key ruby-mode-map (kbd "<tab>") 'indent-and-complete)
  (define-key ruby-mode-map (kbd "<C-menu>") 'show-ruby-menu)
  )

(add-hook 'ruby-mode-hook 'ruby-mode-on-init)


;; ********************************************************************************
;; RHTML Mode
;;
(eval-when-compile (require 'rhtml-mode))

(autoload 'rhtml-mode "rhtml-mode" "RHTML Mode" t)
(add-to-list 'auto-mode-alist '("\\.rhtml$" . rhtml-mode))

(defun rhtml-mode-on-init ()
  (abbrev-mode nil)
  (make-local-variable 'tags-file-name)
  (set-face-attribute 'erb-delim-face nil :background "#fff")
  (set-face-attribute 'erb-face nil :background "#fff")
  (set-face-attribute 'erb-out-delim-face nil :foreground "#933")
  (setq local-abbrev-table rhtml-mode-abbrev-table)
  (set (make-local-variable 'hippie-expand-try-functions-list)
       '(try-expand-abbrev
	 try-expand-dabbrev
	 try-expand-tag))
  (define-key rhtml-mode-map (kbd "<tab>") 'indent-and-complete))

(defun abbrev-in-rhtml-mode (fn)
  (if (and (boundp 'rhtml-erb-tag-region) (rhtml-erb-tag-region))
      ()
    (funcall fn)))

(add-hook 'rhtml-mode-hook 'rhtml-mode-on-init)
(add-hook 'abbrev-expand-functions 'abbrev-in-rhtml-mode)


;; ********************************************************************************
;; IRB Mode
;;
(defun inferior-ruby-mode-on-init ()
  (set (make-local-variable 'hippie-expand-try-functions-list)
       '(try-expand-abbrev
	 try-expand-dabbrev
	 try-expand-tag))
  (define-key inferior-ruby-mode-map (kbd "<tab>") 'indent-and-complete))

(add-hook 'inferior-ruby-mode-hook 'inferior-ruby-mode-on-init)



;; ********************************************************************************
;; JS2 Mode
;;
(eval-when-compile (require 'js2-mode))

(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(defun js2-mode-on-init ()
  (make-local-variable 'tags-file-name)
  (setq js2-basic-offset 4)
  (setq js2-bounce-indent-flag nil)
  (setq js2-highlight-level 4)
  (setq js2-mode-show-overlay nil)
  (set (make-local-variable 'hippie-expand-try-functions-list)
       '(try-expand-abbrev
	 try-expand-dabbrev
	 try-expand-javascript-symbol	 
	 try-expand-tag))
  (define-key js2-mode-map (kbd "<tab>") 'indent-and-complete)
  (define-key js2-mode-map (kbd "<C-menu>") 'show-javascript-menu))

(add-hook 'js2-mode-hook 'js2-mode-on-init)


;; ********************************************************************************
;; Actionscript 3 Mode
;;
(eval-when-compile (require 'as3-mode))

(autoload 'as3-mode "as3-mode" "Actionscript 3 Mode." t)
(add-to-list 'auto-mode-alist '("\\.as$" . as3-mode))

(setenv "CLASSPATH" 
	(concat (expand-file-name "~/elisp/flyparse/lib/flyparse_parsers.jar:" )
		(getenv "CLASSPATH")))

(defun as3-mode-on-init ()
  (make-local-variable 'tags-file-name)
  (set (make-local-variable 'hippie-expand-try-functions-list)
       '(try-expand-abbrev
	 try-expand-dabbrev
	 try-expand-tag))
  (define-key as3-mode-map (kbd "<tab>") 'indent-and-complete))
  
(add-hook 'as3-mode-hook 'as3-mode-on-init)


;; ********************************************************************************
;; Actionscript Mode
;;

(eval-when-compile (require 'actionscript-mode))

(autoload 'actionscript-mode "actionscript-mode" "Actionscript Mode." t)
;; (add-to-list 'auto-mode-alist '("\\.as$" . actionscript-mode))

(defun actionscript-mode-on-init ()
  (make-local-variable 'tags-file-name)
  (set (make-local-variable 'hippie-expand-try-functions-list)
       '(try-expand-abbrev
	 try-expand-dabbrev
	 try-expand-tag))
  (define-key actionscript-mode-map (kbd "<tab>") 'indent-and-complete))
  
(add-hook 'actionscript-mode-hook 'actionscript-mode-on-init)

(load "ani-fcsh")

(setq *fcsh-path* "fcsh")
(setq *fcsh-mxmlc-output-path* "")

(defun compile-mxmlc ()
  (interactive)
  (or *fcsh-compile-active* fcsh-compile)
  (call-interactively 'compile))


;; ********************************************************************************
;; Haxe Mode
;;
(eval-when-compile (require 'haxe-mode))

(autoload 'haxe-mode "haxe-mode" "Haxe Mode." t)
(add-to-list 'auto-mode-alist '("\\.hx$" . haxe-mode))

(defun haxe-mode-on-init ()
  (make-local-variable 'tags-file-name)
  (set (make-local-variable 'hippie-expand-try-functions-list)
       '(try-expand-abbrev
	 try-expand-dabbrev
	 try-expand-tag))
  (define-key haxe-mode-map (kbd "<tab>") 'indent-and-complete))
  
(add-hook 'haxe-mode-hook 'haxe-mode-on-init)



;; ********************************************************************************
;; Emacs-Lips Mode
;;
(defun emacs-lisp-mode-on-init ()
  (set (make-local-variable 'hippie-expand-try-functions-list)
       '(try-expand-abbrev
	 try-expand-dabbrev
	 try-complete-lisp-symbol))
  (define-key emacs-lisp-mode-map (kbd "<tab>") 'indent-and-complete))

(add-hook 'emacs-lisp-mode-hook 'emacs-lisp-mode-on-init)



;; ********************************************************************************
;; HTML Mode
;;
;; (add-to-list 'auto-mode-alist '("\\.html\\'" . html-mode))

(defun html-mode-on-init ()
  (set (make-local-variable 'hippie-expand-try-functions-list)
       '(try-expand-abbrev
	 try-expand-dabbrev
	 try-expand-tag))
  (define-key html-mode-map (kbd "<tab>") 'indent-and-complete))

(add-hook 'html-mode-hook 'html-mode-on-init)


;; ********************************************************************************
;; CSS Mode
;;
(eval-when-compile (require 'css-mode))

(defun css-mode-on-init ()
  (setq cssm-indent-level 4)
  (setq cssm-indent-function #'cssm-c-style-indenter)
  (set (make-local-variable 'hippie-expand-try-functions-list)
       '(try-expand-css-property 
	 try-expand-dabbrev))
  (define-key cssm-mode-map (kbd "<tab>") 'indent-and-complete)
  (define-key cssm-mode-map (kbd "<C-menu>") 'show-css-mode))

(add-hook 'css-mode-hook 'css-mode-on-init)


;; ********************************************************************************
;; C Mode
;;
(defun c-mode-on-init ()
  (set (make-local-variable 'hippie-expand-try-functions-list)
       '(try-expand-abbrev
	 try-expand-dabbrev
	 try-expand-tag))
  (define-key c-mode-map (kbd "<tab>") 'indent-and-complete))


(add-hook 'c-mode-hook 'c-mode-on-init)



;; ********************************************************************************
;; XML Mode
;;

(setq rng-schema-locating-file-schema-file "~/elisp/nxml-mode/schema/schemas.xml")

(autoload 'nxml-mode "nxml-mode" "XML Mode" t)
(add-to-list 'auto-mode-alist '("\\.xml$" . nxml-mode))
(add-to-list 'auto-mode-alist '("\\.mxml$" . nxml-mode))
(add-to-list 'auto-mode-alist '("\\.html$" . nxml-mode))

(defun nxml-mode-on-init ()
  (set (make-local-variable 'hippie-expand-try-functions-list)
       '(try-expand-rng
		 try-expand-abbrev
		 try-expand-dabbrev
		 try-expand-tag))
  (define-key nxml-mode-map (kbd "<tab>") 'indent-and-complete))

(add-hook 'nxml-mode-hook 'nxml-mode-on-init)


;; ********************************************************************************
;; ECB
;;
(setq ecb-expand-methods-switch-off-auto-expand nil)
(setq ecb-history-sort-method nil)
(setq ecb-kill-buffer-clears-history (quote auto))
(setq ecb-layout-name "left2")
(setq ecb-layout-window-sizes nil)
(setq ecb-options-version "2.32")
(setq ecb-primary-secondary-mouse-buttons 'mouse-1--C-mouse-1)
(setq ecb-show-sources-in-directories-buffer (quote never))
(setq ecb-sources-perform-read-only-check 'unless-remote)
(setq ecb-tip-of-the-day nil)
(setq ecb-use-speedbar-instead-native-tree-buffer nil)
(setq ecb-windows-width 0.2)
(setq ecb-compile-window-height 20)
(setq ecb-kill-buffer-clears-history nil)
(setq ecb-layout-window-sizes nil)
(setq tramp-default-method "ssh")

(defun ecb-on-activate ()
  (setq ecb-directories-menu-user-extension 
	'(("SVN"
	   (ecb-dir-popup-svn-status "Status"))
	  ("Git"
	   (ecb-dir-popup-git-status "Status"))))

  (tree-buffer-defpopup-command ecb-dir-popup-svn-status
    "Check status of directory."
    (svn-status (tree-node->data node))
    (switch-to-buffer "*svn-status*"))

  (tree-buffer-defpopup-command ecb-dir-popup-git-status
    "Check status of directory."
    (git-status (tree-node->data node))
    (switch-to-buffer "*git-status*")))

(add-hook 'ecb-activate-hook 'ecb-on-activate)


;; ********************************************************************************
;; Dired
;;
(require 'dired)
(require 'dired-single)
(require 'wdired)

(setq dired-listing-switches "-l")

(defun joc-dired-up-directory()
  (interactive)
  (joc-dired-single-buffer ".."))

(define-key dired-mode-map (kbd "<return>") 'joc-dired-single-buffer)
(define-key dired-mode-map (kbd "<down-mouse-1>") 'joc-dired-single-buffer-mouse)
(define-key dired-mode-map (kbd "<C-up>") 'joc-dired-up-directory)
(define-key dired-mode-map (kbd "r") 'wdired-change-to-wdired-mode)

(add-hook 'dired-load-hook 'dired-on-load)



;; ********************************************************************************
;; Smart Compile
;;

(require 'smart-compile)

(add-to-list 'smart-compile-alist '("^Rakefile$"  . "rake -f %f"))
(add-to-list 'smart-compile-alist '("\\.rb$"      . "ruby -w %f"))
(add-to-list 'smart-compile-alist '("_spec\\.rb$" . "spec %f"))
(add-to-list 'smart-compile-alist '("\\.scm$"     . "scheme %f"))
(add-to-list 'smart-compile-alist '("\\.hx$"      . "haxe compile.hxml"))
(add-to-list 'smart-compile-alist '(haskell-mode  . "ghc -o %n %f"))
(add-to-list 'smart-compile-alist '("\\.mxml$"    . (compile-mxmlc)))
(add-to-list 'smart-compile-alist '("\\.as$"      . (compile-mxmlc)))



;; ********************************************************************************
;; Toggle fullscreen

(defun fs()
  (interactive)
  (set-frame-parameter nil 'fullscreen
		       (if (frame-parameter nil 'fullscreen) nil 'fullboth)))


(defun tab-label (tab)
  (if tabbar--buffer-show-groups
      (format " [%s] " (tabbar-tab-tabset tab))
    (format " %s " (tabbar-tab-value tab))))

(setq tabbar-tab-label-function 'tab-label)


;; ********************************************************************************
;; Global Key Bindings
;;

;; F keys
(global-set-key (kbd "<f1>") 'shell)
(global-set-key (kbd "<f2>") 'grep)
(global-set-key (kbd "<f5>") 'joc-dired-magic-buffer)
(global-set-key (kbd "<f6>") 'ibuffer)
(global-set-key (kbd "<f7>") 'svn-status)
(global-set-key (kbd "<f8>") 'git-status)
(global-set-key (kbd "<f9>") 'smart-compile)
(global-set-key (kbd "<f10>") 'ecb-toggle-ecb-windows)
(global-set-key (kbd "<f11>") 'ecb-toggle-compile-window)
(global-set-key (kbd "<f12>") 
		(lambda () (interactive) 
		  (if menu-bar-mode
		      (menu-bar-mode nil)
		    (menu-bar-mode t) 
		    (menu-bar-open))))

;; Help keys
(global-set-key (kbd "C-h C-d") 'dictionary-lookup)
(global-set-key (kbd "C-h C-h") 'html-help)
(global-set-key (kbd "C-h C-j") 'javascript-help)
(global-set-key (kbd "C-h C-r") 'ruby-help)
(global-set-key (kbd "C-h C-e") 'rails-help)


;; Window management
(global-set-key (kbd "M-1") 'delete-other-windows)
(global-set-key (kbd "M-2") 'split-window-vertically)
(global-set-key (kbd "M-3") 'split-window-horizontally)

(global-set-key (kbd "<M-up>") 'windmove-up)
(global-set-key (kbd "<M-down>") 'windmove-down)
(global-set-key (kbd "<M-left>") 'windmove-left)
(global-set-key (kbd "<M-right>") 'windmove-right)

(global-set-key (kbd "ESC <up>") 'windmove-up)
(global-set-key (kbd "ESC <down>") 'windmove-down)
(global-set-key (kbd "ESC <left>") 'windmove-left)
(global-set-key (kbd "ESC <right>") 'windmove-right)

(global-set-key (kbd "<s-up>") 'window-resize-up)
(global-set-key (kbd "<s-down>") 'window-resize-down)


;; Tags search
(global-set-key (kbd "M-/") 'tags-search)

;; Menubar
(global-set-key (kbd "<M-menu>") 'menu-bar-open)

;; Buffers
(global-set-key (kbd "<menu>") 'ido-switch-buffer)
(global-set-key (kbd "<apps>") 'ido-switch-buffer)

(global-set-key (kbd "<C-M-prior>") 'tabbar-backward-group)
(global-set-key (kbd "<C-M-next>") 'tabbar-forward-group)
(global-set-key (kbd "<C-prior>") 'tabbar-backward-tab)
(global-set-key (kbd "<C-next>") 'tabbar-forward-tab)

(global-set-key (kbd "<C-M-up>") 'move-line-up)
(global-set-key (kbd "<C-M-down>") 'move-line-down)

(global-set-key (kbd "<M-S-up>") 'copy-line-up)
(global-set-key (kbd "<M-S-down>") 'copy-line-down)

;; Rinari
(global-set-key (kbd "C-c f") 'find-file-in-project)
(global-set-key (kbd "C-c m") 'rinari-find-model)
(global-set-key (kbd "C-c v") 'rinari-find-view-or-select)
(global-set-key (kbd "C-c c") 'rinari-find-controller-or-select)
(global-set-key (kbd "C-c j") 'rinari-find-javascript)
(global-set-key (kbd "C-c s") 'rinari-find-stylesheet)
(global-set-key (kbd "C-c t") 'rinari-find-test)
(global-set-key (kbd "C-c C-g m") (rinari-script-key-hook "generate" "model"))
(global-set-key (kbd "C-c C-g i") (rinari-script-key-hook "generate" "migration"))
(global-set-key (kbd "C-c C-g c") (rinari-script-key-hook "generate" "controller"))
(global-set-key (kbd "C-c C-g a") (rinari-script-key-hook "generate" "mailer"))
(global-set-key (kbd "C-c C-g o") (rinari-script-key-hook "generate" "observer"))
(global-set-key (kbd "C-c C-g r") (rinari-script-key-hook "generate" "resource"))
(global-set-key (kbd "C-c C-d m") (rinari-script-key-hook "destroy" "model"))
(global-set-key (kbd "C-c C-d i") (rinari-script-key-hook "destroy" "migration"))
(global-set-key (kbd "C-c C-d c") (rinari-script-key-hook "destroy" "controller"))
(global-set-key (kbd "C-c C-d a") (rinari-script-key-hook "destroy" "mailer"))
(global-set-key (kbd "C-c C-d o") (rinari-script-key-hook "destroy" "observer"))
(global-set-key (kbd "C-c C-d r") (rinari-script-key-hook "destroy" "resource"))
(global-set-key (kbd "C-x b") 'rinari-browse-url)
(global-set-key (kbd "C-x t") 'rinari-test)
(global-set-key (kbd "C-x r") 'rinari-rake)
(global-set-key (kbd "C-x c") 'rinari-console)
(global-set-key (kbd "C-x s") 'rinari-sql)
(global-set-key (kbd "C-x w") 'rinari-web-server)
(global-set-key (kbd "C-x b") 'rinari-browse-url)
(global-set-key (kbd "C-x g") 'rinari-rgrep)



;; ********************************************************************************
;; Start emacs server
(server-start)
(remove-hook 'kill-buffer-query-functions 'server-kill-buffer-query-function)

;; ********************************************************************************
;; Color theme
(color-theme-initialize)
(load-file "~/elisp/color-theme-blue.el")
(color-theme-blue)

(set-face-attribute 'tabbar-default nil
		    :height 1.0
		    :foreground "#333" 
		    :background "#fff"
		    :inherit 'default)

(set-face-attribute 'tabbar-selected nil
		    :foreground "#0af" 
		    :background "#e9e9e9"
		    :weight 'bold
		    :box '(:line-width 1 :color "#fff" :style released-button))

(set-face-attribute 'tabbar-unselected nil
		    :foreground "#666"
		    :box '(:line-width 1 :color "#fff"))

(set-face-attribute 'tabbar-button nil
		    :foreground "#666"
		    :box '(:line-width 1 :color "#fff"))


;; ********************************************************************************
;; load slime:
(setq load-path (cons "/home/lubo/software/clbuild/source/slime" load-path))
(setq load-path (cons "/home/lubo/software/clbuild/source/slime/contrib" load-path))
(setq slime-backend "/home/lubo/software/clbuild/.swank-loader.lisp")
(setq inhibit-splash-screen t)
(load "/home/lubo/software/clbuild/source/slime/slime")
(setq inferior-lisp-program "/home/lubo/software/clbuild/clbuild lisp")
(setq slime-use-autodoc-mode nil)
(slime-setup '(slime-fancy slime-tramp slime-asdf))
(setq slime-net-coding-system 'utf-8-unix)
;;(slime)


;; ********************************************************************************
;; ORACLE
(setenv "ORACLE_HOME" "/usr/lib/oracle/xe/app/oracle/product/10.2.0/server")
(setenv "PATH" (concat (getenv "ORACLE_HOME") "/bin:" (getenv "PATH")))
(setq sql-oracle-program (concat (getenv "ORACLE_HOME") "/bin/" "sqlplus"))


;; ********************************************************************************
;; GTD

(defun gtd ()
   (interactive)
   (find-file "/home/lubo/gtd/gtd.org"))

(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(define-key global-map "\C-cr" 'org-remember)
(setq org-log-done t)
(setq org-agenda-files (list "~/gtd/gtd.org"))

(add-to-list 'load-path "~/elisp/remember")
(require 'remember)
(setq remember-annotation-functions '(org-remember-annotation))
(setq remember-handler-functions '(org-remember-handler))
(add-hook 'remember-mode-hook 'org-remember-apply-template)
;; (define-key global-map [f11] 'remember)
(setq org-remember-templates
      '(("Tasks" ?t "* TODO %?" "~/gtd/inbox.org")
        ("Appointments" ?a "* Appointment: %?\n%^T\n%i\n  %a" "~/gtd/inbox.org")))


;; ********************************************************************************
;; PHP mode
(load-file "~/elisp/php-mode.el")
(defun drupal-mode ()
  (interactive)
  (php-mode)
  (setq c-basic-offset 2)
  (setq indent-tabs-mode nil)
  (setq fill-column 78)
  (c-set-offset 'case-label 2)
  (c-set-offset 'arglist-close 0))

(add-to-list 'auto-mode-alist '("/home/lubo/www/drupal.*\\.\\(php\\|module\\|inc\\)$" . drupal-mode))


;; ********************************************************************************
;; ANSI color
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)