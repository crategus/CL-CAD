(in-package :cl-cad)

(defvar *actions* nil)

(defun add-action (action count)
  (push (list :action action
	      :count count)
	*actions*))

(defun remove-action ()
  (setf *actions* (cdr *actions*)))