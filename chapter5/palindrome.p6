#! /usr/bin/env perl6

use v6;

sub first_letter(Str $word) {
    return substr $word, 0, 1;
}

sub last_letter(Str $word) {
    return substr $word, *-1, 1;
}
sub middle_letter(Str $word where $word.chars >1)  {
    return substr $word, 1, *-1;
}

sub test_func {
    say middle_letter 'ab';
#    say middle_letter 'a';
#    say middle_letter '';
}

# test_func();

sub is-palindrome(Str $word) {
    return True if $word.chars < 2;
    return False if first_letter($word) ne last_letter($word);
    return is-palindrome middle_letter $word;
}

for ("bob", "otto", "laurent", "redivider", "detartrated", "noon") -> $x {
    say "Is $x a palindrome? ", is-palindrome $x;
}
