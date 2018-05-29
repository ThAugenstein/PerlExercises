#! /usr/bin/env perl6

use v6;

sub quack {
    my $suffix = 'ack';
    say "$_$suffix" for flat 'J' .. 'N', 'Ou', 'P', 'Qu';
}

quack;
