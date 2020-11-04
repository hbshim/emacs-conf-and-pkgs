;; Time-stamp: "2020-11-03 21:30:56 hbshim"
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
 '(bibtex-completion-library-path (quote ("~/Dropbox/hbshim/Documents/bibtex-library")))
 '(bibtex-completion-notes-path "~/Documents/bibtex-library.org")
 '(bibtex-completion-pdf-open-function (quote helm-open-file-with-default-tool))
 '(blink-matching-delay 0)
 '(column-number-indicator-zero-based nil)
 '(column-number-mode t)
 '(company-quickhelp-color-background "#b0b0b0")
 '(company-quickhelp-color-foreground "#232333")
 '(compilation-message-face (quote default))
 '(coq-maths-menu-enable t)
 '(coq-prog-args (quote ("-topfile" "-emacs")))
 '(coq-shortcut-alist nil)
 '(coq-unicode-tokens-enable t)
 '(coq-use-project-file nil)
 '(custom-enabled-themes nil)
 '(custom-safe-themes
   (quote
    ("bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "73c69e346ec1cb3d1508c2447f6518a6e582851792a8c0e57a22d6b9948071b4" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" default)))
 '(default-frame-alist (quote ((width . 80) (height . 70) (left . 0) (top . 0))))
 '(dired-listing-switches "-Alth")
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
 '(linum-disabled-modes-list
   (quote
    (eshell-mode wl-summary-mode compilation-mode org-mode text-mode dired-mode pdf-view-mode Custom)))
 '(mac-mouse-wheel-smooth-scroll nil)
 '(mac-pass-command-to-system nil)
 '(magit-diff-use-overlays nil)
 '(mail-from-style nil)
 '(mouse-avoidance-banish-position
   (quote
    ((frame-or-window . frame)
     (side . right)
     (side-pos . -3)
     (top-or-bottom . top)
     (top-or-bottom-pos . 0))))
 '(mouse-avoidance-mode (quote banish) nil (avoid))
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
    (use-package sublimity aggressive-indent dired-single dired-launch adaptive-wrap ox-rst helm-dired-history magithub htmlize proof-general latex-math-preview auto-complete helm-bibtex helm-fuzzier helm-flx helm)))
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
     "]{preview}[2004/11/05]" "\\PreviewMacro*\\parbox{}" "\\PreviewMacro*\\hltn" "\\PreviewMacro*\\phantom")))
 '(preview-gs-command "/usr/local/bin/gs")
 '(preview-scale-function 1.0)
 '(proof-three-window-enable t)
 '(proof-three-window-mode-policy (quote vertical))
 '(proof-tree-arguments (quote ("-debug")))
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
 '(show-paren-delay 0)
 '(show-paren-mode t)
 '(show-paren-when-point-inside-paren t)
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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                                                                           ;;
;;                   AUTO GENERATED SETTINGS END HERE                        ;;
;;                                                                           ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; ============================================================================
;; emacs
;; ============================================================================

