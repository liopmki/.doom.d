;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!

;; {{{ private config
;; default encoding
(prefer-coding-system 'utf-8)
(setq-default buffer-file-coding-system 'utf-8)
;; 默认最大化启动
(setq default-frame-alist '((fullscreen . maximized)))
;; 失去焦点自动保存
(add-hook 'after-init-hook 'auto-save-visited-mode)
;; Doom Emacs quit without confirm
(setq confirm-kill-emacs nil)
;; Org-Mode Begin
;; Org-mode html-export config
(setq
 org-html-validation-link nil
 org-html-head "<link href='C:\\Users\\Administrator\\OneDrive\\Profile\\orgcss\\org.css' rel='stylesheet'>"
 org-html-head-include-default-style nil
 org-export-with-sub-superscripts "^:{}")
;; 设置 org mode 时间
(setq system-time-locale "C")
;(format-time-string "%Y-%m-%d %a")
;; Org-Mode End
;; private config end }}}

;; {{{ Package Config
(use-package! valign
  :hook
  (org-mode . valign-mode))

(use-package! sis
  :config
  (sis-ism-lazyman-config nil t 'w32)
  (sis-global-respect-mode t)
  (sis-global-context-mode t)
  (sis-global-inline-mode t))
;; Package Config End }}}

;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
(setq user-full-name "Liopmki"
      user-mail-address "liuyiy4ng@outlook.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-unicode-font' -- for unicode glyphs
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;(setq doom-font (font-spec :family "Fira Code" :size 12 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; (setq doom-font (font-spec :family "MesloLGM Nerd Font Mono" :size 18)
;;       doom-variable-pitch-font (font-spec :family "LXGW Bright" :size 18)
;;       doom-unicode-font (font-spec :family "LXGW WenKai Mono" :size 18)
;;       doom-serif-font (font-spec :family "Microsoft YaHei" :size 18))
(setq doom-font (font-spec :family "MesloLGM Nerd Font Mono" :size 22) ;; default font
      doom-variable-pitch-font (font-spec :family "MesloLGM Nerd Font Mono" :size 22) ;; non mono font
      doom-unicode-font (font-spec :family "LXGW WenKai Screen R") ;; unicode font
      doom-serif-font (font-spec :family "MesloLGM Nerd Font Mono" :size 22)) ;; serif font

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one-light)
;; (setq doom-theme 'doom-dracula)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "C:/Users/Administratorr/OneDrive/Project/notes/org")


;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

