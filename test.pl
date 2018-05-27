#!/usr/bin/env perl


my $tom = 5;
speech();


sub first_part {
    return "Let freedom ring from "
}

sub speech {
    print first_part();
    print "the prodigious hilltops of New Hampshire.\n";
    print first_part();
    print "the mighty mountains of New York.\n";
}

speech();
speech();

