#! /usr/bin/env perl6

use v6;

sub gcd(Int $a, Int $b) {
    return $a if $b == 0;
    return gcd $b, $a % $b;
}

say "gcd(10, 12) = ", gcd(10, 12);
say "gcd(10, 13) = ", gcd(10, 13);
say "gcd(20, 40) = ", gcd(20, 40);
say "gcd(24, 24) = ", gcd(24, 24);
say "gcd(24, -8) = ", gcd(24, 8);
say "gcd(11571, 1767) = ", gcd(11571, 1767);

say "gcd(-125, 25) = ", gcd(125, 25);
say "gcd(2048, 256) = ", gcd(2048, 256);
say "gcd(256, 4096) = ", gcd(256, 4096);
say "gcd(2048, 1) = ", gcd(2048, 1);
say "gcd(0, 256) = ", gcd(0, 256);
say "gcd(33, 45) = ", gcd(33, 45);

