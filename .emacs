(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "http")))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;; (add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives (cons "gnu" (concat proto "://elpa.gnu.org/packages/"))))
  )
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(LaTeX-electric-left-right-brace t)
 '(LaTeX-font-list
   (quote
    ((1 "" "" "\\mathcal{" "}")
     (2 "\\textbf{" "}" "\\mathbf{" "}")
     (3 "\\textsc{" "}" "\\mathscr{" "}")
     (5 "\\emph{" "}" "\\boldsymbol{" "}")
     (6 "\\textsf{" "}" "\\mathsf{" "}")
     (9 "\\textit{" "}" "\\mathit{" "}")
     (11 "" "" "\\mathfrak{" "}")
     (13 "\\textmd{" "}")
     (14 "\\textnormal{" "}" "\\mathnormal{" "}")
     (18 "\\textrm{" "}" "\\mathrm{" "}")
     (19 "\\textsl{" "}" "\\mathbb{" "}")
     (20 "\\texttt{" "}" "\\mathtt{" "}")
     (21 "\\textup{" "}")
     (4 "" "" t))))
 '(LaTeX-math-menu-unicode t)
 '(TeX-auto-save t)
 '(TeX-electric-math (quote ("$" . "$")))
 '(TeX-electric-sub-and-superscript t)
 '(TeX-fold-macro-spec-list
   (quote
    (("[f]"
      ("footnote" "marginpar"))
     ("[f:{1}]"
      ("smalltodo"))
     ("[c:{1}]"
      ("cite"))
     ("[l:{1}]" nil)
     ("[r:{1}]"
      ("pageref" "eqref" "autoref"))
     ("[r:{1}]"
      ("ref" "ttref"))
     ("[i]"
      ("index" "glossary"))
     ("[1]:||*"
      ("item"))
     ("..."
      ("dots"))
     ("(C)"
      ("copyright"))
     ("(R)"
      ("textregistered"))
     ("TM"
      ("texttrademark"))
     ("{1}" nil)
     (1
      ("part*" "chapter*" "section*" "subsection*" "subsubsection*" "paragraph*" "subparagraph*" "emph" "textit" "textsl" "textmd" "textrm" "textsf" "texttt" "textbf" "textsc" "textup")))))
 '(TeX-fold-type-list (quote (macro)))
 '(TeX-fold-unfold-around-mark nil)
 '(TeX-master t)
 '(TeX-parse-self t)
 '(TeX-source-correlate-mode t)
 '(TeX-view-evince-keep-focus t)
 '(TeX-view-program-selection
   (quote
    ((output-dvi "open")
     (output-pdf "displayline")
     (output-html "open"))))
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(auto-save-default nil)
 '(beacon-color "#c82829")
 '(bibtex-completion-bibliography (quote ("~/Dropbox/Workspace/Math/mathreferences.bib")))
 '(bibtex-completion-find-additional-pdfs t)
 '(bibtex-completion-library-path (quote ("~/Documents/bibtex-library")))
 '(bibtex-completion-notes-path "~/Documents/bibtex-library.org")
 '(bibtex-completion-pdf-open-function (quote helm-open-file-with-default-tool))
 '(blink-matching-delay 0)
 '(column-number-indicator-zero-based nil)
 '(column-number-mode t)
 '(company-quickhelp-color-background "#b0b0b0")
 '(company-quickhelp-color-foreground "#232333")
 '(compilation-message-face (quote default))
 '(coq-maths-menu-enable t)
 '(coq-prog-name "~/math/HoTT/hoqtop")
 '(coq-shortcut-alist nil)
 '(coq-token-symbol-map
   (quote
    (("alpha" "α")
     ("beta" "β")
     ("gamma" "γ")
     ("delta" "δ")
     ("epsilon" "ε")
     ("zeta" "ζ")
     ("eta" "η")
     ("theta" "θ")
     ("iota" "ι")
     ("kappa" "κ")
     ("lambda" "λ")
     ("mu" "μ")
     ("nu" "ν")
     ("xi" "ξ")
     ("pi" "π")
     ("rho" "ρ")
     ("sigma" "σ")
     ("tau" "τ")
     ("upsilon" "υ")
     ("phi" "ϕ")
     ("chi" "χ")
     ("psi" "ψ")
     ("omega" "ω")
     ("Gamma" "Γ")
     ("Delta" "Δ")
     ("Theta" "Θ")
     ("Lambda" "Λ")
     ("Xi" "Ξ")
     ("Pi" "Π")
     ("Sigma" "Σ")
     ("Upsilon" "Υ")
     ("Phi" "Φ")
     ("Psi" "Ψ")
     ("Omega" "Ω")
     ("forall" "∀")
     ("exists" "∃")
     ("nat" "ℕ" type)
     ("complex" "ℂ" type)
     ("real" "ℝ" type)
     ("int" "ℤ" type)
     ("Z" "ℤ" type)
     ("rat" "ℚ" type)
     ("bool" "B" underline type)
     ("false" "false" bold sans)
     ("true" "true" bold sans)
     ("WHILE" "WHILE" bold sans)
     ("DO" "DO" bold sans)
     ("END" "END" bold sans)
     ("SKIP" "SKIP" bold sans)
     ("THEN" "THEN" bold sans)
     ("ELSE" "ELSE" bold sans)
     ("IFB" "IFB" bold sans)
     ("FI" "FI" bold sans)
     ("{{" "⦃" bold)
     ("}}" "⦄" bold)
     ("lhd" "⊲")
     ("rhd" "⊳")
     ("<=" "≤")
     (">=" "≥")
     ("=>" "⇒")
     ("->" "→")
     ("<-" "←")
     ("<->" "↔")
     ("++" "⧺")
     ("<<" "《")
     (">>" "》")
     ("===" "≡")
     ("=/=" "≢")
     ("=~=" "≅")
     ("==b" "≡")
     ("<>b" "≢")
     ("-->" "⟹-")
     ("++>" "⟹+")
     ("==>" "⟹")
     (":=" "≔")
     ("|-" "⊢")
     ("<>" "≠")
     ("-|" "⊣")
     ("\\/" "∨")
     ("/\\" "∧")
     ("~" "¬")
     ("============================" "⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯" bold tactical))))
 '(coq-unicode-tokens-enable t)
 '(coq-use-project-file nil)
 '(custom-enabled-themes nil)
 '(custom-safe-themes
   (quote
    ("bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "73c69e346ec1cb3d1508c2447f6518a6e582851792a8c0e57a22d6b9948071b4" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" default)))
 '(default-frame-alist (quote ((width . 80) (height . 70) (left . 0) (top . 0))))
 '(dired-listing-switches "-Alhto")
 '(electric-pair-mode t)
 '(fci-rule-color "#d6d6d6")
 '(flycheck-color-mode-line-face-to-color (quote mode-line-buffer-id))
 '(font-latex-user-keyword-classes
   (quote
    (("my-note"
      (("hltn" "{"))
      (:background "#FFEEEE" :inherit nil)
      command)
     ("boldsymbol" nil font-latex-bold-face command))))
 '(helm-M-x-fuzzy-match t)
 '(helm-apropos-fuzzy-match t)
 '(helm-buffers-fuzzy-matching t)
 '(helm-fuzzy-matching-highlight-fn (quote helm-flx-fuzzy-highlight-match))
 '(helm-fuzzy-sort-fn (quote helm-flx-fuzzy-matching-sort))
 '(helm-mode-fuzzy-match t)
 '(helm-split-window-inside-p t)
 '(highlight-nonselected-windows t)
 '(indent-tabs-mode nil)
 '(jit-lock-stealth-load 50)
 '(jit-lock-stealth-time 16)
 '(linum-disabled-modes-list
   (quote
    (eshell-mode wl-summary-mode compilation-mode org-mode text-mode dired-mode pdf-view-mode Custom)))
 '(mac-mouse-wheel-smooth-scroll nil)
 '(mac-pass-command-to-system nil)
 '(magit-diff-use-overlays nil)
 '(mail-from-style nil)
 '(mode-line-format
   (quote
    ("%e" mode-line-front-space mode-line-mule-info mode-line-client mode-line-modified mode-line-remote mode-line-frame-identification "   " mode-line-position
     (vc-mode vc-mode)
     "  " mode-line-modes mode-line-misc-info mode-line-end-spaces)))
 '(nrepl-message-colors
   (quote
    ("#336c6c" "#205070" "#0f2050" "#806080" "#401440" "#6c1f1c" "#6b400c" "#23733c")))
 '(org-directory "~/Dropbox/org")
 '(org-entities-user (quote (("vdash" "\\vdash" t "" "" "" "⊢"))))
 '(org-fontify-whole-heading-line t)
 '(org-format-latex-options
   (quote
    (:foreground default :background default :scale 0.8 :html-foreground "Black" :html-background "Transparent" :html-scale 1.0 :matchers
                 ("begin" "$1" "$" "$$" "\\(" "\\["))))
 '(org-preview-latex-default-process (quote dvisvgm))
 '(org-startup-truncated nil)
 '(org-use-sub-superscripts (quote {}))
 '(package-selected-packages
   (quote
    (adaptive-wrap ox-rst helm-dired-history magithub htmlize proof-general latex-math-preview auto-complete helm-bibtex helm-fuzzier helm-flx helm)))
 '(pdf-view-midnight-colors (quote ("#232333" . "#c7c7c7")))
 '(preview-auto-cache-preamble t)
 '(preview-auto-reveal nil)
 '(preview-default-option-list
   (quote
    ("displaymath" "floats" "graphics" "textmath" "footnotes")))
 '(preview-default-preamble
   (quote
    ("\\RequirePackage["
     ("," . preview-default-option-list)
     "]{preview}[2004/11/05]" "\\PreviewMacro*\\parbox{}" "\\PreviewMacro*\\hltn")))
 '(preview-gs-command "/usr/local/bin/gs")
 '(preview-scale-function 1.0)
 '(proof-three-window-enable t)
 '(proof-three-window-mode-policy (quote vertical))
 '(proof-tree-arguments (quote ("-debug")))
 '(reftex-insert-label-flags (quote (" " "sftienN")))
 '(reftex-plug-into-AUCTeX t)
 '(reftex-ref-macro-prompt nil)
 '(reftex-ref-style-alist
   (quote
    (("Default" t
      (("\\ttref" 116)
       ("\\ref" 13)
       ("\\pageref" 112)))
     ("Varioref" "varioref"
      (("\\vref" 118)
       ("\\vpageref" 103)
       ("\\Vref" 86)
       ("\\Ref" 82)))
     ("Fancyref" "fancyref"
      (("\\fref" 102)
       ("\\Fref" 70)))
     ("Hyperref" "hyperref"
      (("\\autoref" 97)
       ("\\autopageref" 117)))
     ("Cleveref" "cleveref"
      (("\\cref" 99)
       ("\\Cref" 67)
       ("\\cpageref" 100)
       ("\\Cpageref" 68))))))
 '(reftex-section-prefixes (quote ((0 . "") (1 . "") (t . ""))))
 '(safe-local-variable-values
   (quote
    ((eval add-hook
           (quote after-save-hook)
           (quote org-html-export-to-html)
           t t)
     (line-spacing . 0.5)
     (eval add-hook
           (quote after-save-hook)
           (quote org-rst-export-to-rst)
           t t)
     (eval let
           ((default-directory
              (locate-dominating-file buffer-file-name ".dir-locals.el")))
           (make-local-variable
            (quote coq-prog-name))
           (setq coq-prog-name
                 (expand-file-name "../hoqtop"))))))
 '(scroll-bar-mode nil)
 '(show-paren-delay 0)
 '(show-paren-mode t)
 '(show-paren-when-point-inside-paren t)
 '(size-indication-mode t)
 '(sp-show-pair-delay 0)
 '(tool-bar-mode nil)
 '(uniquify-buffer-name-style nil nil (uniquify))
 '(utop-command "opam config exec -- utop -emacs" nil nil "https://github.com/ocaml-community/utop")
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#c82829")
     (40 . "#f5871f")
     (60 . "#eab700")
     (80 . "#718c00")
     (100 . "#3e999f")
     (120 . "#4271ae")
     (140 . "#8959a8")
     (160 . "#c82829")
     (180 . "#f5871f")
     (200 . "#eab700")
     (220 . "#718c00")
     (240 . "#3e999f")
     (260 . "#4271ae")
     (280 . "#8959a8")
     (300 . "#c82829")
     (320 . "#f5871f")
     (340 . "#eab700")
     (360 . "#718c00"))))
 '(vc-annotate-very-old-color nil)
 '(visible-bell t)
 '(visual-line-fringe-indicators (quote (left-curly-arrow right-curly-arrow))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "mac:textBackgroundColor" :foreground "mac:textColor" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 131 :width normal :foundry "nil" :family "DejaVu Sans Mono")))))

