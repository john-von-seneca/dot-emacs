;; /This/ file (~init.el~) that you are reading
;; should be in this folder
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

;; (unless (file-exists-p "~/.emacs.d/.emacs_workgroups"))
;;  (make-directory "~/.emacs.d/.emacs_workgroups"))

(mapc 'load (directory-files "~/.emacs.d/customizations" t "^[0-9]+.*\.el$"))






