# clj-threading

[![Build Status](https://travis-ci.org/wolverian/clj-threading.svg?branch=master)](https://travis-ci.org/wolverian/clj-threading)

This package provides the `->` and `->>` macros to thread
expressions. See <http://clojuredocs.org/clojure.core/-%3E>.

## Installation

    raco pkg install git://github.com/wolverian/clj-threading

## Examples

Without `->`:

~~~racket
(first (string-split (string-replace (string-upcase "a b c d")
                                     "A" "X")
                     " "))
;=> "X"
~~~

With `->`:

~~~racket
(-> "a b c d"
    string-upcase
    (string-replace "A" "X")
    (string-split " ")
    first)
;=> "X"
~~~

## Tests

    raco test .

## See Also

- The [rackjure](https://github.com/greghendershott/rackjure/) package
  implements
  [similar macros](http://pkg-build.racket-lang.org/doc/rackjure/index.html#%28part._.Threading_macros%29)
  as `~>` and `~>>`, which do not conflict with Typed Racket.

## License

clj-threading is available under the ISC license. See the LICENSE file
for more information.
