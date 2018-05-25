#! /usr/bin/env perl6

use v6;

# Fibonacci(0) = 1
# Fibonacci(1) = 1
# Fibonacci(n) = Fibonacci(n-2) + Fibonacci(n-1) for n >= 3

sub fibonacci(Int $n) {
    return 1 if $n == 1 or $n == 2;
    return fibonacci($n-2) + fibonacci($n-1);
}

say "fibonacci(2)  = ", fibonacci(2);
say "fibonacci(9)  = ", fibonacci(9);
say "fibonacci(15) = ", fibonacci(15);
say "fibonacci(25) = ", fibonacci(25);
