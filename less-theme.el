;;; less-theme.el --- minimalistic theme ---  -*- lexical-binding: t; -*-
;; 
;; adapted
;; <https://jblevins.org/projects/emacs-color-themes/>
;; Revision 3
;; 
;; Copyright (C) 2008-2010, 2016 Jason R. Blevins <jrblevin@sdf.org>
;;
;; Permission is hereby granted, free of charge, to any person obtaining a copy
;; of this software and associated documentation files (the "Software"), to deal
;; in the Software without restriction, including without limitation the rights
;; to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
;; copies of the Software, and to permit persons to whom the Software is
;; furnished to do so, subject to the following conditions:
;;
;; The above copyright notice and this permission notice shall be included in
;; all copies or substantial portions of the Software.
;;
;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
;; IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
;; FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
;; AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
;; LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
;; OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
;; THE SOFTWARE.
;;
;;; Commentary:
;;; 
;;; Code:
(deftheme less
  "A minimalistic and mostly monochromatic color scheme inspired
by `color-theme-late-night' and the Less is More theme for vim.")

(let ((fg+1 "#000")
      (fg   "#222")
      (fg-1 "#444")
      (fg-2 "#666")
      (fg-3 "#888")
      (fg-4 "#AAA")
      (fg-5 "#CCC")
      (bg-highlight+1 "#E9E9E9")
      (bg-highlight   "#F0F0F0")
      (bg "#F9F9FA")
      (cursor "red")
      (S "lime green")
      (W "orange")
      (E "red"))

  (custom-theme-set-faces
   'less
   ;; Standard font lock faces
   `(default ((t (:background ,bg :foreground ,fg))))
   `(bold ((t (:bold t))))
   `(italic ((t (:bold nil :foreground ,fg-1 :background ,bg-highlight))))
   `(underline ((t (:bold t))))
   `(cursor ((t (:background ,cursor))))
   `(link ((t (:foreground ,fg+1 :underline nil :background ,bg-highlight))))
   `(warning ((t (:foreground ,W))))
   `(success ((t (:foreground ,S))))
   `(font-lock-comment-face ((t (:italic nil :bold nil :foreground ,fg-2))))
   `(font-lock-comment-delimiter-face ((t (:bold nil :foreground ,fg-2))))
   `(font-lock-function-name-face ((t (:foreground ,fg))))
   `(font-lock-variable-name-face ((t (:foreground ,fg))))
   `(font-lock-constant-face ((t (:foreground ,fg))))
   `(font-lock-doc-string-face ((t (:foreground ,fg))))
   `(font-lock-doc-face ((t (:foreground ,fg))))
   `(font-lock-preprocessor-face ((t (:foreground ,fg))))
   `(font-lock-reference-face ((t (:foreground ,fg))))
   `(font-lock-string-face ((t (:foreground ,fg))))
   `(font-lock-type-face ((t (:bold t :foreground ,fg+1))))
   `(font-lock-builtin-face ((t (:bold t :foreground ,fg+1))))
   `(font-lock-keyword-face ((t (:bold t :foreground ,fg+1))))
   `(font-lock-warning-face ((t (:bold t :foreground ,E))))

 ;;; Emacs Interface
   `(fringe ((t (:background ,bg :foreground ,bg-highlight))))
   `(header-line ((t (:background ,bg-highlight+1 :foreground ,fg+1))))
   `(menu ((t (:background ,bg-highlight+1 :foreground ,fg))))
   `(minibuffer-prompt ((t (:foreground ,fg+1))))
   `(region ((t (:background ,bg-highlight+1 :foreground ,fg+1))))
   `(secondary-selection ((t (:background ,bg-highlight :foreground ,fg))))
   `(tool-bar ((t (:background ,bg-highlight+1 :foreground ,fg-3))))
   `(tooltip ((t (:background ,bg-highlight+1 :foreground ,fg-3))))
   `(widget-button-face ((t (:bold t :foreground ,fg-1))))
   `(widget-field-face ((t (:bold t :foreground ,fg-3))))
   `(match ((t (:background ,fg-5))))

;;; Buttons
   `(button ((t (:bold t))))
   `(custom-button-face ((t (:bold t :foreground ,fg))))

 ;;; Modeline
   `(mode-line ((t (:background ,bg :foreground ,fg-2 :underline nil :overline ,fg :bold nil))))
   `(mode-line-inactive ((t (:background ,bg :foreground ,bg-highlight+1 :underline ,bg-highlight+1))))
   `(mode-line-emphasis ((t :bold nil)))
   `(mode-line-buffer-id ((t :bold nil :foreground ,fg-1)))
   `(mode-line-highlight ((t :box nil :underline t)))

 ;;; Outline
   `(outline-1 ((t (:foreground ,fg+1))))
   `(outline-2 ((t (:inherit outline-1))))
   `(outline-3 ((t (:inherit outline-2))))
   `(outline-4 ((t (:inherit outline-3))))
   `(outline-5 ((t (:inherit outline-4))))

 ;;; Search
   `(isearch ((t (:foreground ,bg :background ,E))))
   `(isearch-lazy-highlight-face ((t (:foreground ,E))))

 ;;; Parenthesis matching
   `(show-paren-match ((t (:foreground ,bg :background ,fg+1 :weight bold))))
   `(show-paren-mismatch ((t (:foreground ,fg+1 :background ,E))))

 ;;; Line highlighting
   `(highlight ((t (:background ,bg-highlight :foreground nil))))
   `(highlight-current-line-face ((t (:background ,bg-highlight :foreground nil))))
   `(hl-line ((t (:background ,bg-highlight :foreground nil))))


 ;;; Calendar
   `(holiday-face ((t (:background ,bg-highlight :foreground ,fg))))

 ;;; info, help and apropos faces
   `(info-header-node ((t (:foreground ,fg-2))))
   `(info-header-xref ((t (:foreground ,fg-2))))
   `(info-menu-5 ((t (:underline t))))
   `(info-menu-header ((t (:bold t :foreground ,fg-2))))
   `(info-node ((t (:bold t :foreground ,fg-2))))
   `(info-xref ((t (:bold t :foreground ,fg-2))))

 ;;; Pandoc
   `(pandoc-citation-key-face ((t (:inherit org-ref-cite-face :underline nil)))) ; by defaut, inherits font-lock-function-name-face

 ;;; Markdown & YAML Fontmatter
   `(markdown-markup-face ((t (:foreground ,fg-5))))
   `(markdown-metadata-key-face ((t (:foreground ,fg-5))))
   `(markdown-metadata-value-face ((t (:foreground ,fg-5))))
   `(markdown-code-face ((t (:background ,bg-highlight))))

 ;;; Org
   `(org-todo ((t (:inherit hl-todo :bold nil))))
   `(org-done ((t (:foreground ,fg-5))))
   `(org-headline-done ((t (:foreground ,fg-5))))
   `(org-drawer ((t (:foreground ,bg-highlight+1))))
   `(org-link ((t (:inherit link))))
   `(org-date ((t (:foreground ,fg-4 :underline nil))))
   `(org-special-keyword ((t (:foreground ,bg-highlight+1 ))))
   `(org-meta-line ((t (:foreground ,fg-5))))
   `(org-block ((t (:foreground ,fg-5))))

 ;;; ivy
   `(ivy-current-match ((t (:background ,bg-highlight+1 :foreground nil))))

 ;;; Swiper
   `(swiper-line-face ((t (:background ,bg-highlight+1 :foreground nil))))

;;; Ripgrep
   `(ripgrep-hit-face ((t (:foreground ,fg :background ,bg-highlight ))))

 ;;; end of face definitions
   ))

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'less)

;;; less-theme.el ends here
