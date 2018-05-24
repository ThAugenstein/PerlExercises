#! /usr/bin/env perl6

use v6;

sub factorial(Int $n) {
    return 1 if $n == 0;
    return $n * factorial $n -1 ; 
}

say "factorial(5) = ", factorial 5;
say "factorial(0) = ", factorial 0;
say "factorial(10)= ", factorial 10;
