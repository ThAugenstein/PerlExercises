#! /usr/bin/env perl6

use v6;

sub right-justify($input-string) {
    my $leading-spaces = ' ' x (70 - $input-string.chars);
    say $leading-spaces, $input-string; 
}

say("1234567890" x 7);
right-justify('Larry Wall');
right-justify('The quick brown fox jumps over the lazy dog');
right-justify('Thomas Augenstein');
right-justify('!');
