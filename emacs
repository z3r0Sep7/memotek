(require 'package) ;; You might already have this line
(add-to-list 'package-archives
	                  '("melpa" . "http://melpa.org/packages/") t)
(when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
       (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
       (package-initialize) ;; You might already have this line
;; Highlights *.elixir2 as well
 (add-to-list 'auto-mode-alist '("\\.elixir2\\'" . elixir-mode))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (wombat)))
 '(package-selected-packages
   (quote
    (evil-lion flycheck-haskell company-erlang edts flycheck-elixir flycheck-rebar3 flycheck-stack flymake-elixir flymake-less ## ansible ansible-doc ansible-vault docker-compose-mode tide 0blayout rust-mode rust-playground rustfmt ssh-tunnels ascii ascii-art-to-unicode cider-hydra django-mode django-snippets docker docker-api docker-tramp dockerfile-mode pyenv-mode pygen racket-mode python-django pyvenv coffee-mode ac-emmet ac-js2 emms emms-info-mediainfo emms-mark-ext emms-mode-line-cycle emms-player-mpv emms-player-mpv-jp-radios emms-player-simple-mpv emms-soundcloud emms-state git git-annex git-auto-commit-mode git-blamed git-command git-commit-insert-issue git-dwim git-gutter git-gutter+ git-gutter-fringe git-gutter-fringe+ git-lens git-link git-messenger git-ps1-mode git-timemachine git-wip-timemachine gitattributes-mode gitconfig gitconfig-mode helm helm-aws helm-c-yasnippet helm-cider helm-cider-history helm-company helm-css-scss helm-emmet helm-emms helm-go-package helm-helm-commands helm-img helm-itunes helm-make helm-safari helm-themes apache-mode atom-dark-theme auto-complete batch-mode cider clojure-mode clojure-mode-extra-font-locking clojure-quick-repls darkburn-theme darkmine-theme darkokai-theme darktooth-theme dired+ dired-details dired-details+ elixir-mode emamux evil evil-colemak-basics evil-colemak-minimal evil-embrace evil-extra-operator evil-find-char-pinyin evil-lispy evil-mc-extras evil-mu4e evil-multiedit evil-swap-keys evil-text-object-python evil-tutor-ja evil-visual-replace company company-go yaml-mode vimrc-mode typescript-mode ssh scala-mode2 react-snippets python-mode osx-clipboard nasm-mode mocha magit-topgit magit-svn magit-stgit magit-rockstar magit-gitflow magit-gh-pulls magit-gerrit magit-find-file magit-filenotify magit-annex lua-mode less-css-mode jsx-mode json-mode js3-mode jekyll-modes jdee jazz-theme jade-mode inf-clojure helm-swoop haskell-snippets haskell-mode haml-mode gotham-theme go-snippets go-projectile go-playground-cli go-playground go-complete go-autocomplete exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-vimish-fold evil-tutor evil-textobj-column evil-textobj-anyblock evil-terminal-cursor-changer evil-tabs evil-surround evil-space evil-snipe evil-smartparens evil-search-highlight-persist evil-rsi evil-rails evil-quickscope evil-paredit evil-org evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-mark-replace evil-magit evil-lisp-state evil-jumper evil-indent-textobject evil-indent-plus evil-iedit-state evil-god-state evil-exchange evil-escape evil-ediff evil-easymotion evil-dvorak evil-commentary evil-cleverparens evil-avy evil-args evil-anzu evil-annoying-arrows erlang ensime emmet-mode ember-yasnippets ember-mode elm-yasnippets elm-mode elixir-yasnippets dracula-theme darcula-theme d-mode csharp-mode clojure-snippets clojure-cheatsheet cider-spy cider-profile cider-eval-sexp-fu cider-decompile chess babel-repl babel auto-complete-clang angular-snippets angular-mode alchemist ace-jump-mode ac-cider 2048-game))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(add-hook 'sgml-mode 'emmet-mode)
(add-hook 'css-mode 'emmet-mode)
(setq mac-option-modifier nil
            mac-command-modifier 'meta
                  x-select-enable-clipboard t)
(setq exec-path (append exec-path '("~/bin")))
(require 'helm)
(require 'evil)
(evil-mode 1)
(require 'evil-matchit)
(global-evil-matchit-mode 1)
(require 'evil-surround)
(global-evil-surround-mode 1)
(require 'evil-numbers)
(global-set-key (kbd "C-c +") 'evil-numbers/inc-at-pt)
(global-set-key (kbd "C-c -") 'evil-numbers/dec-at-pt)
(require 'evil-snipe)
(evil-snipe-mode 1)
(evilnc-default-hotkeys)
;; Emacs key bindings
(global-set-key (kbd "M-;") 'evilnc-comment-or-uncomment-lines)
(global-set-key (kbd "C-c l") 'evilnc-quick-comment-or-uncomment-to-the-line)
(global-set-key (kbd "C-c c") 'evilnc-copy-and-comment-lines)
(global-set-key (kbd "C-c p") 'evilnc-comment-or-uncomment-paragraphs)

(add-to-list 'load-path
              "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . jsx-mode))
(autoload 'jsx-mode "jsx-mode" "JSX mode" t)
(add-to-list 'load-path "~/.emacs.d/site-lisp")
(autoload #'espresso-mode "espresso" "Start espresso-mode" t)
(add-to-list 'auto-mode-alist '("\\.js$" . espresso-mode))
(add-to-list 'auto-mode-alist '("\\.json$" . espresso-mode))
;;(defun figwheel-repl ()
;;  (interactive)
;;  (run-clojure "lein figwheel"))
;;
;;(add-hook 'clojure-mode-hook #'inf-clojure-minor-mode)
;;
;;(require 'ac-cider)
;;(add-hook 'cider-mode-hook 'ac-flyspell-workaround)
;;(add-hook 'cider-mode-hook 'ac-cider-setup)
;;(add-hook 'cider-repl-mode-hook 'ac-cider-setup)
;;(eval-after-load "auto-complete"
;;  '(progn
;;     (add-to-list 'ac-modes 'cider-mode)
;;     (add-to-list 'ac-modes 'cider-repl-mode)))

(defun set-auto-complete-as-completion-at-point-function ()
  (setq completion-at-point-functions '(auto-complete)))

(add-hook 'auto-complete-mode-hook 'set-auto-complete-as-completion-at-point-function)
(add-hook 'cider-mode-hook 'set-auto-complete-as-completion-at-point-function)
(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
(add-hook 'after-init-hook 'global-company-mode)
(elpy-enable)

(defun setup-tide-mode ()
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  ;; company is an optional dependency. You have to
  ;; install it separately via package-install
  ;; `M-x package-install [ret] company`
  (company-mode +1))

;; aligns annotation to the right hand side
(setq company-tooltip-align-annotations t)

;; formats the buffer before saving
(add-hook 'before-save-hook 'tide-format-before-save)

(add-hook 'typescript-mode-hook #'setup-tide-mode)
