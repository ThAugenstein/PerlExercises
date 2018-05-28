#! /usr/bin/env perl6

use v6;

my $epsilon = 0.00001;

sub newton($a) {
    my $x = $a/2; 
    while True {
        my $y = ($x + $a/$x)/2;
        last if abs($y - $x) < $epsilon;
        $x = $y;
    }
    return $x;
}

for (1 .. 9) -> $t {
    my $my_sqrt = newton($t);
    my $perl_sqrt = sqrt($t);
    my $diff = $my_sqrt - $perl_sqrt;
    printf "%d %.15g %.15g %.15g\n", $t, $my_sqrt, $perl_sqrt, $diff;
} 
