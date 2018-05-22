#! /usr/bin/env perl6

use v6;

sub do-twice($code, $addressee) {
    $code($addressee);
    $code($addressee);
}
sub greet(Str $addr) {
    say "Hello $addr!";
}
sub print-twice($message) {
    say $message;
    say $message;
}
sub do-four(&code, $message) {
    do-twice(&code, $message);
    do-twice(&code, $message);
}
do-twice &greet, "World";
do-twice &print-twice, "What's up doc";
do-four &print-twice, "Hi Tom!";
