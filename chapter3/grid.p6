#! /usr/bin/env perl6

use v6;

my $num_rows   = 4;
my $num_cols   = 7;
my $col_width  = 4;
my $row_heigth = 2;

printf "Grid: %d x %d Cell: %d x %d\n", $num_cols, $num_rows, $col_width, $row_heigth ;

sub do-n-times($code-to-run, Int $n) {
    return if $n <= 0;
    $code-to-run();
    do-n-times $code-to-run, $n-1;
}

sub build_line($edge, $filler) {
    my $segment = $edge ~ ($filler x $col_width);
    return ($segment x $num_cols) ~ $edge;
}

sub draw-grid {
    my $edge_line   = build_line('+', '-');
    my $filler_line = build_line('|', ' ');
    my $draw_row    = { say $edge_line;
                        do-n-times { say $filler_line; }, $row_heigth; }
    do-n-times $draw_row, $num_rows;
    say $edge_line;
}

draw-grid();
