;; Time-stamp: "2020-12-14 01:58:06 hbshim"
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"   ))
(add-to-list 'package-archives '("org"   . "https://orgmode.org/elpa/"     ))
(add-to-list 'package-archives '("gnu"   . "https://elpa.gnu.org/packages/"))
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(LaTeX-electric-left-right-brace t)
 '(LaTeX-font-list
   '((1 "" "" "\\mathcal{" "}")
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
     (4 "" "" t)))
 '(LaTeX-label-alist
   '(("figure" . LaTeX-figure-label)
     ("table" . LaTeX-table-label)
     ("figure*" . LaTeX-figure-label)
     ("table*" . LaTeX-table-label)
     ("equation" . LaTeX-equation-label)
     ("eqnarray" . LaTeX-eqnarray-label)
     ("defn" . "\"\"")
     ("axiom" . "")
     ("hyp" . "")
     ("eg" . "")
     ("exer" . "")
     ("exerdefn" . "")
     ("convention" . "")
     ("stmt" . "")
     ("lem" . "")
     ("lemdefn" . "")
     ("prop" . "")
     ("propdefn" . "")
     ("thm" . "")
     ("thmdefn" . "")
     ("cor" . "")
     ("cordefn" . "")
     ("conj" . "")
     ("assert" . "")
     ("heuristic" . "")
     ("rmk" . "")
     ("notation" . "")
     ("claim" . "")
     ("note" . "")
     ("summary" . "")))
 '(LaTeX-math-menu-unicode t)
 '(TeX-electric-math '("$" . "$"))
 '(TeX-electric-sub-and-superscript t)
 '(TeX-fold-macro-spec-list
   '(("[f]"
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
      ("part*" "chapter*" "section*" "subsection*" "subsubsection*" "paragraph*" "subparagraph*" "emph" "textit" "textsl" "textmd" "textrm" "textsf" "texttt" "textbf" "textsc" "textup"))))
 '(TeX-fold-type-list '(macro))
 '(TeX-fold-unfold-around-mark nil)
 '(TeX-master t)
 '(TeX-source-correlate-mode t)
 '(TeX-view-evince-keep-focus t)
 '(TeX-view-program-selection
   '((output-dvi "open")
     (output-pdf "displayline")
     (output-html "open")))
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(auto-save-default nil)
 '(beacon-color "#c82829")
 '(bibtex-completion-bibliography '("~/Dropbox/Workspace/Math/mathreferences.bib"))
 '(bibtex-completion-find-additional-pdfs t)
 '(bibtex-completion-library-path '("~/Dropbox/hbshim/Documents/bibtex-library"))
 '(bibtex-completion-notes-path "~/org/bibtex-library.org")
 '(bibtex-completion-pdf-open-function 'helm-open-file-with-default-tool)
 '(blink-matching-delay 0)
 '(column-number-indicator-zero-based nil)
 '(column-number-mode t)
 '(company-quickhelp-color-background "#b0b0b0")
 '(company-quickhelp-color-foreground "#232333")
 '(compilation-message-face 'default)
 '(completion-styles '(basic partial-completion emacs22 flex))
 '(confirm-kill-emacs 'y-or-n-p)
 '(coq-maths-menu-enable t)
 '(coq-prog-args '("-topfile" "-emacs"))
 '(coq-shortcut-alist nil)
 '(coq-unicode-tokens-enable t)
 '(coq-use-project-file nil)
 '(custom-enabled-themes nil)
 '(custom-safe-themes
   '("bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "73c69e346ec1cb3d1508c2447f6518a6e582851792a8c0e57a22d6b9948071b4" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" default))
 '(default-input-method "rfc1345")
 '(delete-by-moving-to-trash t)
 '(electric-pair-delete-adjacent-pairs nil)
 '(electric-pair-mode t)
 '(fci-rule-color "#d6d6d6")
 '(fill-column 80)
 '(flycheck-color-mode-line-face-to-color 'mode-line-buffer-id)
 '(font-latex-user-keyword-classes
   '(("my-note"
      (("hltn" "{"))
      (:background "#FFEEEE" :inherit nil)
      command)
     ("boldsymbol" nil font-latex-bold-face command)))
 '(helm-M-x-always-save-history t)
 '(helm-apropos-fuzzy-match t)
 '(helm-buffers-fuzzy-matching t)
 '(helm-ff-initial-sort-method 'newest)
 '(helm-mini-default-sources
   '(helm-source-buffers-list helm-source-bookmarks helm-source-recentf helm-source-buffer-not-found))
 '(helm-split-window-inside-p t)
 '(highlight-nonselected-windows t)
 '(indent-tabs-mode nil)
 '(isearch-lazy-count t)
 '(mac-ignore-accessibility t)
 '(mac-mouse-wheel-smooth-scroll t)
 '(mac-pass-command-to-system nil)
 '(mac-pass-control-to-system nil)
 '(mac-system-move-file-to-trash-use-finder t)
 '(magit-diff-use-overlays nil)
 '(mail-from-style nil)
 '(mode-line-percent-position '(-3 "%p"))
 '(mouse-avoidance-banish-position
   '((frame-or-window . frame)
     (side . right)
     (side-pos . -3)
     (top-or-bottom . top)
     (top-or-bottom-pos . 0)))
 '(nrepl-message-colors
   '("#336c6c" "#205070" "#0f2050" "#806080" "#401440" "#6c1f1c" "#6b400c" "#23733c"))
 '(org-directory "~/Dropbox/org")
 '(org-entities-user '(("vdash" "\\vdash" t "" "" "" "⊢")))
 '(org-fontify-whole-heading-line t)
 '(org-format-latex-options
   '(:foreground default :background default :scale 0.8 :html-foreground "Black" :html-background "Transparent" :html-scale 1.0 :matchers
                 ("begin" "$1" "$" "$$" "\\(" "\\[")))
 '(org-preview-latex-default-process 'dvisvgm)
 '(org-startup-truncated nil)
 '(org-use-sub-superscripts '{})
 '(package-selected-packages
   '(yasnippet smartparens undo-tree highlight-symbol helm-gtags helm-descbinds org-ref hackernews rainbow-delimiters helm-osx-app dired-du annotate auctex helm-org-rifle json-mode winum use-package sublimity aggressive-indent dired-launch adaptive-wrap ox-rst magithub htmlize proof-general auto-complete helm-bibtex helm))
 '(pdf-view-midnight-colors '("#232333" . "#c7c7c7"))
 '(preview-auto-cache-preamble nil)
 '(preview-auto-reveal nil)
 '(preview-default-option-list '("displaymath" "floats" "graphics" "textmath" "footnotes"))
 '(preview-default-preamble
   '("\\RequirePackage["
     ("," . preview-default-option-list)
     "]{preview}[2004/11/05]" "\\PreviewMacro*\\parbox" "\\PreviewMacro*\\hltn" "\\PreviewMacro*\\phantom" "\\PreviewMacro*\\multicolumn" "\\PreviewMacro*\\emph" "\\PreviewMacro*\\textbf" "\\renewenvironment{equation*}{\\begin{math}\\displaystyle}{\\end{math}}"))
 '(preview-gs-command "/usr/local/bin/gs")
 '(preview-image-type 'png)
 '(preview-scale-function 1.0)
 '(proof-three-window-enable t)
 '(proof-three-window-mode-policy 'vertical)
 '(proof-tree-arguments '("-debug"))
 '(safe-local-variable-values
   '((eval add-hook 'before-save-hook 'texnippet-star-or-unstar-ref-cmd nil t)
     (eval add-hook 'before-save-hook
           #'(lambda nil
               (let
                   ((reg-beg)
                    (reg-end))
                 (save-excursion
                   (goto-char
                    (point-min))
                   (search-forward "0FB62B06-18A7-4B85-BAD4-4E42FCE30BDE")
                   (forward-line)
                   (beginning-of-line)
                   (setq reg-beg
                         (point))
                   (search-forward "1C267504-4F13-4A0D-B129-284AE884D833")
                   (forward-line -1)
                   (end-of-line)
                   (setq reg-end
                         (point))
                   (sort-regexp-fields nil ".+{\\\\\\(.+\\)}[[{].+$" "\\1" reg-beg reg-end)
                   (time-stamp))))
           nil t)
     (line-spacing . 0.25)
     (eval add-hook 'before-save-hook 'texnippet-time-stamp-modified nil t)
     (eval add-hook 'before-save-hook
           #'(lambda nil
               (save-excursion
                 (beginning-of-buffer)
                 (search-forward "0FB62B06-18A7-4B85-BAD4-4E42FCE30BDE")
                 (next-line)
                 (beginning-of-line)
                 (call-interactively 'set-mark-command)
                 (search-forward "1C267504-4F13-4A0D-B129-284AE884D833")
                 (previous-line)
                 (end-of-line)
                 (sort-regexp-fields nil ".+{\\\\\\(.+\\)}[[{].+$" "\\1"
                                     (region-beginning)
                                     (region-end))
                 (deactivate-mark)
                 (time-stamp)))
           nil t)
     (eval add-hook 'before-save-hook
           (lambda nil
             (save-excursion
               (beginning-of-buffer)
               (search-forward "0FB62B06-18A7-4B85-BAD4-4E42FCE30BDE")
               (next-line)
               (beginning-of-line)
               (call-interactively 'set-mark-command)
               (search-forward "1C267504-4F13-4A0D-B129-284AE884D833")
               (previous-line)
               (end-of-line)
               (sort-regexp-fields nil ".+{\\\\\\(.+\\)}[[{].+$" "\\1"
                                   (region-beginning)
                                   (region-end))
               (deactivate-mark))))
     (eval add-hook 'before-save-hook 'texnippet-time-stamp-modified)
     (eval add-hook 'after-save-hook 'org-html-export-to-html t t)
     (line-spacing . 0.5)
     (eval add-hook 'after-save-hook 'org-rst-export-to-rst t t)
     (eval let
           ((default-directory
              (locate-dominating-file buffer-file-name ".dir-locals.el")))
           (make-local-variable 'coq-prog-name)
           (setq coq-prog-name
                 (expand-file-name "../hoqtop")))))
 '(show-paren-delay 0)
 '(show-paren-mode t)
 '(show-paren-when-point-inside-paren t)
 '(sp-show-pair-delay 0)
 '(tool-bar-mode nil)
 '(trash-directory "~/.Trash")
 '(uniquify-buffer-name-style 'forward nil (uniquify))
 '(utop-command "opam config exec -- utop -emacs" nil nil "https://github.com/ocaml-community/utop")
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   '((20 . "#c82829")
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
     (360 . "#718c00")))
 '(vc-annotate-very-old-color nil)
 '(visible-bell t)
 '(visual-line-fringe-indicators '(left-curly-arrow right-curly-arrow)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :background "mac:textBackgroundColor" :foreground "mac:textColor" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 142 :width normal :foundry "nil" :family "DejaVu Sans Mono")))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                                                                           ;;
