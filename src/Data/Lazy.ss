;; -*- mode: scheme -*-

(library (Data.Lazy foreign)
  (export defer
          force
  )

  (import (only (rnrs base) define lambda)
  (prefix (purs runtime lib) rt:))

  (define defer
    (lambda (thunk)
      (lambda ()
        (thunk 0))))

  (define force
    (lambda (thunk) (thunk)))
)