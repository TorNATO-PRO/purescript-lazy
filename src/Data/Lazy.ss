;; -*- mode: scheme -*-

(library (Data.Lazy foreign)
  (export defer
          force
  )

  (import (only (rnrs base) define lambda))

  (define defer
    (lambda (thunk)
      (lambda ()
        (thunk 0))) ;; arbitrarily pass in 0, it doesn't matter!
  )

  (define force
    (lambda (thunk) (thunk))
  )
)