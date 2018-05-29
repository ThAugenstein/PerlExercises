#! /usr/bin/env perl6

use v6;

sub backward(Str $whatever) {
    my $index = $whatever.chars;
    while $index > 0 {
        $index--;
        my $letter = substr $whatever, $index, 1;
        say $letter;
    }
}

sub backward2(Str $whatever) {
    my $index = $whatever.chars;
    say substr $whatever, --$index, 1 while $index;
}

backward2 "What Have The Romans Ever Done For Us?";
