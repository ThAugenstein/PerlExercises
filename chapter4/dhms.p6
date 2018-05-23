#! /usr/bin/env perl6

use v6;

sub div_mod(Int $input, Int $divisor) {
    return $input div $divisor, $input mod $divisor;
}

sub calculate-days-HMS(Int $seconds) {
    my ($minutes, $sec_left)   = div_mod $seconds, 60;
    my ($hours,   $min_left)   = div_mod $minutes, 60;
    my ($days,    $hours_left) = div_mod $hours,   24;

    return $days, $hours_left, $min_left, $sec_left;
}

sub MAIN (Int $number_of_seconds) {
    printf "%d days, %d hours, %d minutes and %d seconds.\n", calculate-days-HMS($number_of_seconds.Int);
}
