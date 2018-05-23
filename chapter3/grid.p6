#! /usr/bin/env perl6

use v6;

say 'Exercise 3.3:';

sub do-twice(&code) {
    &code();
    &code();
}
sub do-four(&code) {
    do-twice &code;
    do-twice &code;
}

sub draw-segment($count, $edge, $filler) {
    my $segment = $edge ~ ($filler x 4);
    print $segment x $count;
    say $edge;
}

sub draw-grid {
    do-twice {
        draw-segment(2, '+', '-');
        do-four { draw-segment(2, '|', ' '); }
    }
    draw-segment(2, '+', '-');
}

sub draw-four-grid {
    do-four {
        draw-segment(4, '+', '-');
        do-four { draw-segment(4, '|', ' '); }
    }
    draw-segment(4, '+', '-');
}

draw-grid;
say 'and now four rows and four columns:';
draw-four-grid;
