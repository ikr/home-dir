(custom-set-variables
  '(indent-tabs-mode nil)
  '(tab-width 4)
  '(standard-indent 4))

(setq fill-column 100)
(setq column-number-mode t)


(defface hl-line '((t (:background "#220000")))
  "Face to use for `hl-line-face'." :group 'hl-line)
(setq hl-line-face 'hl-line)
(global-hl-line-mode t)


(custom-set-variables
  '(auto-save-file-name-transforms '((".*" "~/.emacs.d/autosaves/\\1" t)))
  '(backup-directory-alist '((".*" . "~/.emacs.d/backups/"))))

(make-directory "~/.emacs.d/autosaves/" t)


(add-to-list 'load-path "~/.emacs.d/extensions")

(require 'pi-php-mode)

(require 'autopair)
(autopair-global-mode)
(setq autopair-autowrap t)

(autoload 'markdown-mode "markdown-mode" "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(require 'package)
(add-to-list 'package-archives 
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))
(package-initialize)


(global-set-key (kbd "C-x f") 'find-file-in-project)

(defvar ffip-patterns
  '("*.html" "*.org" "*.txt" "*.md" "*.el" "*.clj" "*.py" "*.rb" "*.js" "*.pl"
    "*.sh" "*.erl" "*.hs" "*.ml" "*.php" "*.json" "*.sls" "*.ini" "*.conf")
  "List of patterns to look for with `find-file-in-project'.")

(defvar ffip-find-options "-not -regex \".*(vendor|node_modules).*\""
  "Extra options to pass to `find' when using `find-file-in-project'.

Use this to exclude portions of your project: \"-not -regex \\\".*svn.*\\\"\".")


(server-start)
