;;; skeleton-snippet-store.el --- snippets for skeleton-snippet.el  -*- lexical-binding: t; -*-

;; Copyright (C) 2020  Chunye Wang

;; Author: Chunye Wang <wcy123@gmail.com>
;; Keywords: abbrev

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;;

;;; Code:

(provide 'skeleton-snippet-store)
(require 'skeleton-snippet)

(defconst skeleton-snippet-store-dir
  (expand-file-name
   "snippets"
   (file-name-directory
    ;; Copied from ‘f-this-file’ from f.el.
    (cond
     (load-in-progress load-file-name)
     ((and (boundp 'byte-compile-current-file) byte-compile-current-file)
      byte-compile-current-file)
     (:else (buffer-file-name))))))

;;;###autoload
(defun skeleton-snippet-store-initialize ()
  "config `skeleton-snippet-directories'"
  (skeleton-snippet-add-snippet-directory skeleton-snippet-store-dir))

;;;###autoload
(eval-after-load 'skeleton-snippet
   '(skeleton-snippet-store-initialize))

(provide 'skeleton-snippet-store)
