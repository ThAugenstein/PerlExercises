#!/usr/bin/env perl6

use v6;

sub do-twice(&code) {
    code();
    code();
}

sub greet {
    say "Hello World!"
}

do-twice &greet;

do-twice {say "Thomas Augenstein did this!"}

sub create-greeting ($person) { return sub { say "Hello $person!" }}

my $greet1 = create-greeting("World");
my $greet2 = create-greeting("Earthling");

do-twice $greet1;
do-twice $greet2;