;; Tell emacs where is your personal elisp library directory
(add-to-list 'load-path "~/.emacs.d/lisp/")

(show-paren-mode 1)
;;(setq show-paren-delay 0)

;; Name of default directory of current buffer.
;; https://stackoverflow.com/questions/6464003/emacs-find-file-default-path
;; `default-directory' is a local variable; global value is nil
;; Automatically becomes permanently buffer-local when set.
;;(setq default-directory "~")

;; Initialize environment from the user’s shell.
;;(exec-path-from-shell-initialize)


;;                             MAC SPECIFICS

;; Tweak for problem on OS X where Emacs.app doesn't run the right shell init
;; scripts when invoking a sub-shell
;; obtained from "https://dev.realworldocaml.org/install.html"
(cond ((eq window-system 'ns) ; macosx
       ;; Invoke login shells, so that .profile or .bash_profile is read
       (setq shell-command-switch "-lc")))

;; set keys for Apple keyboard, for emacs in OS X
;; lower case "s" is for super-key (control)
(setq mac-command-modifier 'control) ; make cmd key do ~
(setq mac-option-modifier 'meta) ; make opt key do ~
(setq mac-control-modifier 'super) ; make Control key do ~
(setq ns-function-modifier 'hyper)  ; make Fn key do ~


;; ============================================================================
;;                                  helm
;; ============================================================================

(require 'helm-config)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x r b") 'helm-filtered-bookmarks)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x C-b") 'helm-buffers-list)

;; Do not `(setq helm-mode 1)'. It is not the same as below and sometimes make
;; helm does not work - eg. `describe-variable' and `describe-function'
(helm-mode 1)

;; enable helm fuzzy sorting. Do not set `(setq helm-flx-mode +1)'
(helm-flx-mode +1)

;; more intuitive fuzzy matching behavior for Helm. Combine with `helm-flx'
;; for query highlighting and sorting results by quality
(require 'helm-fuzzier)
(helm-fuzzier-mode 1)
;; helm-fuzzier will only enhance matching for sources that have fuzzy-matching enabled, so be sure to enable fuzzy-matching for the sources you're interested in by setting the appropriate variable (`helm-M-x-fuzzy-match', `helm-mode-fuzzy-match', `helm-apropos-fuzzy-match', etc).

;; ============================================================================
;;                                 AUCTeX
;; ============================================================================

;; Automatically save style information when saving the buffer.
;;(setq TeX-auto-save t)

;; Parse file after loading it if no style hook is found for it.
;;(setq TeX-parse-self t)

;; The master file associated with the current buffer.
;; If this variable is nil, AUCTeX will query you for the name.
;; If the variable is t, AUCTeX will assume the file is a master file itself.
;;(setq-default TeX-master nil)

(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
;; `LaTeX-math-mode' is a minor mode with easy access to TeX math macros.
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
;; (add-hook 'LaTeX-mode-hook 'TeX-fold-mode)
;; (add-hook 'LaTeX-mode-hook 'outline-minor-mode)
;; Starts the Emacs server for backward-sync
;; `exec-path-from-shell-initialize' initialize env from the user’s shell.
(add-hook 'LaTeX-mode-hook 'exec-path-from-shell-initialize)
(add-hook 'LaTeX-mode-hook 'abbrev-mode)

;; List of hooks to run when a new section is inserted.
(setq LaTeX-section-hook
      '(LaTeX-section-heading  ; ask to choose chapter/section/subsection/...
        LaTeX-section-title    ; ask to enter insert title
     ;; LaTeX-section-toc      ; ask to enter toc entry
        LaTeX-section-section  ; Insert LaTeX section command according to
                               ; to ‘name’, ‘title’, and ‘toc’.
     ;; LaTeX-section-label    ; insert a label controlled by the variable
                               ; LaTeX-section-label
        ))

;;                       LABEL INSERTING FUNCTION

;; A function inserting a label at point or returning a label string.
;; Sole mandatory argument of the function (that I made optional)is
;; the environment. The function has to return
;; + the label inserted, or
;; + nil if no label was inserted.
;; If the argument `no-insert' is non-nil, then the function has to return
;; + the label as string without any insertion or
;; + nil if no label was read in.
;; See the description of the function `LaTeX-label-function'.
(defun my-LaTeX-label (&optional name type no-insert)
  "Insert automatically generated label without asking the label name. 
This will be used for AUCTeX `LaTeX-label-function' variable."
  (let ((listOfLetters "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ")
        (timeStamp (string-to-number (reverse (number-to-string (- (string-to-number (format-time-string "%s")) (* 60 60 24 365 50))))))
        (label ""))
    (while (not (= timeStamp 0))
      (let ((i (mod timeStamp (length listOfLetters))))
        (setq label (concat label (substring listOfLetters i (1+ i))))
        (setq timeStamp (truncate (/ timeStamp (length listOfLetters))))))
    (while (not (= (length label) 6))
      (setq label (concat "0" label)))
    (unless no-insert
      (delete-blank-lines)
      (previous-line)
      (end-of-line)
      (insert " ")
      (insert TeX-esc "label" TeX-grop label TeX-grcl))
    label))
(setq LaTeX-label-function 'my-LaTeX-label)


;;                         LOCATION OF TEX MACROS
;;            (Used by AUCTeX to generate AUCTeX style files)

;; (setq `TeX-macro-global'
;;       '("/Users/hbshim/.local/texlive/2019/texmf-var/tex/"
;;         "/Users/hbshim/.local/texlive/2019/texmf-dist/tex/"
;;         "/Users/hbshim/.local/texlive/2019/texmf-dist/bibtex/bst/"
;;         "/Users/hbshim/.local/texlive/texmf-local/tex/"
;;         "/Users/hbshim/.local/texlive/texmf-local/bibtex/bst/"))

;; The value defaults to the directories listed in the ‘TEXINPUTS’ and
;; ‘BIBINPUTS’ environment variables or to the respective directories in
;; $TEXMFHOME if no results can be obtained from the environment variables.
;; (setq `TeX-macro-private'
;;       '("/Users/hbshim/.emacs.d/elpa/auctex-12.2.3/latex/"))


;;                      AUCTEX STYLE FILES LOCATIONS
;;          (Warning: those are not LaTeX style files, `*.sty'!)

;; GLOBAL (SITE-WISE)

;; automatically generated
;; (setq `TeX-auto-global' "/usr/local/var/auctex")

;; manually written
;; (setq `TeX-style-global' "/Users/hbshim/.emacs.d/elpa/auctex-12.2.3/style")
;; Directory containing hand generated TeX information.
;; These correspond to 

;; PRIVATE (USER-WISE)

;; automatically generated
;; (setq `TeX-auto-private' ("/Users/hbshim/.emacs.d/auctex/auto"))
;; List of directories containing automatically generated AUCTeX style files.
;; These correspond to the personal TeX macros. 

;; manually written
;; (setq `TeX-style-private' '("/Users/hbshim/.emacs.d/auctex/style"))
;; List of directories containing hand generated AUCTeX style files.
;; These correspond to the personal TeX macros.

;; LOCAL (FILE-WISE, PER DIRECTORY)

;; manually written
;; (setq `TeX-style-local' "style")

;; automatically generated
;; (setq `TeX-auto-local' "auto")

;; ALL LOCATIONS

;; List of directories to search for AUCTeX style files. 
;; + By default, when AUCTeX searches a directory for files, it will recursively
;;   search through subdirectories. Controlled by `TeX-file-recurse' variable.
;; + Per default the list is built from the values of the variables
;; ‘TeX-auto-global’, ‘TeX-style-global’, ‘TeX-auto-private’,
;; ‘TeX-style-private’, ‘TeX-auto-local’, and ‘TeX-style-local’.
;; (setq `TeX-style-path'
;;       '("/usr/local/var/auctex"
;;         "~/.emacs.d/elpa/auctex-12.2.3/style"
;;         "~/.emacs.d/auctex/auto"
;;         "~/.emacs.d/auctex/style"
;;         "~/math/AUCTeX_auto_gen_styles"
;;         "~/math/AUCTeX_user_def_style"))


;;                            RECURSIVE SEARCH

;; The value
;; + nil means do not recurse,
;; + a positive integer means go that far deep in the directory hierarchy,
;; + t means recurse indefinitely.
;; (setq `TeX-file-recurse' t)


;;                          FILE NAMES TO IGNORE

;; These files or directories will not be considered when searching for
;; TeX files in a directory.
;; (setq `TeX-ignore-file' "\\(^\\|[/\\]\\)\\(\\.\\|\\.\\.\\|RCS\\|SCCS\\|CVS\\|babel\\..*\\)$")


;;                   SYMBOLS TO IGNORE FOR AUTOMATION

;; List of symbols to ignore when scanning a TeX style file.
;; (setq `TeX-auto-ignore'
;;       '("csname"
;;         "filedate"
;;         "fileversion"
;;         "docdate"
;;         "next"
;;         "labelitemi"
;;         "labelitemii"
;;         "labelitemiii"
;;         "labelitemiv"
;;         "labelitemv"
;;         "labelenumi"
;;         "labelenumii"
;;         "labelenumiii"
;;         "labelenumiv"
;;         "labelenumv"
;;         "theenumi"
;;         "theenumii"
;;         "theenumiii"
;;         "theenumiv"
;;         "theenumv"
;;         "document"
;;         "par"
;;         "do"
;;         "expandafter"))


;;                            TEX FOLD MODE

;; The following fixes TeX-fold-buffer's problem with arbitrary insertion of
;; visual newlines
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


;;                         'SKIM' BACKWARD SEARCH

;;https://sourceforge.net/p/skim-app/wiki/TeX_and_PDF_Synchronization/#choosing-an-editor-command-for-backward-search
;; 'tex-site.el' contains startup code, autoloads and variables adapted to
;; the local site configuration. Editing the file should not be done
;; because the installation routine will overwrite those changes.
;; The following only works with AUCTeX loaded
(require 'tex-site)
(add-hook 'TeX-mode-hook
          (lambda ()
            (add-to-list 'TeX-output-view-style '("^pdf$" "." "/Applications/Skim.app/Contents/SharedSupport/displayline %n %o %b"))))


;; ============================================================================
;;                                 reftex
;; ============================================================================

(add-hook 'LaTeX-mode-hook 'turn-on-reftex)

(add-hook 'reftex-mode-hook
          (lambda ()
            (define-key reftex-mode-map "\C-c&" nil)
            (define-key reftex-mode-map "\C-c(" 'my-LaTeX-label)))

;; Alist with default regular expressions for finding context.
;; (setq reftex-default-context-regexps nil)

;; Default label alist specifications.  LaTeX should always be the last entry.
;; The value of this variable is a list of symbols with associations in the
;; constant reftex-label-alist-builtin’
;; (setq reftex-default-label-alist-entries nil)

;; RefTeX will try to derive a sensible label from context.
;; (setq reftex-insert-label-flags (quote (" " "sftienN")))

;; List of macros and environments to be ignored when searching for labels.
;; (setq reftex-label-ignored-macros-and-environments (quote ("label"))

;; List of regexps matching \label definitions.
;; (setq reftex-label-regexps (quote ("")))

;; Plug-in flags for AUCTeX interface.
;; (setq reftex-plug-into-AUCTeX t)

;; If non-nil, it will prompts for the reference macro.
;; (setq reftex-ref-macro-prompt nil)

;; Alist of reference styles.
;; (setq reftex-ref-style-alist nil)

;; Prefixes for section labels.
;; (setq reftex-section-prefixes nil)


;;                                 FRAME

(global-set-key (kbd "C-S-<return>")
                (lambda ()
                  (interactive)
                  (add-hook 'after-make-frame-functions
                            'select-frame-set-input-focus)
                  (make-frame)
                  (remove-hook 'after-make-frame-functions
                               'select-frame-set-input-focus)
                  (switch-to-buffer "*scratch*")
                  ))

(global-set-key (kbd "s-c") 'delete-frame)

(global-set-key (kbd "s-j") 'other-frame)

(global-set-key (kbd "s-J")
                (lambda ()
                  (interactive)
                  (other-frame -1)))

(global-set-key (kbd "s-k")
                (lambda ()
                  (interactive)
                  (other-frame -1)))
;; note that (global-set-key (kbd "s-k") '(other-frame -1)) does not work
;; because other-frame is an interactive function

;;                                  INFO

(global-set-key (kbd "C-h i")
                (lambda ()
                  (interactive)
                  (add-hook 'after-make-frame-functions
                            'select-frame-set-input-focus)
                  (make-frame)
                  (remove-hook 'after-make-frame-functions
                               'select-frame-set-input-focus)
                  (info)
                  (toggle-easy-reading)))

(lambda ()
                  (interactive)
                  (add-hook 'after-make-frame-functions
                            'select-frame-set-input-focus)
                  (make-frame)
                  (remove-hook 'after-make-frame-functions
                               'select-frame-set-input-focus)
                  (info)
                  (toggle-easy-reading))

;;                                 BIBTEX

(global-set-key (kbd "C-c C-S-b") 'helm-bibtex)


;;                               SCROLLING

(global-set-key (kbd "C-x <") 'scroll-right)
(global-set-key (kbd "C-x >") 'scroll-left)


;;                            LINE TRUNCATION

;; When truncating is off, long lines are folded.
(global-set-key (kbd "C-x ?") 'toggle-truncate-lines)


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


;;         KILL THE BUFFER AND FRAME WHEN THE TERMINAL TERMINATES

;; https://oremacs.com/2015/01/01/three-ansi-term-tips/
(defun my-term-exec-hook ()
  (let* ((buff (current-buffer))
         (proc (get-buffer-process buff)))
    (set-process-sentinel proc
     `(lambda (process event)
        (if (or (string-match-p (regexp-quote "finished") event)
                (string-match-p (regexp-quote "deleted") event)
                (string-match-p (regexp-quote "exited") event)
                (string-match-p (regexp-quote "failed") event))
            ;; (string= event "finished\n")
            (progn (delete-frame (selected-frame)) (kill-buffer ,buff)))))))
(add-hook 'term-exec-hook 'my-term-exec-hook)


;;                           START EMACS SERVER

(server-start)


;;               SELECT-WINDOW WHEN A NEW WINDOW POPPED UP

;;(setq-defulat 'split-window-preferred-function 'split-window-sensibly)
(setq split-window-preferred-function
      '(lambda (&optional window)
         (let ((new-window (split-window-sensibly window)))
                    (if (not (active-minibuffer-window))
                        (select-window new-window)))))


