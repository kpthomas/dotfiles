(require 'package)

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

(package-initialize)
(package-refresh-contents)

(defvar my-packages '(
  cider
  clojure-mode
  color-theme-solarized
  evil
  ))
(dolist (pkg my-packages)
  (unless (package-installed-p pkg)
    (package-install pkg)))

(set-terminal-parameter nil 'background-mode 'dark)
(load-theme 'solarized t)
(set-default-font "Menlo-14")

(linum-mode)

(require 'evil)
(evil-mode 1)
