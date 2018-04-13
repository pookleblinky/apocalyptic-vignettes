#lang racket

(provide dothis)

(define (randomchoice lst)
  (define selection (random (length lst)))
  (list-ref lst selection))

;; Task files
(define todo-file "todo.txt")

;; Slurp lines into list
(define todo-tasks (file->lines todo-file))

;; Spit out a random task
(define (dothis todolist)
  (define task (randomchoice todolist))
  (printf "Work on this: ~a~n" task))

(dothis todo-tasks)
