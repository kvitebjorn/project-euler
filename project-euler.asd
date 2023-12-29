;; Usual Lisp comments are allowed here

(defsystem "project-euler"
  :description "my project euler solutions"
  :version "0.0.1"
  :author "Kyle Harrington <harintonkairu@gmail.com>"
  :licence "Public Domain"
  :depends-on ("alexandria" 
               "bt-semaphore" 
               "lparallel" 
               "magicl" 
               "trivia")
  :components ((:file "problem11")
               (:file "problem17")))