;; AUTOMATICALLY GENERATED TO ENABLE FEATURES

;; 'put' puts value onto symbol’s property list under the property name property, replacing any previous property value. The put function returns value. 
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'scroll-left 'disabled nil)


;;
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


;; this makes typing a keyboard deletes selected region
;; https://www.gnu.org/software/emacs/manual/html_node/emacs/Saving-Emacs-Sessions.html
;; see also:
;; https://www.emacswiki.org/emacs/Desktop
(delete-selection-mode 1)

;; ============================================================================
;; Title bar, mode line, mode bar
;; ============================================================================

(setq mode-line-format
      '("%e"
        mode-line-front-space
        mode-line-mule-info
        mode-line-client
        mode-line-modified
        mode-line-remote
        ; mode-line-frame-identification
        "   "
        mode-line-position
        ; (vc-mode vc-mode)
        "  "
        mode-line-modes
        mode-line-misc-info
        mode-line-end-spaces))

(setq size-indication-mode t)

(setq frame-title-format
      '(:eval
        (if (buffer-file-name)
            (concat (abbreviate-file-name (buffer-file-name))
                    (format " - Emacs %s" emacs-version))
          (if (derived-mode-p 'dired-mode)
              (concat default-directory (format " - Emacs %s" emacs-version))))))