;; -------------------------------------------------
;;                     helm(-*)
;; -------------------------------------------------
;; https://github.com/emacs-helm/helm/wiki#configure
(require 'helm-config)
(global-set-key (kbd "M-x") 'helm-M-x)
;; https://github.com/emacs-helm/helm/wiki#helm-mode
(global-set-key (kbd "C-x r b") 'helm-filtered-bookmarks)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x C-b") 'helm-buffers-list)
(helm-mode 1)
;; https://github.com/PythonNut/helm-flx
(helm-flx-mode +1)
;; set t for helm-flx-for-helm-find-files, helf-flx-for-helm-locate
;; https://github.com/EphramPerdition/helm-fuzzier
(require 'helm-fuzzier)
(helm-fuzzier-mode 1)
;; helm-fuzzier will only enhance matching for sources that have fuzzy-matching enabled, so be sure to enable fuzzy-matching for the sources you're interested in by setting the appropriate variable (helm-M-x-fuzzy-match, helm-mode-fuzzy-match, helm-apropos-fuzzy-match, etc').

;; ------------------------------------------------
;;           AUCTex/LaTeX/Preview Latex
;; ------------------------------------------------
;; https://www.emacswiki.org/emacs/AUCTeX
;;(setq TeX-auto-save t)
;;(setq TeX-parse-self t)
;;(setq-default TeX-master nil)
;; the following hooks can be customized by a variable `latex-mode-hook'
(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)   ; with AUCTeX LaTeX mode
;;(add-hook 'latex-mode-hook 'turn-on-reftex)   ; with Emacs latex mode
(add-hook 'LaTeX-mode-hook 'TeX-fold-mode)   ; with AUCTeX LaTeX mode
;;(add-hook 'latex-mode-hook 'tex-fold-mode)   ; with Emacs latex mode
;;(add-hook 'LaTeX-mode-hook 'outline-minor-mode)
;; Starts the Emacs server for backward-sync
(add-hook 'LaTeX-mode-hook 'exec-path-from-shell-initialize)
(add-hook 'LaTeX-mode-hook 'abbrev-mode)


;; ------------------------ TEX-FOLD-MODE ------------------------
;; The following fixes TeX-fold-buffer's problem with arbitrary insertion of visual newlines
;; https://emacs.stackexchange.com/questions/42147/tex-folding-creates-visual-newlines-auctex
(with-eval-after-load "tex-fold"
  (defun TeX-fold-overfull-p (ov-start ov-end display-string)
    "Return t if an overfull line will result after adding an overlay. The overlay extends from OV-START to OV-END and will display the string DISPLAY-STRING."
    (and
     (save-excursion
       (goto-char ov-end)
       (search-backward "\n" ov-start t))
     (not (string-match "\n" display-string))
     (> (+ (- ov-start
              (save-excursion
                (goto-char ov-start)
                (line-beginning-position)))
           (length display-string)
           (- (save-excursion
                (goto-char ov-end)
                (line-end-position))
              ov-end))
        (current-fill-column)))))

;; ------------------------ Skim forward search  ------------------------
;;https://sourceforge.net/p/skim-app/wiki/TeX_and_PDF_Synchronization/#choosing-an-editor-command-for-backward-search
;; The following only works with AUCTeX loaded
(require 'tex-site)
(add-hook 'TeX-mode-hook
          (lambda ()
            (add-to-list 'TeX-output-view-style '("^pdf$" "." "/Applications/Skim.app/Contents/SharedSupport/displayline %n %o %b"))))

;; ------------------------ AUCTeX my keybinding  ------------------------

(global-set-key (kbd "C-S-t")  (lambda ()
                                 (interactive)
                                 (search-forward-regexp
                                  "\\$\\|\\\\end{equation\\*}\\|\\\\end{align\\*}")
                                 (preview-at-point)
                                 (TeX-fold-buffer)
                                 ))
(global-set-key (kbd "M-S-t")  (lambda ()
                                 (interactive)
                                 (save-buffer)
                                 (TeX-command-master LaTeX)))

(global-set-key (kbd "C-c 0")  (lambda ()
                                 (interactive)
                                 (reftex-reference " ")))

(global-set-key (kbd "C-c C-j")  (lambda ()
                                 (interactive)
                                 (LaTeX-insert-item)
                                 (my-insert-label)
                                 (TeX-fold-buffer)))

(global-set-key (kbd "C-c C-S-m")  (lambda ()
                                 (interactive)
                                 (helm-insert-latex-math)))
;; ---------------------------------------------------
;;           setting load-path
;; ---------------------------------------------------
;; https://www.emacswiki.org/emacs/LoadPath
;; Tell emacs where is your personal elisp lib dir
(add-to-list 'load-path "~/.emacs.d/lisp/")

;; -----------------------------------------------
;;           show paren mode
;; -----------------------------------------------
;; https://www.emacswiki.org/emacs/ShowParenMode
(show-paren-mode 1)
;;(setq show-paren-delay 0)

;; ------------------------------------------------------------
;;                     “Find File:” default path
;; ------------------------------------------------------------
;; https://stackoverflow.com/questions/6464003/emacs-find-file-default-path
;;(setq default-directory "~")


;; ------------------------------------------------------------
;;                  my scripts
;; ------------------------------------------------------------

;; -- Tweaks for OS X -------------------------------------
;; Tweak for problem on OS X where Emacs.app doesn't run the right
;; init scripts when invoking a sub-shell
;; obtained from "https://dev.realworldocaml.org/install.html"
(cond ((eq window-system 'ns) ; macosx
       ;; Invoke login shells, so that .profile or .bash_profile is read
       (setq shell-command-switch "-lc")))
;; I additionally added:
;;(exec-path-from-shell-initialize)

;; set keys for Apple keyboard, for emacs in OS X
;; lower case "s" is for super-key
(setq mac-command-modifier 'control) ; make cmd key do ~
(setq mac-option-modifier 'meta) ; make opt key do ~
(setq mac-control-modifier 'super) ; make Control key do ~
(setq ns-function-modifier 'hyper)  ; make Fn key do ~
;; key-binding
(global-set-key (kbd "C-S-<return>")
                (lambda ()
                  (interactive)
                  (add-hook 'after-make-frame-functions 'select-frame-set-input-focus)
                  (make-frame)
                  (remove-hook 'after-make-frame-functions 'select-frame-set-input-focus)
                  (switch-to-buffer "*scratch*")
                  ))
(global-set-key (kbd "C-h i")
                (lambda ()
                  (interactive)
                  (add-hook 'after-make-frame-functions 'select-frame-set-input-focus)
                  (make-frame)
                  (remove-hook 'after-make-frame-functions 'select-frame-set-input-focus)
                  (info)))
(global-set-key (kbd "C-c C-S-b") 'helm-bibtex)
(global-set-key (kbd "C-x <") 'scroll-right)
(global-set-key (kbd "C-x >") 'scroll-left)
(global-set-key (kbd "C-x ?") 'toggle-truncate-lines)
(global-set-key (kbd "s-C") 'delete-frame)
;; (global-set-key (kbd "s-j") 'other-frame)
;; (global-set-key (kbd "s-k")
;;                 (lambda ()
;;                   (interactive)
;;                   (other-frame -1)))

;; my (unique) tag-generation and its inserting functions
(defun my-generate-label ()
  (interactive)
  (let ((listOfLetters "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ")
        (timeStamp (string-to-number (format-time-string "%S%M%H%d%m%y")))
        (result ""))
    (while (not (= timeStamp 0))
      (let ((i (mod timeStamp (length listOfLetters))))
        (setq result (concat result (substring listOfLetters i (1+ i))))
        (setq timeStamp (truncate (/ timeStamp (length listOfLetters))))))
    ;;  (insert (concat (concat "\\mylabel{" result) "}"))))
    (insert result)))
;;(global-set-key (kbd "C-c C-t C-t") 'my-generate-label)
;;(global-set-key (kbd "C-c C-t C-t") 'my-insert-label)

(defun my-insert-label ()
  (interactive)
  (let ((listOfLetters "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ")
        (timeStamp (string-to-number (format-time-string "%S%M%H%d%m%y")))
        (result ""))
    (while (not (= timeStamp 0))
      (let ((i (mod timeStamp (length listOfLetters))))
        (setq result (concat result (substring listOfLetters i (1+ i))))
        (setq timeStamp (truncate (/ timeStamp (length listOfLetters))))))
    (insert (concat (concat "\\label{" result) "}")))
  (TeX-fold-region))
;;(insert result)))
;;(global-set-key (kbd "C-c C-t C-t") 'my-generate-label)
(global-set-key (kbd "C-c 9") 'my-insert-label)

;; frame/window resize keys ----------------------------------
;; From "https://www.emacswiki.org/emacs/frame-cmds.el"
(defun enlarge-frame ()
  "Increase the height of current frame by one line."
  (interactive)
  (set-frame-height (selected-frame) (+ (frame-height (selected-frame)) 1)))
(defun shrink-frame ()
  "Decrease the height of current frame by one line."
  (interactive)
  (set-frame-height (selected-frame) (- (frame-height (selected-frame)) 1)))
(defun wider-frame ()
  "Increase the height of current frame by one line."
  (interactive)
  (set-frame-width (selected-frame) (+ (frame-width (selected-frame)) 1)))
(defun narrower-frame ()
  "Decrease the height of current frame by one line."
  (interactive)
  (set-frame-width (selected-frame) (- (frame-width (selected-frame)) 1)))
(defun resize-frame-80x24 ()
  "Adjust frame size to 80x24 size."
  (interactive)
  (set-frame-height (selected-frame) 30)
  (set-frame-width  (selected-frame) 80))
(defun resize-frame-default ()
  "Adjust frame size to default (80x55) size."
  (interactive)
  (set-frame-height (selected-frame) 55)
  (set-frame-width  (selected-frame) 80))
(defun resize-frame-default ()
  "Adjust frame size to default (80x55) size."
  (interactive)
  (set-frame-height (selected-frame) 55)
  (set-frame-width  (selected-frame) 80))
(defun resize-frame-single-column ()
  "Adjust frame size to single column (80x_) size."
  (interactive)
  (set-frame-width  (selected-frame) 80))
(defun resize-frame-double-column ()
  "Adjust frame size to double column (160x_) size."
  (interactive)
  (set-frame-width  (selected-frame) 160))

(global-set-key (kbd "M-=") 'enlarge-window)
(global-set-key (kbd "M--") 'shrink-window)
(global-set-key (kbd "C-=") 'enlarge-frame)
(global-set-key (kbd "C--") 'shrink-frame)
(global-set-key (kbd "C-+") 'wider-frame)
(global-set-key (kbd "C-_") 'narrower-frame)
(global-set-key (kbd "C-M-S-<SPC>") 'toggle-frame-maximized)
(global-set-key (kbd "C-M-!") 'resize-frame-single-column)
(global-set-key (kbd "C-M-#") 'resize-frame-double-column)

;; move frames ---------------------------------------------------------------
;; obtained from https://www.emacswiki.org/emacs/frame-cmds.el

(defun move-frame-down (&optional n frame) ; Suggested binding: `M-down'.
  "Move selected frame down.
Move it N times `frame-char-height', where N is the prefix arg.
In Lisp code, FRAME is the frame to move."
  (interactive "p")
  (unless n (setq n  1))
  (setq n  (* n (frame-char-height frame)))
  (modify-frame-parameters frame (list (list 'top '+ (frcmds-new-frame-position frame 'top n)))))

(defun move-frame-up (&optional n frame) ; Suggested binding: `M-up'.
  "Move selected frame up.
Same as `move-frame-down', except movement is up."
  (interactive "p")
  (unless n (setq n  1))
  (move-frame-down (- n)))

(defun move-frame-right (&optional n frame) ; Suggested binding: `M-right'.
  "Move frame to the right.
Move it N times `frame-char-width', where N is the prefix arg.
In Lisp code, FRAME is the frame to move."
  (interactive "p")
  (unless n (setq n  1))
  (setq n  (* 5 (* n (frame-char-width frame))))
  (modify-frame-parameters frame (list (list 'left '+ (frcmds-new-frame-position frame 'left n)))))

(defun move-frame-left (&optional n frame) ; Suggested binding: `M-left'.
  "Move frame to the left.
Same as `move-frame-right', except movement is to the left."
  (interactive "p")
  (unless n (setq n  1))
  (move-frame-right (- n)))

;; Helper function.
(defun frcmds-new-frame-position (frame type incr)
  "Return the new TYPE position of FRAME, incremented by INCR.
TYPE is `left' or `top'.
INCR is the increment to use when changing the position."
  (let* ((f-dim      (if (eq 'left type) (frame-pixel-width frame) (frame-pixel-height frame)))
         (f-min      (cadr (frame-geom-value-cons type (cdr (assq type (frame-parameters frame))))))
         (f-max      (+ f-min f-dim))
         (new-f-min  (+ incr f-min))
         (new-f-max  (+ incr f-max))
         (d-bnds     (frcmds-available-screen-pixel-bounds))
         (d-min      (if (eq 'left type) (nth 0 d-bnds) (nth 1 d-bnds)))
         (d-max      (if (eq 'left type) (nth 2 d-bnds) (nth 3 d-bnds))))
    (when (< new-f-max d-min) (setq new-f-min  d-max))
    (when (> new-f-min d-max) (setq new-f-min  (- d-min (- f-max f-min))))
    new-f-min))

(defun frcmds-available-screen-pixel-bounds ()
  "Returns a value of the same form as option `available-screen-pixel-bounds'.
This represents the currently available screen area."
  (if (fboundp 'mac-display-available-pixel-bounds) ; Mac-OS-specific.
      (mac-display-available-pixel-bounds)
    (if (fboundp 'display-monitor-attributes-list) ; Emacs 24.4+
        (let ((attss  (display-monitor-attributes-list))
              (x0     most-positive-fixnum)
              (y0     most-positive-fixnum)
              (x1     0)
              (y1     0)
              geom)
          (dolist (atts  attss)
            (setq geom  (cdr (assq 'geometry atts))
                  x0    (min x0 (nth 0 geom))
                  y0    (min y0 (nth 1 geom))
                  x1    (max x1 (nth 2 geom))
                  ;; Use `max' for the height too, but it does not account for taskbar etc.
                  y1    (max y1 (nth 3 geom))))
          (list x0 y0 x1 y1))
      ;; Punt.  Assume only one monitor.
      (list 0 0 (x-display-pixel-width) (x-display-pixel-height)))))

(global-set-key (kbd "C-M-<left>") 'move-frame-left)
(global-set-key (kbd "C-M-<up>") 'move-frame-up)
(global-set-key (kbd "C-M-<down>") 'move-frame-down)
(global-set-key (kbd "C-M-<right>") 'move-frame-right)

;; ansi-term customization ----------------------------------------------------

(global-set-key (kbd "s-<return>")
                (lambda ()
                  (interactive)
                  (add-hook 'after-make-frame-functions 'select-frame-set-input-focus)
                  (make-frame)
                  (remove-hook 'after-make-frame-functions 'select-frame-set-input-focus)
                  (resize-frame-80x24)
                  (ansi-term "/bin/bash")))

;; the following is obtained from
;; https://oremacs.com/2015/01/01/three-ansi-term-tips/
;; and modified

(defun my-term-exec-hook ()
  (let* ((buff (current-buffer))
         (proc (get-buffer-process buff)))
    (set-process-sentinel proc
     `(lambda (process event)
        (if (string= event "finished\n")
            (progn (delete-frame (selected-frame)) (kill-buffer ,buff)))))))

(add-hook 'term-exec-hook 'my-term-exec-hook)

;; start emacs server ------------------------------------------
(server-start)

;; -------------------------------------------------------------
;; automatically generated and inserted but not by customization
;; -------------------------------------------------------------

(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'scroll-left 'disabled nil)

;; delete trailing whitespaces before saving ---------------------------------
;; (I had to disable this because it makes saving too much slower than necessary.)
;;(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; latex for org mode
;; https://emacs.stackexchange.com/questions/18534/orgmode-mac-el-capitan-cant-find-latex

;;(setenv "PATH" (concat "/Users/hbshim/.local/texlive/2019/bin/x86_64-darwin" (getenv "PATH")))
;;(setq exec-path (append '("/Users/hbshim/.local/texlive/2019/bin/x86_64-darwin") exec-path))

(add-hook 'dired-mode-hook (lambda () (setq truncate-lines t)))

(defun dired-open-in-external-app (&optional @fname)
  "Open the current file or dired marked files in external app.
The app is chosen from your OS's preference.

When called in emacs lisp, if @fname is given, open that.

URL `http://ergoemacs.org/emacs/emacs_dired_open_file_in_ext_apps.html'
Version 2019-11-04"
  (interactive)
  (let* (
         ($file-list
          (if @fname
              (progn (list @fname))
            (if (string-equal major-mode "dired-mode")
                (dired-get-marked-files)
              (list (buffer-file-name)))))
         ($do-it-p (if (<= (length $file-list) 5)
                       t
                     (y-or-n-p "Open more than 5 files? "))))
    (when $do-it-p
      (cond
       ((string-equal system-type "windows-nt")
        (mapc
         (lambda ($fpath)
           (w32-shell-execute "open" $fpath)) $file-list))
       ((string-equal system-type "darwin")
        (mapc
         (lambda ($fpath)
           (shell-command
            (concat "open " (shell-quote-argument $fpath))))  $file-list))
       ((string-equal system-type "gnu/linux")
        (mapc
         (lambda ($fpath) (let ((process-connection-type nil))
                            (start-process "" nil "xdg-open" $fpath))) $file-list))))))

(defun dired-show-in-desktop ()
  "Show current file in desktop.
 (Mac Finder, Windows Explorer, Linux file manager)
 This command can be called when in a file or in `dired'.

URL `http://ergoemacs.org/emacs/emacs_dired_open_file_in_ext_apps.html'
Version 2020-02-13"
  (interactive)
  (let (($path (if (buffer-file-name) (buffer-file-name)
                 (shell-quote-argument default-directory))))
    (cond
     ((string-equal system-type "windows-nt")
      (w32-shell-execute "open" default-directory))
     ((string-equal system-type "darwin")
      (if (eq major-mode 'dired-mode)
          (let (($files (dired-get-marked-files )))
            (if (eq (length $files) 0)
                (shell-command (concat "open " (shell-quote-argument default-directory)))
              (shell-command (concat "open -R " (shell-quote-argument (car (dired-get-marked-files )))))))
        (shell-command
         (concat "open -R " $path))))
     ((string-equal system-type "gnu/linux")
      (let (
            (process-connection-type nil)
            (openFileProgram (if (file-exists-p "/usr/bin/gvfs-open")
                                 "/usr/bin/gvfs-open"
                               "/usr/bin/xdg-open")))
        (start-process "" nil openFileProgram $path))
      ;; (shell-command "xdg-open .") ;; 2013-02-10 this sometimes froze emacs till the folder is closed. eg with nautilus
      ))))

(defun dired-open-in-terminal ()
  "Open the current dir in a new terminal window.
URL `http://ergoemacs.org/emacs/emacs_dired_open_file_in_ext_apps.html'
Version 2020-03-05"
  (interactive)
  (cond
   ((string-equal system-type "windows-nt")
    (let ((process-connection-type nil))
      (start-process "" nil "powershell" "start-process" "powershell"  "-workingDirectory" default-directory)))
   ((string-equal system-type "darwin")
    (let ((process-connection-type nil))
      (if (file-exists-p "/System/Applications/")
          (start-process "" nil "/System/Applications/Utilities/Terminal.app/Contents/MacOS/Terminal" default-directory)
        (start-process "" nil "/Applications/Utilities/Terminal.app/Contents/MacOS/Terminal" default-directory))))
   ((string-equal system-type "gnu/linux")
    (let ((process-connection-type nil))
      (start-process "" nil "x-terminal-emulator"
                     (concat "--working-directory=" default-directory))))))

(eval-after-load 'dired
                    '(define-key dired-mode-map (kbd "<return>") 'dired-open-in-external-app))

(setq frame-title-format "%b")

;; this makes typing a keyboard deletes selected region
;; https://www.gnu.org/software/emacs/manual/html_node/emacs/Saving-Emacs-Sessions.html
;; see also:
;; https://www.emacswiki.org/emacs/Desktop
(delete-selection-mode 1)

;; app frame title bar format
(setq frame-title-format
      `((buffer-file-name "%f" "%b"),(format " - Emacs %s" emacs-version)))

;; https://www.gnu.org/software/auctex/manual/preview-latex.html#Getting-started
;; says that setting desktop-save-mode on preserves preview-latex files from
;; session to session
;;(desktop-save-mode 1)

;; automatically enable flyspell in org mode
(add-hook 'org-mode-hook 'flyspell-mode)

;; prevent line breaking in the middle of a word in org mode
(add-hook 'org-mode-hook 'toggle-word-wrap)

;; ==========================================================================
;; MacOS: enable "quick look" on dired
;; https://github.com/lawlist/dired-qlmanage/blob/master/dired-qlmanage.el
;; ==========================================================================

(when (string-equal system-type "darwin")

(eval-after-load "dired" '(progn
  (define-key dired-mode-map (kbd "SPC") 'dired-qldired)
;;  (define-key dired-mode-map (kbd "C-p") 'dired-qldired-previous-line)
;;  (define-key dired-mode-map (kbd "C-n") 'dired-qldired-next-line)
  ))
)
;;(require 'dired)
;;(require 'cl)

;; http://stackoverflow.com/questions/20023458/how-to-delete-process-with-similar-name-one-at-a-time-from-newest-to-oldest
(defun dired-qldired-kill-last-process-named (name)
"Function initially written by @wvxvw, and revised by @lawlist."
  (let (p)
    (cl-loop with name-re =
             (format "^%s\\(?:<\\([[:digit:]]+\\)>\\)?" (regexp-quote name))
     for process in (process-list)
     for pname = (process-name process)
     if (string-match name-re pname)
     collect (cons (string-to-number (or (match-string 1 pname) "0")) process)
     into processes
     finally
      (let ((process (cdar (cl-sort processes '> :key 'car))))
        (when (and process (get-process process))
          (delete-process process)
          (setq p process))))
    p))

;;(defvar dired-qldired-spawn nil)
;;(make-variable-buffer-local 'dired-qldired-spawn)

(defun dired-qldired ()
(interactive)
    (let* ((filename (dired-get-file-for-visit)) (buffer (buffer-name)))
      (set-process-sentinel
       (start-process "qldired" nil "open" "-a" "qldired" "--args" filename buffer)
        (lambda (p e)
          ;; (setq e (replace-regexp-in-string "\n$" "" e))
          ;; (cond
          ;;   (t
          ;;    (message "qldired"  p e))
          ))))

;; (defun dired-qldired ()
;; (interactive)
;;   (unless (dired-qldired-kill-last-process-named "qldired")
;;     (let* ((filename (dired-get-file-for-visit)) (buffer (buffer-name)))
;;       (set-process-sentinel
;;        (start-process "qldired" nil "open" "-a" "qldired" "--args" filename buffer)
;;         (lambda (p e)
;;           (setq e (replace-regexp-in-string "\n$" "" e))
;;           (cond
;;             ((and (null dired-qldired-spawn) (= 9 (process-exit-status p)))
;;               (message "OFF: dired-qldired (%s) | %s | %s" (process-exit-status p) p e))
;;             ((and dired-qldired-spawn (= 9 (process-exit-status p)))
;;               (message "OFF/ON: dired-qldired (%s) | %s | %s" (process-exit-status p) p e)
;;               (dired-qldired-kill-spawn))
;;             ((= 0 (process-exit-status p))
;;               (message "OFF (mouse clicked): dired-qldired (%s) | %s | %s" (process-exit-status p) p e))
;;             (t
;;              (message "ABNORMAL: dired-qldired (%s) | %s | %s" (process-exit-status p) p e)))))
;;         )))

(defun dired-qldired-kill-spawn ()
"This is essentially a three level incursion, starting with `dired-qldired' and then
calling `dired-qldired-kill-spawn' twice."
(interactive)
  (let* ((filename (dired-get-file-for-visit)))
    (set-process-sentinel
      (start-process "qldired" nil "open" "-a" "qldired" "--args" filename buffer)
      (lambda (p e)
        (setq e (replace-regexp-in-string "\n$" "" e))
        (cond
          ((and (null dired-qldired-spawn) (= 9 (process-exit-status p)))
            (message "OFF: dired-qldired-kill-spawn (%s) | %s | %s" (process-exit-status p) p e))
          ((and dired-qldired-spawn (= 9 (process-exit-status p)))
            (message "OFF/ON: dired-qldired-kill-spawn (%s) | %s | %s" (process-exit-status p) p e)
            (dired-qldired-kill-spawn))
          ((= 0 (process-exit-status p))
            (message "OFF (mouse clicked): dired-qldired-kill-spawn (%s) | %s | %s" (process-exit-status p) p e))
          (t
            (message "ABNORMAL: dired-qldired-kill-spawn (%s) | %s | %s" (process-exit-status p) p e)))))))

(defun dired-qldired-next-line ()
(interactive "^")
  (let ((dired-qldired-spawn t))
    (dired-next-line 1)
    (dired-qldired-kill-last-process-named "qldired")))

(defun dired-qldired-previous-line ()
(interactive "^")
  (let ((dired-qldired-spawn t))
    (dired-previous-line 1)
    (dired-qldired-kill-last-process-named "qldired")))

(defun dired-sort ()
  "Sort dired dir listing in different ways.
Prompt for a choice.
URL `http://ergoemacs.org/emacs/dired_sort.html'
Version 2018-12-23"
  (interactive)
  (let ($sort-by $arg)
    (setq $sort-by (ido-completing-read "Sort by:" '( "date" "size" "name" )))
    (cond
     ((equal $sort-by "name") (setq $arg "-Al "))
     ((equal $sort-by "date") (setq $arg "-Al -t"))
     ((equal $sort-by "size") (setq $arg "-Al -S"))
     ;; ((equal $sort-by "dir") (setq $arg "-Al -Gogh --group-directories-first"))
     (t (error "logic error 09535" )))
    (dired-sort-other $arg )))

(setq dired-listing-switches "-Al")

;; ============================================================================
;; https://github.com/jixiuf/helm-dired-history
;; ============================================================================

(require 'savehist)
(add-to-list 'savehist-additional-variables 'helm-dired-history-variable)
(savehist-mode 1)

(with-eval-after-load 'dired
  (require 'helm-dired-history)
  ;; if you are using ido,you'd better disable ido for dired
  ;; (define-key (cdr ido-minor-mode-map-entry) [remap dired] nil) ;in ido-setup-hook
  (define-key dired-mode-map "," 'dired))

;; ============================================================================
;;
;; ============================================================================

(global-set-key (kbd "C-s-e") 'end-of-visual-line)
(global-set-key (kbd "C-s-a") 'beginning-of-visual-line)

;; ============================================================================
;;
;; ============================================================================

(eval-after-load "org" '(define-key org-mode-map (kbd "C-s-<tab>") 'org-global-cycle))

(eval-after-load "org" '(define-key org-mode-map (kbd "C-x C-s-l") 'org-store-link))

;; ============================================================================
;; When Korean characters break in dired-mode 한글 ㅎㅏㄴㄱㅡㄹ
;; ============================================================================

(require 'ucs-normalize)
(set-file-name-coding-system 'utf-8-hfs)
(setq default-process-coding-system '(utf-8-hfs . utf-8-hfs))
;;(setq coding-system-for-read 'utf-8)
(set-language-environment "UTF-8")

;; ============================================================================
;; Auto-refresh dired on file change
;; ============================================================================

(add-hook 'dired-mode-hook 'auto-revert-mode)

;; ============================================================================
;;
;; ============================================================================

;(setq dired-deletion-confirmer '(lambda (x) t))

(add-hook 'dired-mode-hook '(lambda () (dired-hide-details-mode 1)))

(add-hook 'dired-load-hook
               (lambda ()
                 (load "dired-x")
                 ;; Set dired-x global variables here.  For example:
                 ;; (setq dired-guess-shell-gnutar "gtar")
                 ;; (setq dired-x-hands-off-my-keys nil)
                 (push '"_Store" dired-omit-extensions)
                 (push '".ilg" dired-omit-extensions)
                 (push '".ind" dired-omit-extensions)
                 (push '".out" dired-omit-extensions)
                 (push '".gz" dired-omit-extensions)
                 (push '".prv" dired-omit-extensions)
                 (push '".rip" dired-omit-extensions)
                 (push '".ini" dired-omit-extensions)
                 (setq dired-omit-files
                      (concat dired-omit-files "\\|^_region_\\.*\\|^prv_*"))
                 ))
     (add-hook 'dired-mode-hook
               (lambda ()
                 ;; Set dired-x buffer-local variables here.  For example:
                 (dired-omit-mode 1)
                 ))
(setq dired-listing-switches "-Alt")
(setq inhibit-startup-screen nil)

(define-key helm-find-files-map (kbd "C-^") 'helm-find-files-up-one-level)
;;(define-key helm-find-files-map (kbd "C-SPC") 'helm-execute-persistent-action)

;;mouse-autoselect-window

(yas-global-mode 1)

(setq user-mail-address "hbshim@gmail.com")
(setq user-full-name "Hyungbo Shim")

(defun toggle-line-spacing-nil-half ()
  "Toggle line spacing nil <-> 0.5"
  (interactive)
  (if line-spacing
      (setq line-spacing nil)
      (setq line-spacing 0.5))
 ;(redraw-frame (selected-frame))
  )

(defun toggle-easy-reading ()
  (interactive)
  (if line-spacing
      (progn (text-scale-adjust 0)
             (toggle-line-spacing-nil-half)
             (set-frame-width  (selected-frame) 80))
    (progn (text-scale-adjust 2)
           (toggle-line-spacing-nil-half)
           (set-frame-width  (selected-frame) 102))))

(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))
;; Initialize environment (shell variables, eg. $PATH, $MANPATH)
;; from the user’s shell.

(require 'ox-rst)

(setq dired-omit-verbose nil)
;; When non-nil, show messages when omitting files.
;; When nil, don’t show messages.

;; Global Auto-Revert Mode is a global minor mode that reverts any
;; buffer associated with a file when the file changes on disk.
(global-auto-revert-mode 1)

(setq auto-revert-verbose nil)
;; When non-nil, a message is generated whenever a buffer is reverted.
;; When nil, Auto-Revert Mode does not generate any messages.

;; info > emacs > maintaining > version control
;; To disable VC entirely, set the customizable variable vc-handled-backends to nil.
;;(setq vc-handled-backends 'git)
(put 'dired-find-alternate-file 'disabled nil)

(add-hook 'org-mode-hook 'abbrev-mode)

(setq vc-follow-symlinks t)

;; save abbrevs when files are saved
(setq save-abbrevs 'silent)

;; helm-bibtex
;; The default fields used for searching are: author, title, year, BibTeX key, entry type (article, inproceedings, ...). The variable bibtex-completion-addition-search-fields can be used to extend this list.
(setq bibtex-completion-additional-search-fields '(keywords))
