#! /usr/bin/env perl6

use v6;

say q:to"INTRO";
If you are given three sticks, you may or may not be able to arrange them in a triangle.
This program checks if this is possible or not...
INTRO

get-input();

sub get-input {
    say "Please enter three stick lengths a, b, and c:";
    my $a = prompt "a = ";
    my $b = prompt "b = ";
    my $c = prompt "c = ";

    if is-triangle $a.Int, $b.Int, $c.Int {
        say "Yes, it's possible to form a triangle.";
    } else {
        say "No, it's not possible to form a triangle.";
    }

    my $try-again = prompt "Want to check again? (Y/N)";
    get-input if $try-again eq 'y' or $try-again eq 'Y';
}

sub is-triangle(Int $a, Int $b, Int $c) {
    return False if $a > $b + $c;
    return False if $b > $c + $a;
    return False if $c > $a + $b;
    return True;
}