;;                   AUTO GENERATED SETTINGS END HERE                        ;;
;;                                                                           ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; ============================================================================
;;                                 Emacs
;; ============================================================================

;; ----------------------------------------------------------------------------
;;                                    load-path
;; ----------------------------------------------------------------------------

;; Tell emacs where is your personal elisp library directory
(add-to-list 'load-path "~/.emacs.d/lisp/")
;; But this does not recursively add `lisp' directory. So next recursively add
;; all subdirectories of ‘default-directory’ to ‘load-path’.
(let ((default-directory  "~/.emacs.d/lisp/"))
  (normal-top-level-add-subdirs-to-load-path))
;; The function `normal-top-level-add-subdirs-to-load-path' does not take
;; argument but it only uses the Emacs variable `default-directory'. So we use
;; `let' to temporarily shade the variable with `lisp' directory.  QUESTION:
;; Does this also add `lisp', i.e., is the first line `(add-to-list 'load-path
;; "~/.emacs.d/lisp/")' redundant?

;; ----------------------------------------------------------------------------
;;                                 show-paren-mode
;; ----------------------------------------------------------------------------

(show-paren-mode 1)
;;(setq show-paren-delay 0)

;; Name of default directory of current buffer.
;; https://stackoverflow.com/questions/6464003/emacs-find-file-default-path
;; `default-directory' is a local variable; global value is nil
;; Automatically becomes permanently buffer-local when set.
;;(setq default-directory "~")

;; Specifies whether to use the system’s trash can. 
;; When non-nil, certain file deletion commands use the function
;; ‘move-file-to-trash’ instead of deleting files outright.
;; This includes interactive calls to ‘delete-file’ and
;; ‘delete-directory’ and the Dired deletion commands.
;; See the section MAC SPECIFICS for the setting for the trash directory
;; (setq delete-by-moving-to-traqsh t)

(setq user-mail-address "hbshim@gmail.com")
(setq user-full-name "Hyungbo Shim")

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
;; (setq trash-directory "~/.Trash")

                               ;; 한글폰트 설정
;; without this, setting `face-font-rescale-alist' does not work
(setq scalable-fonts-allowed t)
;; (set-fontset-font t 'hangul (font-spec :name "KoPubWorldDotum_Pro"))
;; (set-fontset-font t 'han (font-spec :name "KoPubWorldDotum_Pro"))
;; 값 1.3은 영문폰트 width 2개가 한글폰트 하나와 같게 만드는 설정이다.
;; 다른 값들은 오그모드 테이블 간격이 제대로 맞춰지지 않는다.
;; (setq face-font-rescale-alist
;;       '(("KoPubWorldDotum_Pro" . 0.9)))
;; if this still does not work, run `scalable-fonts-allowed',
;; `set-fontset-font', `face-font-rescale-alist' again in order

;; When Korean characters break in dired-mode 한글 ㅎㅏㄴㄱㅡㄹ
(require 'ucs-normalize)
(set-file-name-coding-system 'utf-8-hfs)
(setq default-process-coding-system '(utf-8-hfs . utf-8-hfs))
;;(setq coding-system-for-read 'utf-8)
(set-language-environment "UTF-8")

                                    ;; etc
(setq mouse-highlight 1)

(global-set-key (kbd "C-x m") nil)
(cond (window-system  ; ensure not running in a terminal
       (global-set-key (kbd "C-m") nil)
       (global-set-key (kbd "RET") 'newline)))

;; Emacs originally identifies \C-i with TAB and \C-m with RET. Undo this:
(define-key input-decode-map "\C-i" [C-i])
(define-key input-decode-map "\C-m" [C-m])
;; (define-key input-decode-map "\C-[]" [C-[])
;; After this, refer `C-i' and `C-m', resp., by `<C-i>' and `<C-m>', resp.
;; For eg, `(kbd C-c <C-m>)' instead of just `(kbd C-c C-m)'

;; Always select the help window created by ‘with-help-window’
(setq help-window-select t)

(with-eval-after-load 'woman
(set-face-attribute 'woman-bold nil :inherit 'bold :foreground "DeepSkyBlue4")
(set-face-attribute 'woman-italic nil :inherit 'italic :foreground "VioletRed4"))

(setq Info-fontify-visited-nodes nil)

(setq text-scale-mode-step 1.1)

(setq split-width-threshold 320)

(add-hook 'prog-mode-hook (lambda ()
                            (setq fill-column 78)))

(add-hook 'Info-mode-hook (lambda () (setq line-spacing 0.25)))

(add-hook 'before-save-hook 'time-stamp)

;; When truncating is off, long lines continues to the next line.
(global-set-key (kbd "C-c >") 'toggle-truncate-lines)

(defun delete-whole-line (&optional arg)
  (interactive "p")
  (advice-add 'kill-region :override #'delete-region)
  (kill-whole-line arg)
  (current-kill 1)
  (advice-remove 'kill-region #'delete-region))

;; this makes typing a keyboard deletes selected region
;; https://www.gnu.org/software/emacs/manual/html_node/emacs/Saving-Emacs-Sessions.html
;; see also: https://www.emacswiki.org/emacs/Desktop
(delete-selection-mode 1)

(setq mode-line-format
      '("%e"
        mode-line-front-space
        mode-line-mule-info
        mode-line-client
        mode-line-modified
        mode-line-remote
        ; mode-line-frame-identification
        ;; "   "
        " "
        mode-line-position
        ; (vc-mode vc-mode)
        ;; "  "
        " "
        mode-line-modes
        mode-line-misc-info
        mode-line-end-spaces))

(setq size-indication-mode t)

;; (setq frame-title-format
;;       '(:eval
;;         (if (buffer-file-name)
;;             (concat (abbreviate-file-name (buffer-file-name))
;;                     (format " - Emacs %s" emacs-version))
;;           (if (derived-mode-p 'dired-mode)
;;               (concat default-directory
;;                       (format " - Emacs %s" emacs-version)))))) 

;; https://www.gnu.org/software/auctex/manual/preview-latex.html#Getting-started
;; says that setting desktop-save-mode on preserves preview-latex files from
;; session to session but it doesn't work as expected
;;(desktop-save-mode 1)

(server-start)

(global-set-key (kbd "C-e") 'end-of-visual-line)
(global-set-key (kbd "C-a") 'beginning-of-visual-line)

(defun my-buffer-face-mode-variable ()
  "Set font to a variable width (proportional) fonts in current buffer.
From https://www.emacswiki.org/emacs/FacesPerBuffer"
  (interactive)                                      ;; :width semi-condensed
  (setq buffer-face-mode-face '(:family "Times" :height 180 :width medium))
  (buffer-face-mode))

(setq make-backup-files nil)
(setq auto-save-default nil)

;; Initialize environment (shell variables, eg. $PATH, $MANPATH)
;; from the user’s shell.
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

;; show messages when omitting files
(setq dired-omit-verbose nil)

;; revert any buffer associated with a file when the file changes on
;; disk. ("revert" means to update a buffer whenever the file changes)
(global-auto-revert-mode 1)
;; do it silently
(setq auto-revert-verbose nil)

;; disable VC entirely (see info:emacs#Version Control)
(setq vc-handled-backends nil)

(setq vc-follow-symlinks t)

;; save abbrevs when files are saved
(setq save-abbrevs 'silently)

(defvar my-bibliography '("/Users/hbshim/Dropbox/Workspace/Math/mathreferences.bib") "List of my bibliography \".bib\" files.")

(with-eval-after-load 'reftex
  ;; reftex is located in "..../emacs/27.1/lisp/textmodes" so no need to
  ;; package-installed-p
  ;; make sure to put this before `bibtex-completion-library-path'
  (setq reftex-default-bibliography my-bibliography)
  (add-hook 'reftex-mode-hook
            (lambda ()
              (define-key reftex-mode-map "\C-c&" nil)
              (define-key reftex-mode-map "\C-c(" nil)
              (define-key reftex-mode-map "\C-c)" nil))))

;; C-x 4 0 runs the command kill-buffer-and-window
;; other-window
(global-set-key (kbd "C-x 4 1")
                (lambda ()
                  (interactive)
                  (other-window 1)
                  (kill-buffer-and-window)))

(defun kill-buffer-and-frame ()
  "Kill the current buffer and delete the selected window."
  (interactive)
  (let ((frame-to-delete (selected-frame))
	(buffer-to-kill (current-buffer))
	(delete-frame-hook (lambda () (ignore-errors (delete-frame)))))
    (unwind-protect
	(progn
	  (add-hook 'kill-buffer-hook delete-frame-hook t t)
	  (if (kill-buffer (current-buffer))
	      ;; If `delete-window' failed before, we rerun it to regenerate
	      ;; the error so it can be seen in the echo area.
	      (when (eq (selected-frame) frame-to-delete)
		(delete-frame))))
      ;; If the buffer is not dead for some reason (probably because
      ;; of a `quit' signal), remove the hook again.
      (ignore-errors
       (with-current-buffer buffer-to-kill
	 (remove-hook 'kill-buffer-hook delete-frame-hook t))))))

(global-set-key (kbd "C-x 9 0") 'kill-buffer-and-frame)

(global-set-key (kbd "C-x 9 1")
                (lambda ()
                  (interactive)
                  (other-frame 1)
                  (kill-buffer-and-frame)))

;; ============================================================================
;;                                  helm-mode
;; ============================================================================

;; https://github.com/emacs-helm/helm
(when (package-installed-p 'helm)
  (with-eval-after-load 'helm-files
    ;; it was recommended set the following var to t but if do so we can't copy
    ;; or rename directories!
    (setq helm-ff-auto-update-initial-value nil)
    ;; the fillowing two slows down emacs so kill them
    (customize-set-variable helm-ff-keep-cached-candidates nil)
    (helm-ff-cache-mode 0)
    ;; let helm-man-woman use woman
    (setq helm-man-or-woman-function 'woman)

    (add-hook 'helm-mode-hook
              (lambda ()
                (define-key helm-read-file-map
                  (kbd "C-x r m") 'helm-ff-bookmark-set)
                (define-key helm-read-file-map
                  (kbd "C-x r b") 'helm-find-files-switch-to-bookmark))))
  (with-eval-after-load 'helm-buffer
    (setq helm-mini-default-sources
          '(helm-source-buffers-list
            helm-source-bookmarks
            helm-source-recentf
            helm-source-buffer-not-found)))
  (add-hook 'helm-mode-hook
            (lambda ()
              (setq helm-truncate-lines t)
              (add-to-list 'helm-mini-default-sources 'helm-source-bookmarks t)
              (global-set-key (kbd "M-x") 'helm-M-x)
              (global-set-key (kbd "C-x c m") 'helm-man-woman)
              (global-set-key (kbd "C-x r l")
                              (lambda ()
                                (interactive)
                                (let ((helm-full-frame t))
                                  (helm-filtered-bookmarks))))
              (global-set-key (kbd "C-x C-f") 'helm-find-files)
              (global-set-key (kbd "C-x C-b") 'helm-buffers-list)
              (global-set-key (kbd "C-x <C-m>") 'helm-mini)))
  ;; (global-set-key (kbd "C-x c C-x C-m") 'helm-mini)))
  ;; in the following, do not `(setq helm-mode 1)'
  (helm-mode 1))

(when (package-installed-p 'helm-bibtex)
  (when (package-installed-p 'helm)
    (require 'helm-bibtex)
  (with-eval-after-load 'helm-bibtex
    (global-set-key (kbd "C-c C-S-b") 'helm-bibtex)
    (setq
     bibtex-completion-bibliography my-bibliography
     bibtex-completion-library-path "/Users/hbshim/Dropbox/hbshim/Documents/bibtex-library"
     bibtex-completion-notes-path   "/Users/hbshim/Dropbox/org/bibtex-library.org")
    ;; helm-bibtex The default fields used for searching are: author, title,
    ;; year, BibTeX key, entry type (article, inproceedings, ...). The
    ;; variable bibtex-completion-addition-search-fields can be used to extend
    ;; this list.
    bibtex-completion-additional-search-fields '(keywords))))

(when (package-installed-p 'helm-descbinds)
  ;; https://github.com/emacs-helm/helm-descbinds
  (when (package-installed-p 'helm)
    (add-hook 'helm-mode-hook
              (lambda ()
                (require 'helm-descbinds)
                (helm-descbinds-mode)
                (global-set-key (kbd "C-x c C-h b") 'helm-descbinds)))))

(when (package-installed-p 'helm-osx-app)
  ;; https://github.com/xuchunyang/helm-osx-app
  (when (package-installed-p 'helm)
    (with-eval-after-load 'helm-osx-app
      (add-to-list 'helm-osx-app-app-folders "/System/Applications"))
    (add-hook 'helm-mode-hook
              (lambda ()
                (require 'helm-osx-app)
                (global-set-key (kbd "s-p") 'helm-osx-app)))))

(when (package-installed-p 'helm-org-rifle)
  ;; https://github.com/alphapapa/org-rifle
  (when (package-installed-p 'helm)
    (add-hook 'helm-mode-hook
              (lambda ()
                (require 'helm-org-rifle)
                (global-set-key (kbd "C-h /") 'helm-org-rifle-org-directory)))))

(when (package-installed-p 'helm-gtags)
  (when (package-installed-p 'helm)
    (add-hook 'c-mode-hook 'helm-gtags-mode)
    (add-hook 'c++-mode-hook 'helm-gtags-mode)
    (add-hook 'asm-mode-hook 'helm-gtags-mode)
    (eval-after-load "helm-gtags"
      '(progn
         (define-key helm-gtags-mode-map (kbd "M-t") 'helm-gtags-find-tag)
         (define-key helm-gtags-mode-map (kbd "M-r") 'helm-gtags-find-rtag)
         (define-key helm-gtags-mode-map (kbd "M-s") 'helm-gtags-find-symbol)
         (define-key helm-gtags-mode-map (kbd "M-g M-p") 'helm-gtags-parse-file)
         (define-key helm-gtags-mode-map (kbd "C-c [") 'helm-gtags-previous-history)
         (define-key helm-gtags-mode-map (kbd "C-c ]") 'helm-gtags-next-history)
         (define-key helm-gtags-mode-map (kbd "M-,") 'helm-gtags-pop-stack)))))

;; ============================================================================
;;                                 AUCTeX
;; ============================================================================

(load "auctex.el" nil t t)
(load "preview.el" nil t t)

;; Automatically save style information when saving the buffer.
;;(setq TeX-auto-save t)

;; Parse file after loading it if no style hook is found for it.
;;(setq TeX-parse-self t)

;; AUCTeX will assume the file is a master file itself.
;;(setq-default TeX-master t)

;; `tex-wizard.el' checks if `turn-on-reftex' is included in `LaTeX-mode-hook'
;; or `latex-mode-hook'. It's interesting that `tex-wizard.el' is loaded
;; automatically by `auctex-autoloads.el' but `LaTeX-mode-hook' is defined in
;; `latex.el' at much later stage.

(when (package-installed-p 'auctex)
  (with-eval-after-load 'tex
    (add-hook 'TeX-update-style-hook
              (lambda ()
                (TeX-run-style-hooks "mysymb")
                (define-key TeX-mode-map (kbd "C-c <C-m>") 'TeX-insert-macro))))
  (with-eval-after-load 'tex-site
    (when (string-equal system-type "darwin")
      (add-hook 'TeX-mode-hook 
                ;; skim forward/backward search
                ;; https://sourceforge.net/p/skim-app/wiki/TeX_and_PDF_Synchronization/#choosing-an-editor-command-for-backward-search
                (lambda ()
                  (add-to-list 'TeX-output-view-style '("^pdf$" "." "/Applications/Skim.app/Contents/SharedSupport/displayline %n %o %b"))))))
  (with-eval-after-load 'tex-buf
    (defun my-TeX-command-run-all ()
      (TeX-command-sequence '("LaTeX" "BibTeX" "LaTeX" "LaTeX")))
    (defun my-TeX-command-run-LaTeX ()
      (TeX-command-sequence '("LaTeX")))
    (advice-add 'TeX-command-master :before #'save-buffer)
    (advice-add 'TeX-command-run-all :before #'save-buffer)
    (advice-add 'my-TeX-command-run-all :before #'save-buffer)
    (advice-add 'my-TeX-command-run-LaTeX :before #'save-buffer)
    (add-hook 'TeX-update-style-hook
              (lambda ()
                (define-key
                  TeX-mode-map (kbd "C-c C-S-a") '(my-TeX-command-run-all))
                (define-key
                  TeX-mode-map (kbd "C-S-t") '(my-TeX-command-run-LaTeX)))))
  (with-eval-after-load "tex-fold"
    (defun TeX-fold-overfull-p (ov-start ov-end display-string)
      ;; This fixes TeX-fold-buffer's problem with arbitrary insertion
      ;; of visual newlines
      ;; https://emacs.stackexchange.com/questions/42147/tex-folding-creates-visual-newlines-auctex
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
  (with-eval-after-load 'preview
    (when (string-equal system-type "darwin")
      (setq preview-image-type 'image-io))
    (setq preview-preserve-indentation nil)
    (setq preview-default-option-list '("displaymath" "floats" "graphics" "textmath" "footnotes" "tightpage"))
    (advice-add 'preview-at-point :before #'save-buffer)
    (advice-add 'preview-document :before #'save-buffer)
    (advice-add 'preview-region :before #'save-buffer))
  (with-eval-after-load 'latex
    (require 'reftex)
    (require 'texnippet)
    (add-hook 'LaTeX-math-mode-hook
              (define-key LaTeX-math-mode-map "`i" 'LaTeX-math-iota))
    (add-hook 'LaTeX-mode-hook 'turn-on-reftex)
    (setq LaTeX-section-hook
          ;; List of hooks to run when a new section is inserted.
          '(LaTeX-section-heading
            LaTeX-section-title
            LaTeX-section-section
            LaTeX-section-label))
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
    (add-hook 'LaTeX-mode-hook (lambda () (setq line-spacing 0.25)))))

;;                                 FRAME

;; (setq default-frame-alist '((width . 80) (height . (text-pixels . 1027)) (left . 0) (top . 0)))
  (setq default-frame-alist '((width . 80) (height . 55) (left . 0) (top . 0)))
;; (setq default-frame-alist '((width . 80) (height . 64) (left . 0) (top . 0)))
;; doing the following does't work but I don't see why.
;;(setq default-frame-alist '((width . 80) (height . (text-pixels . (- (nth 4 (assoc 'workarea (car (display-monitor-attributes-list)))) 21))) (left . 0) (top . 0))) ;;
;; use the following function to get a number of pixels for the height
;; (nth 4 (assoc 'workarea (car (display-monitor-attributes-list))))
;; minus 21 to correct inaccurary because of no title bar setting text-pixels
;; (* 80 (frame-char-width)) write-region-post-annotation-function

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

(global-set-key (kbd "s-C") 'delete-frame)

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

(defun info-other-frame (&optional file-or-node buffer)
  "Like `info' but show the Info buffer in another window."
  (interactive (list
		(if (and current-prefix-arg (not (numberp current-prefix-arg)))
		    (read-file-name "Info file name: " nil nil t))
		(if (numberp current-prefix-arg)
		    (format "*info*<%s>" current-prefix-arg))))
  (info-setup file-or-node
	      (switch-to-buffer-other-frame (or buffer "*info*"))))

(global-set-key (kbd "C-h 5 i")
                (lambda ()
                  (interactive)
                  (add-hook 'after-make-frame-functions
                            'select-frame-set-input-focus)
                  (make-frame)
                  (remove-hook 'after-make-frame-functions
                               'select-frame-set-input-focus)
                  (info)
                  (toggle-easy-reading)))

;;                               SCROLLING

(global-set-key (kbd "C-x <") 'scroll-right)
(global-set-key (kbd "C-x >") 'scroll-left)

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
  (set-frame-height (selected-frame)
                    (cdr (assoc 'height default-frame-alist)))
  (set-frame-width  (selected-frame)
                    (cdr (assoc 'width  default-frame-alist))))

(defun resize-frame-single-column ()
  "Adjust frame width to single column (80x_)."
  (interactive)
  (set-frame-width  (selected-frame) 80))

(defun resize-frame-double-column ()
  "Adjust frame width to double column (160x_)."
  (interactive)
  (set-frame-width  (selected-frame) 160))

(defun resize-frame-full-height ()
  "Adjust frame height to full available height pixelwisely."
  (interactive)
  (let ((full-height-in-pixel (nth 4 (assoc 'workarea (car (display-monitor-attributes-list))))))
    (set-frame-height (selected-frame) full-height-in-pixel nil t)))

(global-set-key (kbd "M-=") 'enlarge-window)
(global-set-key (kbd "M--") 'shrink-window)
(global-set-key (kbd "C-=") 'enlarge-frame)
(global-set-key (kbd "C--") 'shrink-frame)
(global-set-key (kbd "C-+") 'wider-frame)
(global-set-key (kbd "C-_") 'narrower-frame)
(global-set-key (kbd "C-M-S-<SPC>") 'toggle-frame-maximized)
(global-set-key (kbd "C-M-S-<down>") 'resize-frame-full-height)
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

;;               SELECT-WINDOW WHEN A NEW WINDOW POPPED UP

;;(setq-defulat 'split-window-preferred-function 'split-window-sensibly)
(setq split-window-preferred-function
      '(lambda (&optional window)
         (let ((new-window (split-window-sensibly window)))
                    (if (not (active-minibuffer-window))
                        (select-window new-window)))))
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


;; ============================================================================
;; org mode, orgmode
;; ============================================================================

;; automatically enable flyspell in org mode
;; (add-hook 'org-mode-hook 'flyspell-mode)

;; prevent line breaking in the middle of a word in org mode
;; (add-hook 'org-mode-hook 'toggle-word-wrap)

;; adaptive-wrap preserving indents
;; (add-hook 'org-mode-hook 'adaptive-wrap-prefix-mode)

;; (add-hook 'org-mode-hook 'abbrev-mode)

(when (package-installed-p 'adaptive-wrap)
  (add-hook 'org-mode-hook 'adaptive-wrap-prefix-mode))

(when (package-installed-p 'ox-rst)
  (add-hook 'org-mode-hook (lambda () (require 'ox-rst))))

(add-hook 'org-mode-hook
          (lambda ()
            (flyspell-mode)
            (toggle-word-wrap)
            (abbrev-mode)
            (define-key org-mode-map "\C-c[" nil)
            (define-key org-mode-map "\C-c]" nil)))

(setq org-agenda-restore-windows-after-quit t)

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
;; (let ((date (diary-make-date 12 7 2020))) (insert (diary-sunrise-sunset)))
  ;; Sunrise 7:12am (EST), sunset 4:34pm (EST) at North Wales, PA (9:21 hrs daylight)
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
        start end duration)
    (with-temp-buffer
      (insert dss)
      
      (goto-char (point-max))
      (search-backward "(")
      (setq duration (buffer-substring (match-beginning 0) (point-max)))
      
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
      (concat (buffer-substring start end) " " duration))))

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

(setq dired-listing-switches "-Alth")

;; ============================================================================
;;
;; ============================================================================

(eval-after-load "org" '(define-key org-mode-map (kbd "C-s-<tab>") 'org-global-cycle))

(eval-after-load "org" '(define-key org-mode-map (kbd "C-x C-s-l") 'org-store-link))

;; ============================================================================
;; Auto-refresh dired on file change
;; ============================================================================

(add-hook 'dired-mode-hook 'auto-revert-mode)

;; ============================================================================
;;
;; ============================================================================

;(setq dired-deletion-confirmer '(lambda (x) t))

;; (add-hook 'dired-load-hook
;;           (lambda ()
;;             (load "dired-x")
;;             ;; Set dired-x global variables here.  For example:
;;             ;; (setq dired-guess-shell-gnutar "gtar")
;;             ;; (setq dired-x-hands-off-my-keys nil)
;;             (push '"_Store" dired-omit-extensions)
;;             (push '".ilg" dired-omit-extensions)
;;             (push '".ind" dired-omit-extensions)
;;             (push '".out" dired-omit-extensions)
;;             (push '".gz" dired-omit-extensions)
;;             (push '".prv" dired-omit-extensions)
;;             (push '".rip" dired-omit-extensions)
;;             (push '".ini" dired-omit-extensions)
;;             (setq dired-omit-files
;;                   (concat dired-omit-files "\\|^_region_\\.*\\|^prv_*"))
;;             ))
;; (add-hook 'dired-mode-hook
;;           (lambda ()
;;             ;; Set dired-x buffer-local variables here.  For example:
;;             (dired-omit-mode 1)
;;             ))
(setq inhibit-startup-screen nil)
;; Dired Clean Confirm Killing Deleted Buffers 
;; Dired Find Subdir

;; The variable `dired-hide-details-mode' 
;; automatically becomes buffer-local when set.
;; Use the command ‘dired-hide-details-mode’ to change this variable.
;; (setq dired-hide-details-mode t)
(add-hook 'dired-mode-hook '(lambda () (dired-hide-details-mode 1)))

(setq dired-hide-details-hide-information-lines t)
;; Dired Recursive Copies
;; Dired Recursive Deletes
;; (setq helm-dired-history-max 5)

;;(define-key helm-find-files-map (kbd "C-^") 'helm-find-files-up-one-level)
;;(define-key helm-find-files-map (kbd "C-SPC") 'helm-execute-persistent-action)

;;mouse-autoselect-window

;; ============================================================================
;; yasnippet
;; ============================================================================

(when (package-installed-p 'yasnippet)
  (with-eval-after-load 'yasnippet
    (setq yas-triggers-in-field t)
    ;; supress warning when yasnippet changes buffer
    (require 'warnings)
    (add-to-list 'warning-suppress-types '(yasnippet backquote-change)))
  (require 'yasnippet)
  (yas-global-mode 1))

(defun toggle-line-spacing-nil-half ()
  "Toggle line spacing nil <-> 0.5"
  (interactive)
  (if line-spacing
      (setq line-spacing nil)
      (setq line-spacing 0.5)))
 ;(redraw-frame (selected-frame))

(defun toggle-easy-reading ()
  (interactive)
  (if line-spacing
      (progn (text-scale-adjust 0)
             (toggle-line-spacing-nil-half)
             (set-frame-width  (selected-frame) 80))
    (progn (text-scale-adjust 1)
           (toggle-line-spacing-nil-half)
           (set-frame-width  (selected-frame) 100))))

(put 'dired-find-alternate-file 'disabled nil)

;; ============================================================================
;; Reuse the current dired buffer to visit a directory
;; ============================================================================

;; (require 'dired-single)

;; ============================================================================
;; Use dired as a launcher
;; ============================================================================

;; (require 'dired-launch)

;; ============================================================================
;; disable vertical scroll bar
;; ============================================================================

(setq scroll-bar-mode nil)

;; ============================================================================
;; unmount /dev/disk4
;; ============================================================================

(defun unmount-disk4 ()
  "macOS: unmount /dev/disk4."
  (interactive)
  (shell-command "diskutil unmountdisk force /dev/disk4"))

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

;; (autoload 'View-scroll-half-page-forward "view")  ;; go down (scroll up)
;; (autoload 'View-scroll-half-page-backward "view") ;; go up (scroll down)
(global-set-key (kbd "C-S-v") 'View-scroll-half-page-forward)
(global-set-key (kbd "M-S-v") 'View-scroll-half-page-backward)

;; scrolling a window when the point moves out
(setq scroll-step 1)

;; remove all source control
(setq vc-handled-backends ())

;; ============================================================================
;; sublimity - smooth scrolling
;; ============================================================================

;; (require 'sublimity)
(when (package-installed-p 'sublimity)
  ;; (require 'sublimity-map)
  (require 'sublimity-scroll))

;; ============================================================================
;;                               YES OR NO
;; ============================================================================

;; always use `y-or-n-p' insead of `yes-or-no-p'
;; see https://www.emacswiki.org/emacs/YesOrNoP for more options: for example,
;; we can set to have it automatically yes, responding without typing, let
;; uses choose with up and down moves, etc.
(defalias 'yes-or-no-p 'y-or-n-p)


;; ============================================================================
;;                      KEEP SELECTION AFTER COPYING
;; ============================================================================

;; (byte-compile
;;  `(defun kill-ring-save-keep-selection (&rest args)
;;     "Just like `kill-ring-save' with arguments ARGS but keep selection."
;;     ,(interactive-form 'kill-ring-save)
;;     (let (deactivate-mark)
;;       (apply 'kill-ring-save args))))

;; (global-set-key (kbd "M-W") #'kill-ring-save-keep-selection)

;; Or we can do the following, as an example of "advising" functions
;; (define-advice kill-ring-save (:around (old-fun &rest args) highlight)
;;   "Save the text selection and keep the selection highlight."
;;   (let (deactivate-mark)
;;     (apply old-fun args)))
;; while the following undos the above:
;; (advice-remove 'kill-ring-save 'kill-ring-save@highlight)

;; ============================================================================
;; dired
;; ============================================================================

;; get the size of a directory/file in dired
(defun dired-get-size ()
  (interactive)
  (let ((files (dired-get-marked-files)))
    (with-temp-buffer
      (apply 'call-process "/usr/bin/du" nil t nil "-sch" files)
      (message "Size of all marked files: %s"
               (progn 
                 (re-search-backward "\\(^[0-9.,]+[A-Za-z]+\\).*total$")
                 (match-string 1))))))

;; (define-key dired-mode-map (kbd "?") 'dired-get-size)

(when (package-installed-p 'winum)
  ;; https://github.com/deb0ch/emacs-winum numbering windows on the mode-bar
  (require 'winum)
  (winum-mode))

(use-package abbrev-mode
  ;; https://emacs.stackexchange.com/questions/45462/use-a-single-abbrev-table-for-multiple-modes
  ;; When the abbrev-mode is loaded, it checks to see if it's called from a
  ;; text mode. If so, then it sets the local-abbrev-table to
  ;; latex-mode-abbrev-table
  :init
  (setq-default abbrev-mode t)
  ;; a hook funtion that sets the abbrev-table to org-mode-abbrev-table
  ;; whenever the major mode is a text mode
  (defun specify-abbrev-table-for-text-modes ()
    (if (derived-mode-p 'text-mode)
        (setq local-abbrev-table latex-mode-abbrev-table)))
  :commands abbrev-mode
  :hook
  (abbrev-mode . specify-abbrev-table-for-text-modes)
  :config
  ;; (setq default-abbrev-mode t)
  (setq abbrev-file-name "~/.emacs.d/abbrev_defs")
  (read-abbrev-file "~/.emacs.d/abbrev_defs")
  (setq save-abbrevs 'silently))

(when (package-installed-p 'org-ref)
  (with-eval-after-load 'org-ref
    ;; https://github.com/jkitchin/org-ref
    ;; see org-ref for use of these variables
    (setq org-ref-default-bibliography (list bibtex-completion-bibliography)
          org-ref-pdf-directory bibtex-completion-library-path
          org-ref-bibliography-notes bibtex-completion-notes-path)))

(when (package-installed-p 'highlight-symbol)
  (add-hook 'prog-mode-hook 'highlight-symbol-mode)
  (with-eval-after-load 'highlight-symbol
    (global-set-key [(control f3)] 'highlight-symbol)
    (global-set-key [f3] 'highlight-symbol-next)
    (global-set-key [(shift f3)] 'highlight-symbol-prev)
    (global-set-key [(meta f3)] 'highlight-symbol-query-replace)))

(when (package-installed-p 'undo-tree)
  (require 'undo-tree)
  (global-undo-tree-mode))

(when (package-installed-p 'smartparens)
  ;; https://github.com/Fuco1/smartparens
  (require 'smartparens-config))

;; ===========================================================================
;; history - things that tried before
;; ===========================================================================

;; the following part breaks helm
;; close the window after a buffer is killed
;;(add-hook 'kill-buffer-hook 'delete-window)
;; (remove-hook 'kill-buffer-hook 'delete-window)

;; rainbow delimiter               slowed down emacs
;; helm-dired-history              broked down after helm update
;; helm-fuzzier                    do I need this with current helm?
;; helm-flx                        do I need this with current helm?

;; ==========================================================================
;; Auto-generated to enable disabled features - ALWAYS THE LAST
;; ==========================================================================

(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'scroll-left 'disabled nil)
(put 'narrow-to-region 'disabled nil)

