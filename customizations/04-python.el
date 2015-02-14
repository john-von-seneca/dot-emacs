;; python mode hooks

(add-hook 'python-mode-hook
  (lambda ()
    (setq indent-tabs-mode t)
    (setq python-indent 4)
    (setq tab-width 4)))

;; Python editing
(require 'elpy)
(elpy-enable)
(elpy-use-ipython)

