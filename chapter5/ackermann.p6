#! /usr/bin/env perl6

use v6;

sub ack(Int $m, Int $n) {
    return $n + 1                   if $m == 0;
    return ack($m-1, 1)             if $m > 0 and $n == 0;
    return ack($m-1, ack($m,$n-1))  if $m > 0 and $n > 0;
}

say ack(4, 2);
