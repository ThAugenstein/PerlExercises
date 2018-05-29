#! /usr/bin/env perl6

use v6;

sub count(Str $search_string, Str $letter) {
    my $count = 0;
    $count++ if $_ eq $letter for $search_string.comb;
    return $count;
}

my $question = "What have the romans ever done for us?";
say "The letter 'e' appears { count($question, 'e') } times in '$question'";
