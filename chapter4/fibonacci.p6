#! /usr/bin/env perl6

use v6;

sub fibonacci(Int $n, Bool $print_all) {
    return 1 if $n <= 2;
    my ($a, $b) = 1, 1;
    print "1 1 " if $print_all;
    for 3..$n {
        ($a, $b) = $b, $a+$b;
        print $b, " " if $print_all;
    }
    print "\n" if $print_all;
    return $b;
}

say "The first 20 fibonacci numbers:";
fibonacci(20, True);

my $n = prompt "Calculate the nth fibonacci number. Please enter n: ";
say "The fibonnaci number is: ", fibonacci($n.Int, False);

