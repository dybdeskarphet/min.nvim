;; extends

((task
   (priority) @min.todotxt.pri_high)
 (#match? @min.todotxt.pri_high "^\\([A-D]\\)$")
 (#set! priority 200))

((task
   (priority) @min.todotxt.pri_low)
 (#match? @min.todotxt.pri_low "^\\([E-Z]\\)$")
 (#set! priority 200))
