;;; doom.d/less-theme.el --- minimalistic theme ---  -*- lexical-binding: t; -*-

;; less-theme.el --- A minimalistic custom theme for Emacs
;; Revision 3
;;
;; adapted
;; <https://jblevins.org/projects/emacs-color-themes/>
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

(set-default 'cursor-type '(hbar . 3))

(custom-theme-set-faces
 'less

 ;; Standard font lock faces
 '(default ((t (:background "#F9F9FA" :foreground "#111"))))
 '(bold ((t (:bold t))))
 '(italic ((t (:bold t))))
 '(underline ((t (:bold t))))
 '(variable-pitch ((t (:height 100))))
 '(cursor ((t (:background "red"))))
 '(link ((t (:foreground "black" :underline t))))
 '(warning ((t (:foreground "orange"))))
 '(success ((t (:foreground "lime green"))))
 '(font-lock-comment-face ((t (:bold t :foreground "#444"))))
 '(font-lock-comment-delimiter-face ((t (:bold t :foreground "#444"))))
 '(font-lock-function-name-face ((t (:foreground "#222"))))
 '(font-lock-variable-name-face ((t (:foreground "#222"))))
 '(font-lock-constant-face ((t (:foreground "#222"))))
 '(font-lock-doc-string-face ((t (:foreground "#222"))))
 '(font-lock-doc-face ((t (:foreground "#222"))))
 '(font-lock-preprocessor-face ((t (:foreground "#222"))))
 '(font-lock-reference-face ((t (:foreground "#222"))))
 '(font-lock-string-face ((t (:foreground "#222"))))
 '(font-lock-type-face ((t (:bold t :foreground "#000"))))
 '(font-lock-builtin-face ((t (:bold t :foreground "#000"))))
 '(font-lock-keyword-face ((t (:bold t :foreground "#000"))))
 '(font-lock-warning-face ((t (:bold t :foreground "red"))))

 ;;; Emacs Interface
 '(fringe ((t (:background "F9F9FA" :foreground "#F1F1F1")))) ; making it more suble
 '(header-line ((t (:background "#EEE" :foreground "#000"))))
 '(menu ((t (:background "#EEE" :foreground "#222"))))
 '(minibuffer-prompt ((t (:foreground "#000"))))
 '(mode-line ((t (:background "F9F9FA" :foreground "gray70" :underline nil :overline "black"))))
 '(mode-line-inactive ((t (:background "#F9F9FA" :foreground "#EEE" :underline "#EEE"))))
 '(doom-modeline-info ((t (:foreground "lime green"))))
 '(region ((t (:background "light gray" :foreground "black"))))
 '(secondary-selection ((t (:background "#EFFFFF" :foreground "#EEE"))))
 '(tool-bar ((t (:background "#F1F1F1" :foreground "#777"))))
 '(tooltip ((t (:background "#F1F1F1" :foreground "#777"))))
 '(widget-button-face ((t (:bold t :foreground "#888"))))
 '(widget-field-face ((t (:bold t :foreground "#999"))))
 ;'(vertical-line ((t (:background "black" :foreground "#111")))) ; comment this, so that the fringe is not centered.
 ; not sure why this works this way


 ;;; Outline
 '(outline-1 ((t (:foreground "black"))))
 '(outline-2 ((t (:inherit outline-1))))
 '(outline-3 ((t (:inherit outline-2))))
 '(outline-4 ((t (:inherit outline-3))))
 '(outline-5 ((t (:inherit outline-4))))

 ;;; Search
 '(isearch ((t (:foreground "F9F9FA" :background "red"))))
 '(isearch-lazy-highlight-face ((t (:foreground "red"))))

 ;;; Parenthesis matching
 ;'(show-paren-match-face ((t (:foreground "black" :background "light gray"))))
 ;'(show-paren-match ((t (:foreground "white" :bold t ))))
 '(show-paren-match ((t (:foreground "white" :background "#1f1f1f" :weight bold))))
 ;'(show-paren-mismatch-face ((t (:foreground "black" :background "red"))))
 '(show-paren-mismatch ((t (:foreground "black" :background "red"))))

 ;;; Line highlighting
 '(highlight ((t (:background "#F0F0F0" :foreground nil))))
 '(highlight-current-line-face ((t (:background "#F0F0F0" :foreground nil))))
 '(hl-line ((t (:background "#F0F0F0" :foreground nil))))

 ;;; Buttons
 '(button ((t (:bold t))))
 '(custom-button-face ((t (:bold t :foreground "#999"))))

 ;;; Calendar
 '(holiday-face ((t (:background "#000" :foreground "#777"))))

 ;;; info, help and apropos faces
 '(info-header-node ((t (:foreground "#666"))))
 '(info-header-xref ((t (:foreground "#666"))))
 '(info-menu-5 ((t (:underline t))))
 '(info-menu-header ((t (:bold t :foreground "#666"))))
 '(info-node ((t (:bold t :foreground "#888"))))
 '(info-xref ((t (:bold t :foreground "#777"))))

 ;;; Pandoc
 '(pandoc-citation-key-face ((t (:inherit org-ref-cite-face :underline nil)))) ; by defaut, inherits font-lock-function-name-face

 ;;; Markdown & YAML Fontmatter
 '(markdown-markup-face ((t (:foreground "#ccc"))))
 '(markdown-metadata-key-face ((t (:foreground "#ccc"))))
 '(markdown-metadata-value-face ((t (:foreground "#ccc"))))
 '(markdown-code-face ((t (:background "#F3F3F3"))))


 ;;; gnus
 '(gnus-cite-attribution-face ((t (:foreground "#bbb"))))
 '(gnus-cite-face-1 ((t (:foreground "#aaa"))))
 '(gnus-cite-face-2 ((t (:foreground "#aaa"))))
 '(gnus-cite-face-3 ((t (:foreground "#aaa"))))
 '(gnus-cite-face-4 ((t (:foreground "#aaa"))))
 '(gnus-cite-face-5 ((t (:foreground "#aaa"))))
 '(gnus-cite-face-6 ((t (:foreground "#aaa"))))
 '(gnus-cite-face-7 ((t (:foreground "#aaa"))))
 '(gnus-cite-face-8 ((t (:foreground "#aaa"))))
 '(gnus-cite-face-9 ((t (:foreground "#aaa"))))
 '(gnus-emphasis-bold ((t (:bold t))))
 '(gnus-emphasis-bold-italic ((t (:italic t :bold t))))
 '(gnus-emphasis-highlight-words ((t (:foreground "#ccc"))))
 '(gnus-emphasis-italic ((t (:italic t))))
 '(gnus-emphasis-underline ((t (:underline t))))
 '(gnus-emphasis-underline-bold ((t (:bold t :underline t))))
 '(gnus-emphasis-underline-bold-italic ((t (:italic t :bold t :underline t))))
 '(gnus-emphasis-underline-italic ((t (:italic t :underline t))))
 '(gnus-group-mail-1-empty-face ((t (:foreground "#999"))))
 '(gnus-group-mail-1-face ((t (:bold t :foreground "#999"))))
 '(gnus-group-mail-2-empty-face ((t (:foreground "#999"))))
 '(gnus-group-mail-2-face ((t (:bold t :foreground "#999"))))
 '(gnus-group-mail-3-empty-face ((t (:foreground "#888"))))
 '(gnus-group-mail-3-face ((t (:bold t :foreground "#888"))))
 '(gnus-group-mail-low-empty-face ((t (:foreground "#777"))))
 '(gnus-group-mail-low-face ((t (:bold t :foreground "#777"))))
 '(gnus-group-news-1-empty-face ((t (:foreground "#999"))))
 '(gnus-group-news-1-face ((t (:bold t :foreground "#999"))))
 '(gnus-group-news-2-empty-face ((t (:foreground "#888"))))
 '(gnus-group-news-2-face ((t (:bold t :foreground "#888"))))
 '(gnus-group-news-3-empty-face ((t (:foreground "#777"))))
 '(gnus-group-news-3-face ((t (:bold t :foreground "#777"))))
 '(gnus-group-news-4-empty-face ((t (:foreground "#666"))))
 '(gnus-group-news-4-face ((t (:bold t :foreground "#666"))))
 '(gnus-group-news-5-empty-face ((t (:foreground "#666"))))
 '(gnus-group-news-5-face ((t (:bold t :foreground "#666"))))
 '(gnus-group-news-6-empty-face ((t (:foreground "#666"))))
 '(gnus-group-news-6-face ((t (:bold t :foreground "#666"))))
 '(gnus-group-news-low-empty-face ((t (:foreground "#666"))))
 '(gnus-group-news-low-face ((t (:bold t :foreground "#666"))))
 '(gnus-header-content-face ((t (:foreground "#888"))))
 '(gnus-header-from-face ((t (:bold t :foreground "#888"))))
 '(gnus-header-name-face ((t (:bold t :foreground "#777"))))
 '(gnus-header-newsgroups-face ((t (:bold t :foreground "#777"))))
 '(gnus-header-subject-face ((t (:bold t :foreground "#999"))))
 '(gnus-signature-face ((t (:foreground "#444"))))
 '(gnus-splash-face ((t (:foreground "#ccc"))))
 '(gnus-summary-cancelled-face ((t (:background "#555" :foreground "#000"))))
 '(gnus-summary-high-ancient-face ((t (:bold t :foreground "#555"))))
 '(gnus-summary-high-read-face ((t (:bold t :foreground "#666"))))
 '(gnus-summary-high-ticked-face ((t (:bold t :foreground "#777"))))
 '(gnus-summary-high-unread-face ((t (:bold t :foreground "#888"))))
 '(gnus-summary-low-ancient-face ((t (:foreground "#444"))))
 '(gnus-summary-low-read-face ((t (:foreground "#555"))))
 '(gnus-summary-low-ticked-face ((t (:foreground "#666"))))
 '(gnus-summary-low-unread-face ((t (:foreground "#777"))))
 '(gnus-summary-normal-ancient-face ((t (:foreground "#555"))))
 '(gnus-summary-normal-read-face ((t (:foreground "#666"))))
 '(gnus-summary-normal-ticked-face ((t (:foreground "#777"))))
 '(gnus-summary-normal-unread-face ((t (:foreground "#888"))))
 '(gnus-summary-selected-face ((t (:background "#333"))))
 '(message-cited-text-face ((t (:foreground "#aaa"))))
 '(message-header-cc-face ((t (:foreground "#888"))))
 '(message-header-name-face ((t (:bold t :foreground "#777"))))
 '(message-header-newsgroups-face ((t (:bold t :foreground "#777"))))
 '(message-header-other-face ((t (:foreground "#666"))))
 '(message-header-subject-face ((t (:bold t :foreground "#999"))))
 '(message-header-to-face ((t (:bold t :foreground "#777"))))
 '(message-header-xheader-face ((t (:foreground "#666"))))
 '(message-separator-face ((t (:foreground "#999"))))

 ;;; erc
 '(erc-action-face ((t (nil))))
 '(erc-bold-face ((t (:bold t))))
 '(erc-current-nick-face ((t (:bold t))))
 '(erc-default-face ((t (nil))))
 '(erc-direct-msg-face ((t (nil))))
 '(erc-error-face ((t (:bold t :foreground "IndianRed"))))
 '(erc-highlight-face ((t (:bold t :foreground "pale green"))))
 '(erc-input-face ((t (:foreground "#555"))))
 '(erc-inverse-face ((t (:background "steel blue"))))
 '(erc-keyword-face ((t (:foreground "#999" :bold t))))
 '(erc-nick-msg-face ((t (:foreground "#888"))))
 '(erc-notice-face ((t (:foreground "#444"))))
 '(erc-pal-face ((t (:foreground "#888"))))
 '(erc-prompt-face ((t (:foreground "#777" :bold t))))
 '(erc-timestamp-face ((t (:foreground "#777" :bold t))))
 '(fg:erc-color-face0 ((t (:foreground "white"))))
 '(fg:erc-color-face1 ((t (:foreground "beige"))))
 '(fg:erc-color-face2 ((t (:foreground "lemon chiffon"))))
 '(fg:erc-color-face3 ((t (:foreground "light cyan"))))
 '(fg:erc-color-face4 ((t (:foreground "powder blue"))))
 '(fg:erc-color-face5 ((t (:foreground "sky blue"))))
 '(fg:erc-color-face6 ((t (:foreground "dark sea green"))))
 '(fg:erc-color-face7 ((t (:foreground "pale green"))))
 '(fg:erc-color-face8 ((t (:foreground "medium spring green"))))
 '(fg:erc-color-face9 ((t (:foreground "khaki"))))
 '(fg:erc-color-face10 ((t (:foreground "pale goldenrod"))))
 '(fg:erc-color-face11 ((t (:foreground "light goldenrod yellow"))))
 '(fg:erc-color-face12 ((t (:foreground "light yellow"))))
 '(fg:erc-color-face13 ((t (:foreground "yellow"))))
 '(fg:erc-color-face14 ((t (:foreground "light goldenrod"))))
 '(fg:erc-color-face15 ((t (:foreground "lime green"))))
 '(bg:erc-color-face0 ((t (nil))))
 '(bg:erc-color-face1 ((t (nil))))
 '(bg:erc-color-face2 ((t (nil))))
 '(bg:erc-color-face3 ((t (nil))))
 '(bg:erc-color-face4 ((t (nil))))
 '(bg:erc-color-face5 ((t (nil))))
 '(bg:erc-color-face6 ((t (nil))))
 '(bg:erc-color-face7 ((t (nil))))
 '(bg:erc-color-face8 ((t (nil))))
 '(bg:erc-color-face9 ((t (nil))))
 '(bg:erc-color-face10 ((t (nil))))
 '(bg:erc-color-face11 ((t (nil))))
 '(bg:erc-color-face12 ((t (nil))))
 '(bg:erc-color-face13 ((t (nil))))
 '(bg:erc-color-face14 ((t (nil))))
 '(bg:erc-color-face15 ((t (nil))))

 ;;; Treemacs
 '(treemacs-root-face ((t (:height 1.0 :underline t))))

 ;;; Org
 '(org-done ((t (:foreground "#F0F0F0"))))
 '(org-headline-done ((t (:foreground "#F0F0F0"))))
 '(org-drawer ((t (:foreground "#F0F0F0"))))
 '(org-link ((t (:foreground "black" :underline t))))
 '(org-date ((t (:foreground "#EEE" :underline t))))
 '(org-special-keyword ((t (:foreground "#111" ))))
 '(org-meta-line ((t (:foreground "#EEE"))))
 '(org-block ((t (:foreground "#EEE"))))

 ;;; ivy
 '(ivy-current-match ((t (:background "#F1F1F1" :foreground nil))))

 ;;; Swiper
 '(swiper-line-face ((t (:background "#F1F1F1" :foreground nil))))
 ;'(swiper-match-face-1
 ;  swiper-match-face-2
 ;                         swiper-match-face-3
 ;                         swiper-match-face-4)



 ;;; end of face definitions
 )

(provide-theme 'less)

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

;; Local Variables:
;; eval: (when (require 'rainbow-mode nil t) (rainbow-mode 1))
;; End:
;;; less-theme.el ends here
