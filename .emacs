(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(compile-command "c:/MinGW/msys/1.0/bin/make -k ")
 '(desktop-save-mode t)
 '(exec-path (quote ("c:/Program Files (x86)/Haskell/bin" "C:/Program Files (x86)/Haskell Platform/2011.4.0.0/lib/extralibs/bin" "C:/Program Files (x86)/Haskell Platform/2011.4.0.0/bin" "C:/Program Files/Common Files/Microsoft Shared/Windows Live" "C:/Program Files (x86)/Common Files/Microsoft Shared/Windows Live" "C:/Windows/system32" "C:/Windows" "C:/Windows/System32/Wbem" "C:/Windows/System32/WindowsPowerShell/v1.0/" "C:/Program Files/Intel/WiFi/bin/" "C:/Program Files/Common Files/Intel/WirelessCommon/" "C:/Program Files (x86)/Common Files/Lenovo" "C:/Program Files/Common Files/Lenovo" "C:/Program Files (x86)/Windows Live/Shared" "C:/SWTOOLS/ReadyApps" "C:/Program Files (x86)/Intel/Services/IPT/" "C:/Program Files (x86)/Symantec/VIP Access Client/" "c:/Program Files (x86)/Microsoft SQL Server/100/Tools/Binn/" "c:/Program Files/Microsoft SQL Server/100/Tools/Binn/" "c:/Program Files/Microsoft SQL Server/100/DTS/Binn/" "C:/Program Files (x86)/Mozart/bin" "C:/hla" "C:/Program Files/MiKTeX 2.9/miktex/bin/x64/" "C:/Ruby193/bin" "C:Program Files/Java/jdk1.7.0_02/bin" "c:/emacs/emacs-24.1/bin" "C:/MinGW/msys/1.0/bin/" "C:/MinGW/bin/" "C:/cygwin/bin/" "C:/Users/DANIEL!/GNUUtils")))
 '(indent-tabs-mode nil)
 '(menu-bar-mode t)
 '(org-agenda-files (quote ("c:/Users/DANIEL!/Desktop/notes.org")))
 '(org-capture-templates (quote (("e211" "ECE 211" entry (file+olp "c:/Users/Daniel/Desktop/todo.org" "School" "ECE 211") "* TODO %^{Description}") ("c" "CECS 288" entry (file+olp "c:/Users/Daniel/Desktop/todo.org" "School" "CECS 288") "* TODO %^{Description}") ("i" "IE 360" entry (file+olp "c:/Users/Daniel/Desktop/todo.org" "School" "IE 360") "* TODO %^{Description}") ("e252" "ECE 252" entry (file+olp "c:/Users/Daniel/Desktop/todo.org" "School" "ECE 252") "* TODO %^{Description}") ("e210" "ECE 210" entry (file+olp "c:/Users/Daniel/Desktop/todo.org" "School" "ECE 210") "* TODO %^{Description}"))))
 '(org-tag-faces (quote (("school" . "(:foreground \"black\" :background \"gray\" :weight bold)") ("cecs_302" :foreground "black" :background "red" :weight bold) ("cecs_311" :foreground "black" :background "yellow" :weight bold) ("engr_102" :foreground "black" :background "purple" :weight bold) ("cee_205" :foreground "black" :background "orange" :weight bold) ("phys_295" :foreground "black" :background "blue" :weight bold) ("engr_100" :foreground "black" :background "green" :weight bold))))
 '(shell-file-name "C:/MinGW/msys/1.0/bin/bash.exe")
 '(show-paren-mode t)
 '(sql-mysql-program "C:/Program Files/MySQL/MySQL Server 5.5/bin/mysql.exe")
 '(sql-product (quote ms)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "gray12" :foreground "green" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 113 :width normal :foundry "outline" :family "Consolas")))))
(setq auto-mode-alist (cons '("\\.xml$" . nxml-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.xsl$" . nxml-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.xhtml$" . nxml-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.page$" . nxml-mode) auto-mode-alist))

(autoload 'xml-mode "nxml" "XML editing mode" t)

;; Use the Wombat theme for colors.
(load-theme 'wombat)

(eval-after-load 'rng-loc
  '(add-to-list 'rng-schema-locating-files "~/.schema/schemas.xml"))

;; Disable creation of backup files (bird droppings).
(setq make-backup-files nil)

;; ======================
;; Org mode configuration
;; ======================
;; The following lines are always needed. Choose your own keys.
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(add-hook 'org-mode-hook 'turn-on-font-lock) ; not needed when global-font-lock-mode is on
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(global-set-key [f2] 'org-capture)

;; Hide the excessive # of stars.
(setq org-hide-leading-stars 1)

;; Set custom colors to tags.
(setq org-tag-faces 
      '( ("engr_102" . (:foreground "black" :background "purple" :weight bold))
	 ("cee_205"  . (:foreground "black" :background "orange" :weight bold))
	 ("phys_296" . (:foreground "black" :background "blue"   :weight bold)) 
	 ("phys_299" . (:foreground "black" :background "green"  :weight bold))))


;; (set-default-font "Ubuntu-12") Use the previous to set the default font. Can use this when the Ubuntu monospace font comes out.

;; ===========================================
;; Emacs Multimedia System configuration:
;; ===========================================
;;(add-to-list 'load-path "~/elisp/emms/lisp/")
;;(require 'emms-setup)
;;(emms-standard)
;;(emms-default-players)
;; The following taken from http://www.gnu.org/software/emms/quickstart.html
;;(setq emms-source-file-default-directory "~/Music/")


;; EMMS: laptop multimedia key shortcuts
;; Temporarily commented out until I can figure out how to get them to work.
;; (global-set-key (kbd "<XF86AudioPlay>") 'emms-pause)
;; (global-set-key (kbd "<XF86AudioStop>") 'emms-stop)
;; (global-set-key (kbd "<XF86AudioPrev>") 'emms-previous)
;; (global-set-key (kbd "<XF86AudioNext>") 'emms-next)
;; ===========================================

;; Disable default graphical, scroll, and menu bars. Can re-enable with M-x tool-bar-mode, M-x scroll-bar-mode, and M-x menu-bar-mode
(tool-bar-mode   -1)
(scroll-bar-mode -1)
;;(menu-bar-mode   -1)

;; Enable ido-mode by default. Otherwise, every time I restart Emacs, I have to do a M-x ido-mode
(ido-mode 1)
(put 'narrow-to-region 'disabled nil)

;; Slime configuration.
;;(add-to-list 'load-path "c:/emacs/.emacs.d/slime-current/slime-2012-02-16/"
;;(setq inferior-lisp-program "/opt/sbcl/bin/sbcl") ; your Lisp system
;;(require 'slime)
;;(slime-setup)

;; Some handy keybindings
(global-set-key [f6] 'enlarge-window-horizontally)

;; TODO: Set a default command prompt (eg Mingw) for M-x ansi-term

;; Enable narrow-to-region
(put 'narrow-to-region 'disabled nil)
(put 'narrow-to-page 'disabled nil)

;; Enable parentheses colors.
(show-paren-mode 1)

;; Enable window transparency effect.
(set-frame-parameter (selected-frame) 'alpha '(97 70))
(add-to-list 'default-frame-alist '(alpha 97 70))

(defun add-typeracer-day () 
  "Add a new day to my Typeracer function table, with no values filled in."
  (interactive)
  (previous-line)
  (org-end-of-line)
  (insert "\n|------------------+---------+-------------+--------------|\n| ")
  (org-time-stamp 0)
  (insert " | Avg | | |\n")
  (insert " | | Race 1 | | |\n")
  (insert " | | Race 2 | | |\n")
  (insert " | | Race 3 | | |\n")
  (insert " | | Race 4 | | |\n")
  (insert " | | Race 5 | | |\n")
  (insert " | | Race 6 | | |\n")
  (insert " | | Race 7 | | |\n")
  (insert " | | Race 8 | | |\n")
  (insert " | | Race 9 | | |\n")
  (insert " | | Race 10 | | |")
  (previous-line 11)
  (org-cycle)
  (org-cycle)
  (org-cycle)
  (org-cycle)
  (org-cycle)
  (org-cycle)
  (org-cycle))

;; Display a visible bell upon errors.
(setq visible-bell t)

;; Marmalade package repository configuration (so I can download extra packages)
(require 'package)
(add-to-list 'package-archives 
 ;   '("marmalade" .
 ;     "http://marmalade-repo.org/packages/")
    '("melpa-stable" .
      "http://melpa-stable.milkbox.net/packages/")
)
(package-initialize)

;; Set page-down/up equivalents (C-v, M-v) to move point to
;; end/beginning of file upon pressing them after the view
;; has moved to the beginning/end of file.
(setq scroll-error-top-bottom 'true)

;; Have org mode agenda display deadlines in one window, and in
;; the other window display their location in the original file.
(setq org-agenda-follow-mode t)

;; Bind compile to a convenient key.
(global-set-key (kbd "<f5>") 'compile)

;; Bind backspace to a key on the main keyboard, for convenience.
(global-set-key (kbd "C-.") 'delete-backward-char)

;; Enable highlighting of the current line.
(global-hl-line-mode 1)
(set-face-background 'hl-line "#150")

;; Visual Basic .NET mode configuration.
(autoload 'vbnet-mode "vbnet-mode" "Mode for editing VB.NET code." t)
(setq auto-mode-alist (append '(("\\.\\(frm\\|bas\\|cls\\|vb\\)$" .
                                 vbnet-mode)) auto-mode-alist))

;; Custom org-mode keywords and settings.
(setq org-todo-keyword-faces
      '(
	("TODO"     . (:foreground "red"    :weight bold))
	("DONE"     . (:foreground "green"  :weight bold))
	("QUES"     . (:foreground "purple" :weight bold))
	("WAIT"     . (:foreground "yellow" :weight bold))
	))

(setq org-todo-keywords
      '((sequence "TODO" "QUES" "WAIT" "DONE")))

; Add syntax highlighting for embedded code in Org mode.
(setq org-src-fontify-natively t)

;; Helm mode configuration.
(helm-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;; Custom ELisp functions ;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun avg (&rest number-list)
  "Averages a list of numbers"
  (setq sum (apply '+ number-list))
  (/ sum (length number-list)))

(defun new-scratch-buffer ()
  "Creates and switches to a new scratch buffer"
  (interactive)
  (switch-to-buffer (concat "*scratch " (current-time-string) "*")))

;; Mobile Org setup
(setq org-directory "~/org")
(setq org-mobile-directory "~/Dropbox/MobileOrg")
(defcustom org-mobile-checksum-binary (or (executable-find "shasum")
					  (executable-find "sha1sum")
					  (executable-find "md5sum")
					  (executable-find "md5"))
  "Executable used for computing checksums of agenda fields."
  :group 'org-mobile
  :type 'string)
(require 'org-install)
(require 'org-mobile)

;; Start the emacs server.
(server-start)

(print "Hello, Daniel. Your .emacs is now loaded.")
