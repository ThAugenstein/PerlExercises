#! /usr/bin/env perl6

use v6;

sub factorial(Int $n) {
    return 1 if $n==0;
    return $n * factorial $n-1 ;
}

sub estimate-pi {
    my $sum = 0;
    my $epsilon = 1e-15;
    my $k = 0;
    while True {
        my $num = factorial(4*$k) * (1103 + 26390*$k);
        my $den = factorial($k)**4 * 396**(4*$k);
        my $term = $num / $den;
        $sum += $term;
        last if $term < $epsilon;
        $k++;
    } 
    my $factor = 2 * 2.sqrt / 9801;
    return 1/($factor * $sum);    
}

say "my pi = ", estimate-pi;
say "perl pi = ", pi;
say "difference = ", estimate-pi() - pi;
