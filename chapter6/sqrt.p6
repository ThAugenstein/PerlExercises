#! /usr/bin/env perl6

use v6;

sub newton($a) {
    my $epsilon = 1e-8;
    my $estimate = $a/2;
    my $count = 0;
    while True {
        my $new_estimate = ($estimate + $a/$estimate)/2;
        $count++;
        return ($new_estimate, $count) if abs($new_estimate - $estimate) < $epsilon;
        $estimate = $new_estimate;
    }
}

sub test_newton($test_number) {
    my ($my_sqrt, $count) = newton $test_number;
    my $perl_sqrt = sqrt $test_number;
    my $diff = abs($my_sqrt - $perl_sqrt);
    printf "%3d %18.15f %18.15f %.3e %3d\n", $test_number, $my_sqrt, $perl_sqrt, $diff, $count;
}

printf "%3s %18s %18s %9s %3s\n", 'a', 'newton()', 'sqrt()', 'e', 'n';
for (1 .. 19) {
    test_newton (^999).pick;
}
test_newton 666;
