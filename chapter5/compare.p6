#! /usr/bin/env perl6

use v6;

sub compare(Numeric $x, Numeric $y) {
    return  1  if $x  > $y;
    return  0  if $x == $y;
    return -1;  # $x  < $y
}

say "compare(5, 7) = ", compare(5, 7);
say "compare(7, 4) = ", compare(7, 4);
say "compare(7, 7) = ", compare(7, 7);

