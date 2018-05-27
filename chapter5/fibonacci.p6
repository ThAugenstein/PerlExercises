#! /usr/bin/env perl6

use v6;

# fibonacci recursive, probably not very efficient!

sub fibonacci(Int $n) {
    return 1 if $n == 1 or $n == 2;
    return fibonacci($n-2) + fibonacci($n-1);
}

say "fibonacci(2)  = ", fibonacci(2);
say "fibonacci(9)  = ", fibonacci(9);
say "fibonacci(15) = ", fibonacci(15);
say "fibonacci(25) = ", fibonacci(25);
