;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!

;; Some functionality uses this to identif; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
;; (setq doom-theme 'doom-one)
;; (setq doom-theme 'doom-city-lights)
;; (setq doom-theme 'doom-dark+)
;; (setq doom-theme 'doom-acario-dark)
;; (setq doom-theme 'doom-laserwave)
;; (setq doom-theme 'doom-solarized-dark)
;; (setq doom-theme 'doom-sourcerer)
;; (setq doom-theme 'doom-spacegrey)
(setq doom-theme 'doom-nord)
;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)


;; Here are some additional functions/macros that could help you configure Doom:
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
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
;; (add-hook 'doom-init-ui-hook #'spacemacs/home)
(remove-hook 'org-load-hook #'+org-init-keybinds-h)
(use-package lsp-mode
  :commands lsp
  :ensure t
  :diminish lsp-mode
  :hook
  (elixir-mode . lsp)
  :init
  (add-to-list 'exec-path "~/.lsp/elixir-ls/elixir-ls-1.12"))

;; (use-package lsp-sourcekit
;;   :after lsp-mode
;;   :hook
;;   (swift-mode . (lambda () (lsp)))
;;   :config
;;   (setq lsp-sourcekit-executable (string-trim (shell-command-to-string "xcrun --find sourcekit-lsp"))))

;; (use-package uncrustify-mode
;;   :hook objc-mode-hook)

;; (use-package company-tabnine :ensure t)
;; (add-to-list 'company-backends #'company-tabnine)

(add-hook! 'after-init-hook 'global-company-mode)

;; Reversing Auth sources for macOS
;; ref: https://zzamboni.org/post/my-doom-emacs-configuration-with-commentary/
(after! auth-source
  (setq auth-sources (nreverse auth-sources)))


(use-package python-black
  :demand t
  :after python
  :hook (python-mode . python-black-on-save-mode-enable-dwim))

;; (use-package company-jedi
;;   :ensure t
;;   :config
;;   (add-to-list 'company-backends 'company-jedi))

(yas-global-mode 1)

;; SQL
(setq sqlformat-command 'pgformatter)
(setq sqlformat-args '("-u2" "-U2" "-f2"))
(add-hook 'sql-mode-hook 'sqlformat-on-save-mode)


(setq git-link-open-in-browser 't)

(global-set-key (kbd "C-c g l") 'git-link)

(load-file "~/code/config.el")

;; (add-to-list 'org-src-lang-modes '("es" . es))

;; (org-babel-do-load-languages
;;  'org-babel-load-languages
;;  '((es . t)))

;; (add-hook 'es-result-mode-hook 'hs-minor-mode)
