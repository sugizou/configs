;;;libraries require

;;php
;(load-library "php-mode")
;(require 'php-mode)
(autoload 'php-mode "php-mode")
(setq auto-mode-alist
  (cons '("\\.php\\'" . php-mode) auto-mode-alist))
(setq php-mode-force-pear t)
(add-hook 'php-mode-hook
  '(lambda ()
    (setq php-manual-path "/usr/share/doc/php/html") 
    (setq php-search-url "http://www.phppro.jp/")
    (setq php-manual-url "http://www.phppro.jp/phpmanual")
    ))

;;ruby
(autoload 'ruby-mode "ruby-mode"
  "Mode for editing ruby source files" t)
(setq auto-mode-alist
  (append '(("\\.rb$" . ruby-mode)) auto-mode-alist))

(setq interpreter-mode-alist
  (append '(("ruby" . ruby-mode)) interpreter-mode-alist))

(autoload 'run-ruby "inf-ruby"
  "Run an inferior Ruby process")
(autoload 'inf-ruby-keys "inf-ruby"
  "Set local key defs for inf-ruby in ruby-mode")
(add-hook 'ruby-mode-hook
  '(lambda () (inf-ruby-keys)))

(require 'ruby-electric)
(add-hook 'ruby-mode-hook '(lambda () (ruby-electric-mode t)))

(autoload 'rubydb "rubydb3x"
  "run rubydb on program file in buffer *gud-file*.
the directory containing file becomes the initial working directory
and source-file directory for your debugger." t)

(require 'ruby-block)
(ruby-block-mode t)
(setq ruby-block-highlight-toggle t)

;; rails
(defun try-complete-abbrev (old)
  (if (expand-abbrev) t nil))

(setq hippie-expand-try-functions-list
  '(try-complete-abbrev
    try-complete-file-name
    try-expand-dabbrev))

(setq rails-use-mongrel t)
(require 'cl)
(require 'rails)

;;;tab
;(setq-default tab-width 2 indent-tabs-mode nil)
(add-hook 'php-mode-hook
      '(lambda ()
       (setq-default tab-width 4)
       (setq indent-tabs-mode nil)
       (setq c-basic-offset 4)))

;;;diplay
(display-time)
(which-function-mode 1)

;(setq frame-title-format (format "emacs@%s : %%f" (system-name)))

;;;autosave
(setq backup-inhibited t)

(require 'auto-save-buffers)
(run-with-idle-timer 0.5 t 'auto-save-buffers)
