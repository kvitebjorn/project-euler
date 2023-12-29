(require "asdf")

(defpackage :problem17
  (:use :cl))

(in-package :problem17)

(defun count-number-letters (nums)
  (reduce '+
    (mapcar #'(lambda (x) (length (remove #\ (remove #\- (format nil "~r" x))))) nums)))

(defun count-british-and-usage ()
  (* 3 (- 1000 100 9)))

(defun solve ()
  "A smarter/faster method would be to multiply all the lengths out etc
   but I really wanted to show off Common Lisp's ~r format option lol"
  (let ((nums (loop for i from 1 to 1000 collect i)))
    (+ (count-number-letters nums) (count-british-and-usage))))

