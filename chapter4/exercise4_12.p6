#! /usr/bin/env perl6

use v6;

sub do-n-times($func, Int $n) {
    return if $n <= 0;
    $func();
    do-n-times $func, $n - 1;
}

my $subref = sub { say "Carpe diem"; }

do-n-times $subref, 6;