;; ============================================================================
;; desktop save mode
;; ============================================================================

;; https://www.gnu.org/software/auctex/manual/preview-latex.html#Getting-started
;; says that setting desktop-save-mode on preserves preview-latex files from
;; session to session but it doesn't work as expected
;;(desktop-save-mode 1)

;; ============================================================================
;; org mode, orgmode
;; ============================================================================

;; automatically enable flyspell in org mode
(add-hook 'org-mode-hook 'flyspell-mode)

;; prevent line breaking in the middle of a word in org mode
(add-hook 'org-mode-hook 'toggle-word-wrap)

;; adaptive-wrap preserving indents
(add-hook 'org-mode-hook 'adaptive-wrap-prefix-mode)

(add-hook 'org-mode-hook 'abbrev-mode)

(add-hook 'org-mode-hook
          (lambda ()
            (define-key org-mode-map "\C-e" 'end-of-visual-line)
            (define-key org-mode-map "\C-a" 'beginning-of-visual-line)
            (define-key org-mode-map "\C-c[" nil)
            (define-key org-mode-map "\C-c]" nil)))

;; ============================================================================
;; org agenda calendar holiday diary
;; ============================================================================

(global-set-key (kbd "C-c a") 'org-agenda)

(setq org-log-done "time")

;; (setq org-directory "~/Dropbox/org")

(setq org-agenda-files '("~/org/todo.org"))

(setq org-agenda-start-on-weekday 0)

(setq org-agenda-include-diary t)

(setq diary-file "~/.emacs.d/diary")
;; the following may look like a duplicate but is actually necessary.
;; eg. in the calendar mode, when pressing 'i a' to insert an anniversary,
;; the following make it insert `org-anniversary' to the diary file that is
;; is format free (american, european, ...) instead of format dependent
;; `diary-anniversary'.  
(setq org-agenda-diary-file "~/.emacs.d/diary")

(setq calendar-latitude 40.2369)
(setq calendar-longitude -75.2366)
(setq calendar-location-name "North Wales, PA")
;; For the Calendar sunrise/sunset
;; Use one decimal place in the values of ‘calendar-latitude’ and
;; ‘calendar-longitude’.

;; WARNING: The following settings are used only to nullify holidays
;;          The value of each variables are diary items not just "1" or "t"
(setq holiday-other-holidays nil)
(setq holiday-general-holidays nil)
(setq holiday-local-holidays nil)
(setq holiday-christian-holidays nil)
(setq holiday-hebrew-holidays nil)
(setq holiday-islamic-holidays nil)
(setq holiday-bahai-holidays nil)
(setq holiday-oriental-holidays nil)
(setq holiday-solar-holidays nil)
;; by setting any of these to nil in your init file, you can eliminate
;; unwanted categories of holidays.

;; include sunrise and sunset in the org agenda
;; include %%(diary-sunrise) and %%(diary-sunset)
;; in the diary file one line for each
(defun diary-sunrise ()
  (let ((dss (diary-sunrise-sunset)))
    (with-temp-buffer
      (insert dss)
      (goto-char (point-min))
      (while (re-search-forward " ([^)]*)" nil t)
        (replace-match "" nil nil))
      (goto-char (point-min))
      (search-forward ",")
      (buffer-substring (point-min) (match-beginning 0)))))

(defun diary-sunset ()
  (let ((dss (diary-sunrise-sunset))
        start end)
    (with-temp-buffer
      (insert dss)
      (goto-char (point-min))
      (while (re-search-forward " ([^)]*)" nil t)
        (replace-match "" nil nil))
      (goto-char (point-min))
      (search-forward ", ")
      (setq start (match-end 0))
      (search-forward " at")
      (setq end (match-beginning 0))
      (goto-char start)
      (capitalize-word 1)
      (buffer-substring start end))))

;; (setq org-agenda-day-face-function
;;       (defun jd:org-agenda-day-face-holidays-function (date)
;;         "Compute DATE face for holidays."
;;         (unless (org-agenda-todayp date)
;;           (dolist (file (org-agenda-files nil 'ifmode))
;;             (let ((face
;;                    (dolist (entry (org-agenda-get-day-entries file date))
;;                      (let ((category (with-temp-buffer
;;                                        (insert entry)
;;                                        (org-get-category (point-min)))))
;;                        (when (or (string= "Holidays" category)
;;                                  (string= "Vacation" category))
;;                          (return 'org-agenda-date-weekend))))))
;;               (when face (return face)))))))

(add-to-list 'load-path (expand-file-name "~/.emacs.d/cal-korea-x"))
(require 'cal-korea-x)
;; (setq holiday-local-holidays cal-korea-x-korean-holidays)
;; (setq diary-date-forms 'diary-american-date-forms)
;; (setq diary-modify-entry-list-string-function 'org-modify-diary-entry-string)
;; (setq diary-modify-entry-list-string-function 'calendar-modify-diary-entry-string)

;; put holidays manually as the following
(setq calendar-holidays
      '((holiday-fixed 1 1 "New Year's Day")
        (holiday-float 1 1 3 "Martin Luther King Day")
        (holiday-fixed 2 2 "Groundhog Day")
        (holiday-fixed 2 14 "Valentine's Day")
        (holiday-float 2 1 3 "President's Day")
        (holiday-fixed 3 17 "St. Patrick's Day")
        (holiday-fixed 4 1 "April Fools' Day")
        (holiday-float 5 0 2 "Mother's Day")
        (holiday-float 5 1 -1 "Memorial Day")
        (holiday-fixed 6 14 "Flag Day")
        (holiday-float 6 0 3 "Father's Day")
        (holiday-fixed 7 4 "Independence Day")
        (holiday-float 9 1 1 "Labor Day")
        (holiday-float 10 1 2 "Columbus Day")
        (holiday-fixed 10 31 "Halloween")
        (holiday-fixed 11 11 "Veteran's Day")
        (holiday-float 11 4 4 "Thanksgiving")
        (holiday-fixed 1 1 "신정")
        (holiday-lunar-ko 1 nil 1 "설날" -1)
        (holiday-lunar-ko 1 nil 1 "설날")
        (holiday-lunar-ko 1 nil 1 "설날" 1)
        (holiday-fixed 3 1 "3.1절")
        (holiday-lunar-ko 4 nil 8 "석가탄신일")
        (holiday-fixed 5 5 "어린이날")
        (holiday-fixed 6 6 "현충일")
        (holiday-fixed 8 15 "광복절")
        (holiday-fixed 10 3 "개천절")
        (holiday-fixed 10 9 "한글날")
        (holiday-lunar-ko 8 nil 15 "추석" -1)
        (holiday-lunar-ko 8 nil 15 "추석")
        (holiday-lunar-ko 8 nil 15 "추석" 1)
        (holiday-fixed 12 25 "성탄절")
        (holiday-easter-etc)
        (holiday-solar-term-ko)
        (holiday-fixed 12 25 "Christmas")
        (if calendar-christian-all-holidays-flag
            (append
             (holiday-fixed 1 6 "Epiphany")
             (holiday-julian 12 25 "Christmas (Julian calendar)")
             (holiday-greek-orthodox-easter)
             (holiday-fixed 8 15 "Assumption")
             (holiday-advent 0 "Advent")))
        (solar-equinoxes-solstices)
        (holiday-sexp calendar-daylight-savings-starts
                      (format "Daylight Saving Time Begins %s"
                              (solar-time-string
                               (/ calendar-daylight-savings-starts-time
                                  (float 60))
                               calendar-standard-time-zone-name)))
        (holiday-sexp calendar-daylight-savings-ends
                      (format "Daylight Saving Time Ends %s"
                              (solar-time-string
                               (/ calendar-daylight-savings-ends-time
                                  (float 60))
                               calendar-daylight-time-zone-name)))
        (holiday-sexp '(if (zerop (% year 4))
                   (calendar-gregorian-from-absolute
                    (1+ (calendar-dayname-on-or-before
                          1 (+ 6 (calendar-absolute-from-gregorian
                                  (list 11 1 year)))))))
              "US Presidential Election")
        ))

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
;; make beginning/end of lines visual globally
;; ============================================================================

(global-set-key (kbd "C-e") 'end-of-visual-line)
(global-set-key (kbd "C-a") 'beginning-of-visual-line)

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
(setq dired-listing-switches "-Alth")
(setq inhibit-startup-screen nil)
;; Dired Clean Confirm Killing Deleted Buffers 
;; Dired Find Subdir
(setq dired-hide-details-mode t)
(setq dired-hide-details-hide-information-lines t)
;;(add-hook 'dired-mode-hook '(lambda () (dired-hide-details-mode 1)))
;; Dired Recursive Copies
;; Dired Recursive Deletes
(setq helm-dired-history-max 5)

;;(define-key helm-find-files-map (kbd "C-^") 'helm-find-files-up-one-level)
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
    (progn (text-scale-adjust 1)
           (toggle-line-spacing-nil-half)
           (set-frame-width  (selected-frame) 100))))

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

(setq vc-follow-symlinks t)

;; save abbrevs when files are saved
(setq save-abbrevs 'silent)

;; helm-bibtex
;; The default fields used for searching are: author, title, year, BibTeX key, entry type (article, inproceedings, ...). The variable bibtex-completion-addition-search-fields can be used to extend this list.
(setq bibtex-completion-additional-search-fields '(keywords))

;; ============================================================================
;; Time-stamp
;; ============================================================================

(add-hook 'before-save-hook 'time-stamp)

;; The time stamp must be in the first eight lines of the file, and you should insert it like this: Time-stamp: <> or like this: Time-stamp: " "

;; ============================================================================
;;
;; ============================================================================

;; (setq coq-token-symbol-map
;;     '(("alpha" "α") ("beta" "β") ("gamma" "γ") ("delta" "δ") ("epsilon" "ε")
;;      ("zeta" "ζ") ("eta" "η") ("theta" "θ") ("iota" "ι") ("kappa" "κ")
;;      ("lambda" "λ") ("mu" "μ") ("nu" "ν") ("xi" "ξ") ("pi" "π")
;;      ("rho" "ρ") ("sigma" "σ")  ("tau" "τ") ("upsilon" "υ") ("phi" "ϕ")
;;      ("chi" "χ") ("psi" "ψ") ("omega" "ω") ("Gamma" "Γ") ("Delta" "Δ")
;;      ("Theta" "Θ") ("Lambda" "Λ") ("Xi" "Ξ") ("Pi" "Π") ("Sigma" "Σ")
;;      ("Upsilon" "Υ") ("Phi" "Φ") ("Psi" "Ψ") ("Omega" "Ω") ("forall" "∀")
;;      ("exists" "∃") ("nat" "ℕ" type) ("complex" "ℂ" type) ("real" "ℝ" type) ("int" "ℤ" type)
;;      ("Z" "ℤ" type) ("rat" "ℚ" type) ("bool" "𝔹" type) ("false" "false" bold sans) ("true" "true" bold sans)
;;      ("WHILE" "WHILE" bold sans)
;;      ("DO" "DO" bold sans)
;;      ("END" "END" bold sans)
;;      ("SKIP" "SKIP" bold sans)
;;      ("THEN" "THEN" bold sans)
;;      ("ELSE" "ELSE" bold sans)
;;      ("IFB" "IFB" bold sans)
;;      ("FI" "FI" bold sans)
;;      ("{{" "⦃" bold)
;;      ("}}" "⦄" bold)
;;      ("lhd" "⊲")
;;      ("rhd" "⊳")
;;      ("<=" "≤")
;;      (">=" "≥")
;;      ("=>" "⇒")
;;      ("->" "→")
;;      ("<-" "←")
;;      ("<->" "↔")
;;      ("++" "⧺")
;;      ("<<" "《")
;;      (">>" "》")
;;      ("===" "≡")
;;      ("=/=" "≢")
;;      ("=~=" "≅")
;;      ("==b" "≡")
;;      ("<>b" "≢")
;;      ("-->" "⟹-")
;;      ("++>" "⟹+")
;;      ("==>" "⟹")
;;      (":=" "≔")
;;      ("|-" "⊢")
;;      ("<>" "≠")
;;      ("-|" "⊣")
;;      ("\\/" "∨")
;;      ("/\\" "∧")
;;      ("~" "¬")
;;      ("UU" "𝒰")
;;      ("============================" "⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯" bold tactical)))

;; ============================================================================
;; Reuse the current dired buffer to visit a directory
;; ============================================================================

(require 'dired-single)

;; ============================================================================
;; Use dired as a launcher
;; ============================================================================

(require 'dired-launch)

;; ============================================================================
;; Turning off backup and autosave
;; ============================================================================

(setq make-backup-files nil)

;; disable #auto-save#
(setq auto-save-default nil)

;; ============================================================================
;; disable vertical scroll bar
;; ============================================================================

(setq scroll-bar-mode nil)

;; ============================================================================
;; aggressive-indent-mode
;; ============================================================================

;; activate with

;;     (add-hook 'emacs-lisp-mode-hook #'aggressive-indent-mode)
;;     (add-hook 'css-mode-hook #'aggressive-indent-mode)

;; if you want to turn it on for every programming mode,
;; you can do something like:

;;     (global-aggressive-indent-mode 1)
;;     (add-to-list 'aggressive-indent-excluded-modes 'html-mode)

;; ============================================================================
;; unmount /dev/disk4
;; ============================================================================


(defun unmount-disk4 ()
  "macOS: unmount /dev/disk4."
  (interactive)
  (shell-command "diskutil unmountdisk /dev/disk4"))

;; ============================================================================
;; scrolling by line
;; ============================================================================

;;scroll window up/down by one line
;; (global-set-key (kbd "M-n") (kbd "C-u 1 C-v"))
;; (global-set-key (kbd "M-p") (kbd "C-u 1 M-v"))

;; ============================================================================
;; preserve cursor from scrolling
;; ============================================================================

;;keep cursor at same position when scrolling
(setq scroll-preserve-screen-position nil)

;; ============================================================================
;; page up/down by half page instead of full
;; ============================================================================

;; (autoload 'View-scroll-half-page-forward "view")
;; (autoload 'View-scroll-half-page-backward "view")
;; (global-set-key (kbd "C-v") 'view-scroll-half-page-forward)
;; (global-set-key (kbd "M-v") 'view-scroll-half-page-backward)

;; ============================================================================
;; scrolling a window when the point moves out
;; ============================================================================

(setq scroll-step 1)

;; ============================================================================
;; sublimity - smooth scrolling
;; ============================================================================

  ;; (require 'sublimity)
(require 'sublimity-scroll)
  ;; (require 'sublimity-map)

;; ============================================================================
;; remove all source control
;; ============================================================================

(setq vc-handled-backends ())
