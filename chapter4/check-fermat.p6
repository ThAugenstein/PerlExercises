#! /usr/bin/env perl6

use v6;

say q:to"INTRO";
Fermats Last Theorem says that there are no positive integers a,b, and c such that
    a**n + b**n = c**n
for any values of n greater than 2.

Please enter the values for a, b, c, and n and let's check!
INTRO

get-input();

sub get-input {
    my $a = prompt "a = ";
    my $b = prompt "b = ";
    my $c = prompt "c = ";
    my $n = prompt "n = ";
    
    if check-fermat $a.Int, $b.Int, $c.Int, $n.Int == True {
        say "Holy smokes, Fermat was wrong!"
    } else {
        say "No, that doesn't work."
    }
    my $try-again = prompt "Want to try again (Y/N)?";
    get-input if $try-again eq 'Y' or $try-again eq 'y';
}

sub check-fermat(Int $a, Int $b, Int $c, Int $n) {
    return False if $n <= 2;
    return True if $a**$n + $b**$n == $c**$n;
    return False;
}
