#! /usr/bin/env perl6

use v6;

sub is_power_of(Int $a, Int $b) {
    return True  if $a == $b;
    return False unless $a %% $b;
    return is_power_of $a div $b, $b;
}

say "  16 is power of  2: ", is_power_of   16,  2;
say "  27 is power of  3: ", is_power_of   27,  3;
say "  37 is power of  5: ", is_power_of   37,  5;
say " 125 is power of  5: ", is_power_of  125,  5;
say "8000 is power of 20: ", is_power_of 8000, 20;
say " 600 is power of 20: ", is_power_of  600, 20;
