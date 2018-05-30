#! /usr/bin/env perl6

use v6;

my $bullet = '🔹';

say $bullet ~ "A succession of 10 digits within a longer string:";
my $test_str = "What 12 have 9876543210 romans 5467 ever 43218 done 10 for 95432 us?";
say $test_str;
say "10 digits found: $0." if $test_str ~~ /<< (\d ** 10) >>/;

say $bullet ~ "A valid octal number:";
$test_str = "567867 8778689 6589 0987654321 2563305 897654";
say $test_str;
say "Possible octal number found: $0." if $test_str ~~ /<< (<[0..7]>+) >>/;

say $bullet ~ "The first word at the start of a string:";
$test_str = "What have the romans ever done for us?";
say $test_str;
say "The first word is: $0." if $test_str ~~ / ^ (\w+) /;

say $bullet ~ "The first word of a string starting with an 'r':";
say $test_str;
say "The first word starting with an 'r' is: $0." if $test_str ~~ / \W (r \w+) /;

say $bullet ~ "The first word of a string starting with a lower case vowel:";
say $test_str;
say "The first such word found: $0." if $test_str ~~ / \s (<[aeiouy]> \w*) \s /;

say $bullet ~ "A french mobile telephone number:";
$test_str = "07.05.2015: The mobile number of Laurent is 0654687954.";
say $test_str;
say "Mobile number: $0." if $test_str ~~ / (0[67]\d ** 8) /;

say $bullet ~ "The first word of a string starting with a vowel either upper- or lowercase:";
$test_str = "Ask not what your country can do for you - ask what you can do for your country. (JFK)";
say $test_str;
say "The first such word is: $0." if $test_str ~~ /:i << (<[aeiouy]> \w*) /;

say $bullet ~ "The first occurence of a double letter:";
$test_str = "Assertion is a 9 letter word!";
say $test_str;
say "First double letter: $0." if $test_str ~~ /((\w)$0) /;

say $bullet ~ "The second occurence of a double letter:";
$test_str = "Assertion is a 9 letter word!";
say $test_str;
say "Second double letter: $1." if $test_str ~~ /(\w)$0.*((\w)$0)/;



