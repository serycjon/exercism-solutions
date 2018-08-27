;;; two-fer.el --- Two-fer Exercise (exercism)

;;; Commentary:

;;; Code:

(defun two-fer (&optional name)
  "Returns a two-fer with given `name' or 'you' instead"
  (let ((name (or name "you")))
    (format "One for %s, one for me." name)))


(provide 'two-fer)
;;; two-fer.el ends here
