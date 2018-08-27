;;; gigasecond.el --- Gigasecond exercise (exercism)

;;; Commentary:
;; Calculate the date one gigasecond (10^9 seconds) from the
;; given date.
;;
;; NB: Pay attention to  Emacs' handling of time zones and dst
;; in the encode-time and decode-time functions.

;;; Code:


(defun from (second minute hour day month year)
  "Calculate the date one gigasecond from the given date"
  (let* ((src-time (encode-time second minute hour day month year t))
	 (dst-time (time-add src-time 1000000000))
	 (dst-date (decode-time dst-time t)))
    (butlast dst-date 3)))


(provide 'gigasecond)
;;; gigasecond.el ends here
