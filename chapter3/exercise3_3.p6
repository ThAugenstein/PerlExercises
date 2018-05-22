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

sub draw-header($count) {
    my $segment = '+' ~ ('-' x 4);
    print $segment x $count
}

sub draw-filler($count) {
    my $segment = '|' ~ (' ' x 4);
    print $segment x $count
}

sub draw-grid {
    do-twice {
        draw-header(2); say '+';
        do-four { draw-filler(2); say '|'; }
    }
    draw-header(2); say '+';
}

sub draw-four-grid {
    do-four {
        draw-header(4); say '+';
        do-four { draw-filler(4); say '|'}
    }
    draw-header(4); say '+';
}

draw-grid;
say 'and now four rows and four columns:';
draw-four-grid;
