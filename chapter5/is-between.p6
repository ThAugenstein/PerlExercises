#! /usr/bin/env perl6

use v6;

sub is-between(Numeric $x, Numeric $y, Numeric $z) {
    return $x <= $y <= $z;
}

say "is-between(2, 3, 9) = ", is-between(2, 3, 9);
say "is-between(3, 3, 4) = ", is-between(3, 3, 4);
say "is-between(3, 2, 1) = ", is-between(3, 2, 1);

