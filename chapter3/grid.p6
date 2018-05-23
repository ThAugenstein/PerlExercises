#! /usr/bin/env perl6

use v6;

my $num_rows   = 3;
my $num_cols   = 7;
my $col_width  = 5;
my $row_heigth = 2;

printf "Grid: %d x %d Cell: %d x %d\n", $num_rows, $num_cols, $row_heigth, $col_width;

sub do-n-times($code-to-run, Int $n) {
    return if $n <= 0;
    $code-to-run();
    do-n-times $code-to-run, $n-1;
}

sub draw-segment($edge, $filler) {
    my $segment = $edge ~ ($filler x $col_width);
    print $segment x $num_cols;
    say $edge;
}

my $edge_line   = { draw-segment('+', '-'); }
my $filler_line = { draw-segment('|', ' '); }

my $draw_row    = { $edge_line();
                    do-n-times $filler_line, $row_heigth; }
                 
sub draw-grid {
    do-n-times $draw_row, $num_rows;
    $edge_line();
}

draw-grid();
